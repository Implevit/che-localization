codeunit 50100 "Localization-CHE_EHC"
{

    [EventSubscriber(ObjectType::Table, Database::"Vendor Bank Account", 'OnAfterValidateEvent', 'IBAN', false, false)]
    local procedure VendorBankAccount_OnAfterValidateSwiftCode(var Rec: Record "Vendor Bank Account")
    var
        BankDirectory: Record "Bank Directory";
    begin
        IF BankDirectory.Get(CopyStr(Rec.IBAN, 5, 5)) THEN
            Rec.Validate("SWIFT Code", BankDirectory."SWIFT Address");
    end;


    [EventSubscriber(ObjectType::Codeunit, 90, 'OnAfterCheckMandatoryFields', '', false, false)]
    local procedure PurchPos_OnAfterCheckMandatoryFields(var PurchaseHeader: Record "Purchase Header")
    var
        VendBankAcc: Record "Vendor Bank Account";
        RefferenceNo2Err: Label 'Payment Reference must contain a value of 27 digits';
    begin
        if not VendBankAcc.GET(PurchaseHeader."Pay-to Vendor No.", PurchaseHeader."Bank Code") then
            exit;
        if not IsQRIBAN(VendBankAcc.IBAN) then
            exit;
        IF STRLEN(PurchaseHeader."Payment Reference") <> 27 THEN
            ERROR(RefferenceNo2Err);
    end;

    [EventSubscriber(ObjectType::Codeunit, 113, 'OnBeforeVendLedgEntryModify', '', false, false)]
    local procedure VendLedgEntryEdit_OnBeforeVendLedgEntryModify(var VendLedgEntry: Record "Vendor Ledger Entry"; FromVendLedgEntry: Record "Vendor Ledger Entry")
    var
        VendBankAcc: Record "Vendor Bank Account";
        RefferenceNo2Err: Label 'Payment Reference must contain a value of 27 digits in Vendor Ledger Entry %1';
    begin
        if not VendBankAcc.GET(FromVendLedgEntry."Vendor No.", FromVendLedgEntry."Recipient Bank Account") then
            exit;
        if not IsQRIBAN(VendBankAcc.IBAN) then
            exit;
        IF STRLEN(FromVendLedgEntry."Payment Reference") <> 27 THEN
            ERROR(RefferenceNo2Err, FromVendLedgEntry."Entry No.");
    end;


    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnGenJnlLineCheck', '', false, false)]
    local procedure PaymentFunctCHE_OnGenJnlLineCheck(var GenJournalLine: Record "Gen. Journal Line")
    var
        VendBankAcc: Record "Vendor Bank Account";
        VendorLedgEntry: Record "Vendor Ledger Entry";
        //BankMgt: Codeunit BankMgt; // from 20.5
        PaymentFormErr: Label '"Payment Form" must not be %1 for a Domestic Payment in Vendor Bank Account Vendor No. %2, Code %3';
        ESRPaymentErr: Label 'Fields Applies-to Doc. Type and Applies-to Doc. No. must refer to a valid Vendor Ledger Entry';
        RefferenceNo2Err: Label 'Payment Reference must contain a value of 27 digits in Vendor Ledger Entry %1';
        IBANBankAccNoErr: Label 'IBAN/QR-IBAN must be provided for Vendor Bank Account Vendor No. %1, Code %2';
    begin
        GenJournalLine.FindSet();
        REPEAT
            if GenJournalLine."Account Type" = GenJournalLine."Account Type"::Vendor then begin
                VendBankAcc.GET(GenJournalLine."Account No.", GenJournalLine."Recipient Bank Account");

                IF NOT (VendBankAcc."Payment Form" IN [VendBankAcc."Payment Form"::ESR, VendBankAcc."Payment Form"::"ESR+",
                 VendBankAcc."Payment Form"::"Post Payment Domestic", VendBankAcc."Payment Form"::"Bank Payment Domestic"
                 //,VendBankAcc."Payment Form"::"QR IBAN"
                 ]) THEN
                    ERROR(PaymentFormErr, VendBankAcc."Payment Form", GenJournalLine."Account No.", GenJournalLine."Recipient Bank Account");

                IF (VendBankAcc.IBAN = '')
                 THEN
                    ERROR(IBANBankAccNoErr, GenJournalLine."Account No.", GenJournalLine."Recipient Bank Account");

                if IsQRIBAN(VendBankAcc.IBAN) THEN BEGIN
                    VendorLedgEntry.RESET();
                    VendorLedgEntry.SETCURRENTKEY("Document No.", "Document Type", "Vendor No.");
                    VendorLedgEntry.SETRANGE("Document No.", GenJournalLine."Applies-to Doc. No.");
                    VendorLedgEntry.SETRANGE("Document Type", GenJournalLine."Applies-to Doc. Type");
                    VendorLedgEntry.SETRANGE(Open, TRUE);
                    IF NOT VendorLedgEntry.FINDFIRST() THEN
                        ERROR(ESRPaymentErr)
                    ELSE
                        IF STRLEN(VendorLedgEntry."Payment Reference") <> 27 THEN
                            ERROR(RefferenceNo2Err, VendorLedgEntry."Entry No.");
                END;
            END;
        until GenJournalLine.next() = 0;
    end;

    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnBeforeTempBufferExportLinesFilters', '', false, false)]
    local procedure PaymentFunctCHE_OnBeforeTempBufferExportLinesFilters(GenJournalLine: Record "Gen. Journal Line"; var GroupLines: Boolean)
    var
        VendBankAcc: Record "Vendor Bank Account";
    begin
        if GenJournalLine."Account Type" <> GenJournalLine."Account Type"::Vendor then
            exit;

        VendBankAcc.GET(GenJournalLine."Account No.", GenJournalLine."Recipient Bank Account");
        if IsQRIBAN(VendBankAcc.IBAN) then
            GroupLines := false;
    end;

    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnTempBufferExportLinesFilters2', '', false, false)]
    local procedure PaymentFunctCHE_OnTempBufferExportLinesFilters2(TempGenJnlLine: Record "Gen. Journal Line"; var TempBufferExportLines: Record "Gen. Journal Line")
    var
        VendBankAcc: Record "Vendor Bank Account";
    begin
        if TempGenJnlLine."Account Type" <> TempGenJnlLine."Account Type"::Vendor then
            exit;

        VendBankAcc.GET(TempGenJnlLine."Account No.", TempGenJnlLine."Recipient Bank Account");
        if IsQRIBAN(VendBankAcc.IBAN) then
            TempBufferExportLines.SetRange("Source Line No.", TempGenJnlLine."Line No.");
    end;


    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnExportLines', '', false, false)]
    local procedure PaymentFunctCHE_OnExportLines(ExportLines: Record "Gen. Journal Line"; var PaymentForm1: Boolean; var PaymentForm2: Boolean)
    var
        VendBankAcc: Record "Vendor Bank Account";
    begin
        if ExportLines."Account Type" <> ExportLines."Account Type"::Vendor then
            exit;

        VendBankAcc.GET(ExportLines."Account No.", ExportLines."Recipient Bank Account");
        if IsQRIBAN(VendBankAcc.IBAN) then
            PaymentForm1 := true;
        IF (VendBankAcc."Payment Form" IN [VendBankAcc."Payment Form"::"Post Payment Domestic", VendBankAcc."Payment Form"::"Bank Payment Domestic"]) then
            PaymentForm2 := true;

    end;

    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnBeforeEndToEndID', '', false, false)]
    local procedure PaymentFunctCHE_OnBeforeEndToEndID(ExportLines: Record "Gen. Journal Line"; var EndToEndId: Text)
    var
        VendBankAcc: Record "Vendor Bank Account";
        VendLedgerEntry: Record "Vendor Ledger Entry";
    begin
        if ExportLines."Account Type" <> ExportLines."Account Type"::Vendor then
            exit;

        VendBankAcc.GET(ExportLines."Account No.", ExportLines."Recipient Bank Account");
        if IsQRIBAN(VendBankAcc.IBAN) then begin
            VendLedgerEntry.RESET();
            VendLedgerEntry.SETRANGE("Vendor No.", ExportLines."Account No.");
            VendLedgerEntry.SETRANGE(Open, TRUE);
            VendLedgerEntry.SETRANGE("Document Type", ExportLines."Applies-to Doc. Type");
            VendLedgerEntry.SETRANGE("Document No.", ExportLines."Applies-to Doc. No.");
            IF VendLedgerEntry.FINDFIRST() THEN
                EndToEndId := VendLedgerEntry."Payment Reference"
        end else
            EndToEndId := 'NOTPROVIDED'
    end;

    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnBeforeReferenceNo', '', false, false)]
    local procedure PaymentFunctCHE_OnBeforeReferenceNo(ExportLines: Record "Gen. Journal Line"; var ReferenceNo: Text)
    var
        VendBankAcc: Record "Vendor Bank Account";
        VendLedgerEntry: Record "Vendor Ledger Entry";
    begin
        if ExportLines."Account Type" <> ExportLines."Account Type"::Vendor then
            exit;

        VendBankAcc.GET(ExportLines."Account No.", ExportLines."Recipient Bank Account");
        if IsQRIBAN(VendBankAcc.IBAN) then begin
            VendLedgerEntry.RESET();
            VendLedgerEntry.SETRANGE("Vendor No.", ExportLines."Account No.");
            VendLedgerEntry.SETRANGE(Open, TRUE);
            VendLedgerEntry.SETRANGE("Document Type", ExportLines."Applies-to Doc. Type");
            VendLedgerEntry.SETRANGE("Document No.", ExportLines."Applies-to Doc. No.");
            IF VendLedgerEntry.FINDFIRST() THEN
                ReferenceNo := VendLedgerEntry."Payment Reference";
        end else
            ReferenceNo := 'NOTPROVIDED'
    end;

    [EventSubscriber(ObjectType::Codeunit, 81236, 'OnBeforeMessageToRecepient', '', false, false)]
    local procedure PaymentFunctCHE_OnBeforeMessageToRecepient(ExportLines: Record "Gen. Journal Line"; var MsgToRec: Text)
    var
        VendBankAcc: Record "Vendor Bank Account";
    begin
        if ExportLines."Account Type" <> ExportLines."Account Type"::Vendor then
            exit;

        IF (VendBankAcc."Payment Form" IN [VendBankAcc."Payment Form"::"Post Payment Domestic", VendBankAcc."Payment Form"::"Bank Payment Domestic"]) then
            MsgToRec := ExportLines."Message to Recipient";
    end;


    procedure IsQRIBAN(IBAN: Text): Boolean
    var
        IntValue: Integer;
    begin
        // QR-IBAN must have QR-IID between 30000 and 31999, these are positions 5..10, for example CH97 30024 503254925417.
        if Evaluate(IntValue, CopyStr(DelChr(IBAN), 5, 5)) then
            exit((IntValue >= 30000) and (IntValue <= 31999));

        exit(false);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Translation", 'OnAfterInsertEvent', '', false, false)]
    local procedure ItemTranslation_OnAfterInsert(var Rec: Record "Item Translation")
    var
        ItemTrans: Record "Item Translation";
    begin
        if Rec."Language Code" = 'DEU' then begin
            ItemTrans := Rec;
            ItemTrans."Item No." := Rec."Item No.";
            ItemTrans."Language Code" := 'DES';
            if not ItemTrans.Insert(true) then;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Translation", 'OnAfterModifyEvent', '', false, false)]
    local procedure ItemTranslation_OnAfterModify(var Rec: Record "Item Translation")
    var
        ItemTrans: Record "Item Translation";
    begin
        if Rec."Language Code" = 'DEU' then begin
            ItemTrans.Reset();
            ItemTrans.SetRange("Item No.", Rec."Item No.");
            ItemTrans.SetRange("Language Code", 'DES');
            ItemTrans.SetRange("Variant Code", Rec."Variant Code");
            if ItemTrans.FindFirst() then begin
                ItemTrans.Description := Rec.Description;
                ItemTrans."Description 2" := Rec."Description 2";
                if not ItemTrans.Modify(true) then;
            end;
        end;
    end;
}