codeunit 50101 "EIN Localization2-CHE_EHC"
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeSetBillToCustomerNo', '', false, false)]
    local procedure SalesHeader_OnBeforeSetBillToCustomerNo(var SalesHeader: Record "Sales Header"; var Cust: Record Customer; var IsHandled: Boolean)
    begin
        if (SalesHeader."Document Type" <> SalesHeader."Document Type"::"Return Order") and
           (SalesHeader."Document Type" <> SalesHeader."Document Type"::"Credit Memo")
        then
            exit;

        if Cust."EIN Credit-to Customer No." = '' then
            exit;

        SalesHeader.Validate("Bill-to Customer No.", Cust."EIN Credit-to Customer No.");
        IsHandled := true;
    end;
}