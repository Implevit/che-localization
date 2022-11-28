report 50106 "EIN Standard Sales-Order Conf."
{
    RDLCLayout = './src/ReportLayout/Rep50106.EINStandardSalesOrderConf.rdlc';
    //WordLayout = './src/ReportLayout/Rep50106.EINStandardSalesOrderConf.docx';
    Caption = 'Sales - Confirmation';
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Sales Order';
            column(CompanyAddress1; CompanyAddr[1])
            {
            }
            column(CompanyAddress2; CompanyAddr[2])
            {
            }
            column(CompanyAddress3; CompanyAddr[3])
            {
            }
            column(CompanyAddress4; CompanyAddr[4])
            {
            }
            column(CompanyAddress5; CompanyAddr[5])
            {
            }
            column(CompanyAddress6; CompanyAddr[6])
            {
            }
            column(CompanyHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompanyEMail; CompanyInfo."E-Mail")
            {
            }
            column(CompanyPicture; DummyCompanyInfo.Picture)
            {
            }
            column(CompanyPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyPhoneNo_Lbl; CompanyInfoPhoneNoLbl)
            {
            }
            column(CompanyGiroNo; CompanyInfo."Giro No.")
            {
            }
            column(CompanyGiroNo_Lbl; CompanyInfoGiroNoLbl)
            {
            }
            column(CompanyBankName; CompanyInfo."Bank Name")
            {
            }
            column(CompanyBankName_Lbl; CompanyInfoBankNameLbl)
            {
            }
            column(CompanyBankBranchNo; CompanyInfo."Bank Branch No.")
            {
            }
            column(CompanyBankBranchNo_Lbl; CompanyInfo.FieldCaption("Bank Branch No."))
            {
            }
            column(CompanyBankAccountNo; CompanyInfo."Bank Account No.")
            {
            }
            column(CompanyBankAccountNo_Lbl; CompanyInfoBankAccNoLbl)
            {
            }
            column(CompanyIBAN; CompanyInfo.IBAN)
            {
            }
            column(CompanyIBAN_Lbl; CompanyInfo.FieldCaption(IBAN))
            {
            }
            column(CompanySWIFT; CompanyInfo."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl; CompanyInfo.FieldCaption("SWIFT Code"))
            {
            }
            column(CompanyLogoPosition; CompanyLogoPosition)
            {
            }
            column(CompanyRegistrationNumber; CompanyInfo.GetRegistrationNumber())
            {
            }
            column(CompanyRegistrationNumber_Lbl; CompanyInfo.GetRegistrationNumberLbl())
            {
            }
            column(CompanyVATRegNo; CompanyInfo.GetVATRegistrationNumber())
            {
            }
            column(CompanyVATRegNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl())
            {
            }
            column(CompanyVATRegistrationNo; CompanyInfo.GetVATRegistrationNumber())
            {
            }
            column(CompanyVATRegistrationNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl())
            {
            }
            column(CompanyLegalOffice; CompanyInfo.GetLegalOffice())
            {
            }
            column(CompanyLegalOffice_Lbl; CompanyInfo.GetLegalOfficeLbl())
            {
            }
            column(CompanyCustomGiro; CompanyInfo.GetCustomGiro())
            {
            }
            column(CompanyCustomGiro_Lbl; CompanyInfo.GetCustomGiroLbl())
            {
            }
            column(CompanyLegalStatement; GetLegalStatement())
            {
            }
            column(CustomerAddress1; CustAddr[1])
            {
            }
            column(CustomerAddress2; CustAddr[2])
            {
            }
            column(CustomerAddress3; CustAddr[3])
            {
            }
            column(CustomerAddress4; CustAddr[4])
            {
            }
            column(CustomerAddress5; CustAddr[5])
            {
            }
            column(CustomerAddress6; CustAddr[6])
            {
            }
            column(CustomerAddress7; CustAddr[7])
            {
            }
            column(CustomerAddress8; CustAddr[8])
            {
            }
            column(SellToContactPhoneNoLbl; SellToContactPhoneNoLbl)
            {
            }
            column(SellToContactMobilePhoneNoLbl; SellToContactMobilePhoneNoLbl)
            {
            }
            column(SellToContactEmailLbl; SellToContactEmailLbl)
            {
            }
            column(BillToContactPhoneNoLbl; BillToContactPhoneNoLbl)
            {
            }
            column(BillToContactMobilePhoneNoLbl; BillToContactMobilePhoneNoLbl)
            {
            }
            column(BillToContactEmailLbl; BillToContactEmailLbl)
            {
            }
            column(SellToContactPhoneNo; SellToContact."Phone No.")
            {
            }
            column(SellToContactMobilePhoneNo; SellToContact."Mobile Phone No.")
            {
            }
            column(SellToContactEmail; SellToContact."E-Mail")
            {
            }
            column(BillToContactPhoneNo; BillToContact."Phone No.")
            {
            }
            column(BillToContactMobilePhoneNo; BillToContact."Mobile Phone No.")
            {
            }
            column(BillToContactEmail; BillToContact."E-Mail")
            {
            }
            column(CustomerPostalBarCode; FormatAddr.PostalBarCode(1))
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(YourReference_Lbl; FieldCaption("Your Reference"))
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl)
            {
            }
            column(Shipment_Lbl; ShipmentLbl)
            {
            }
            column(ShipmentDate; Format("Shipment Date", 0, 4))
            {
            }
            column(ShipmentDate_Lbl; FieldCaption("Shipment Date"))
            {
            }
            column(ShowShippingAddress; ShowShippingAddr)
            {
            }
            column(ShipToAddress_Lbl; ShiptoAddrLbl)
            {
            }
            column(ShipToAddress1; ShipToAddr[1])
            {
            }
            column(ShipToAddress2; ShipToAddr[2])
            {
            }
            column(ShipToAddress3; ShipToAddr[3])
            {
            }
            column(ShipToAddress4; ShipToAddr[4])
            {
            }
            column(ShipToAddress5; ShipToAddr[5])
            {
            }
            column(ShipToAddress6; ShipToAddr[6])
            {
            }
            column(ShipToAddress7; ShipToAddr[7])
            {
            }
            column(ShipToAddress8; ShipToAddr[8])
            {
            }
            column(PaymentTermsDescription; PaymentTerms.Description)
            {
            }
            column(PaymentTermsDescription_Lbl; PaymentTermsDescLbl)
            {
            }
            column(PaymentMethodDescription; PaymentMethod.Description)
            {
            }
            column(PaymentMethodDescription_Lbl; PaymentMethodDescLbl)
            {
            }
            column(DocumentCopyText; StrSubstNo(DocumentCaption(), CopyText))
            {
            }
            column(BilltoCustumerNo; "Bill-to Customer No.")
            {
            }
            column(BilltoCustomerNo_Lbl; FieldCaption("Bill-to Customer No."))
            {
            }
            column(DocumentDate; Format("Document Date", 0, 4))
            {
            }
            column(DocumentDate_Lbl; FieldCaption("Document Date"))
            {
            }
            column(DueDate; Format("Due Date", 0, 4))
            {
            }
            column(DueDate_Lbl; FieldCaption("Due Date"))
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(DocumentNo_Lbl; InvNoLbl)
            {
            }
            column(QuoteNo; "Quote No.")
            {
            }
            column(QuoteNo_Lbl; FieldCaption("Quote No."))
            {
            }
            column(PricesIncludingVAT; "Prices Including VAT")
            {
            }
            column(PricesIncludingVAT_Lbl; FieldCaption("Prices Including VAT"))
            {
            }
            column(PricesIncludingVATYesNo; Format("Prices Including VAT"))
            {
            }
            column(SalesPerson_Lbl; SalespersonLbl)
            {
            }
            column(SalesPersonText_Lbl; SalesPersonText)
            {
            }
            column(SalesPersonName; SalespersonPurchaser.Name)
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerNo_Lbl; FieldCaption("Sell-to Customer No."))
            {
            }
            column(VATRegistrationNo; GetCustomerVATRegistrationNumber())
            {
            }
            column(VATRegistrationNo_Lbl; GetCustomerVATRegistrationNumberLbl())
            {
            }
            column(GlobalLocationNumber; GetCustomerGlobalLocationNumber())
            {
            }
            column(GlobalLocationNumber_Lbl; GetCustomerGlobalLocationNumberLbl())
            {
            }
            column(SellToFaxNo; GetSellToCustomerFaxNo())
            {
            }
            column(SellToPhoneNo; "Sell-to Phone No.")
            {
            }
            column(LegalEntityType; Cust.GetLegalEntityType())
            {
            }
            column(LegalEntityType_Lbl; Cust.GetLegalEntityTypeLbl())
            {
            }
            column(Copy_Lbl; CopyLbl)
            {
            }
            column(EMail_Lbl; EMailLbl)
            {
            }
            column(HomePage_Lbl; HomePageLbl)
            {
            }
            column(InvoiceDiscountBaseAmount_Lbl; InvDiscBaseAmtLbl)
            {
            }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl)
            {
            }
            column(LineAmountAfterInvoiceDiscount_Lbl; LineAmtAfterInvDiscLbl)
            {
            }
            column(LocalCurrency_Lbl; LocalCurrencyLbl)
            {
            }
            column(ExchangeRateAsText; ExchangeRateText)
            {
            }
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl)
            {
            }
            column(Invoice_Lbl; SalesConfirmationLbl)
            {
            }
            column(Subtotal_Lbl; SubtotalLbl)
            {
            }
            column(Total_Lbl; TotalLbl)
            {
            }
            column(VATAmount_Lbl; VATAmtLbl)
            {
            }
            column(VATBase_Lbl; VATBaseLbl)
            {
            }
            column(VATAmountSpecification_Lbl; VATAmtSpecificationLbl)
            {
            }
            column(VATClauses_Lbl; VATClausesLbl)
            {
            }
            column(VATIdentifier_Lbl; VATIdentifierLbl)
            {
            }
            column(VATPercentage_Lbl; VATPercentageLbl)
            {
            }
            column(VATClause_Lbl; VATClause.TableCaption)
            {
            }
            column(ExtDocNo_SalesHeader; "External Document No.")
            {
            }
            column(ExtDocNo_SalesHeader_Lbl; FieldCaption("External Document No."))
            {
            }
            column(ShowWorkDescription; ShowWorkDescription)
            {
            }
            column(LogoPrint; LogoPrint)
            {
            }
            column(LineDiscountInPctLbl; LineDiscountInPctLbl)
            {
            }
            column(ItemNoLbl; ItemNoLbl)
            {
            }
            column(VRGSummaryLbl; VRGSummaryLbl)
            {
            }
            column(VRGItemNoLbl; VRGItemNoLbl)
            {
            }
            column(VRGItemQuantityLbl; VRGItemQuantityLbl)
            {
            }
            column(VRGItemAmountLbl; VRGItemAmountLbl)
            {
            }
            column(VRGItemLineAmountLbl; VRGItemLineAmountLbl)
            {
            }
            column(VRGTotalText; VRGTotalText)
            {
            }
            column(ShowVRGData; ShowVRGData)
            {
            }
            column(ReferenceTypeNoLbl; ReferenceTypeNoLbl)
            {
            }
            column(CustomItemNoLbl; CustomItemNoLbl)
            {
            }

            dataitem(Line; "Sales Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.", "Line No.");
                UseTemporary = true;
                column(LineNo_Line; "Line No.")
                {
                }
                column(AmountExcludingVAT_Line; Amount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FieldCaption(Amount))
                {
                }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(Description_Line; Description)
                {
                }
                column(Description2_Line; "Description 2")
                {
                }
                column(Description_Line_Lbl; FieldCaption(Description))
                {
                }
                column(LineDiscountPercent_Line; "Line Discount %")
                {
                }
                column(LineDiscountPercentText_Line; LineDiscountPctText)
                {
                }
                column(LineDiscountPct; LineDiscountPct)
                {
                }
                column(LineAmount_Line; "Line Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_Line_Lbl; FieldCaption("Line Amount"))
                {
                }
                column(ItemNo_Line; "No.")
                {
                }
                column(ItemNo_Line_Lbl; FieldCaption("No."))
                {
                }
                column(ShipmentDate_Line; Format("Shipment Date"))
                {
                }
                column(ShipmentDate_Line_Lbl; PostedShipmentDateLbl)
                {
                }
                column(PlannedShipmentDate_Line; Format("Planned Shipment Date"))
                {
                }
                column(PlannedShipmentDate_Line_Lbl; FieldCaption("Planned Shipment Date"))
                {
                }
                column(Quantity_Line; Quantity)
                {
                }
                column(Quantity_Line_Lbl; FieldCaption(Quantity))
                {
                }
                column(Type_Line; Format(Type))
                {
                }
                column(UnitPrice; "Unit Price")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 2;
                }
                column(UnitPrice_Lbl; FieldCaption("Unit Price"))
                {
                }
                column(UnitOfMeasure; "Unit of Measure")
                {
                }
                column(UnitOfMeasure_Lbl; FieldCaption("Unit of Measure"))
                {
                }
                column(VATIdentifier_Line; "VAT Identifier")
                {
                }
                column(VATIdentifier_Line_Lbl; FieldCaption("VAT Identifier"))
                {
                }
                column(VATPct_Line; FormattedVATPct)
                {
                }
                column(VATPct_Line_Lbl; FieldCaption("VAT %"))
                {
                }
                column(TransHeaderAmount; TransHeaderAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(ItemReferenceNo; "Item Reference No.")
                {
                }
                column(ItemReferenceNo_Lbl; FieldCaption("Item Reference No."))
                {
                }
                column(CustItemNo; CustItemNo)
                {
                }
                column(EAN; EAN)
                {
                }
                column(ItemReferenceNo_Line; EAN_Short)
                {
                }
                column(NoPrintFeeGLAccount; NoPrintFeeGLAccount)
                {
                }
                column(FeeItemText; FeeItemText)
                {
                }
                column(FeeItemAmount; FeeItemAmount)
                {
                }
                column(FeeItemLineAmount; FeeItemLineAmount)
                {
                }
                dataitem(AssemblyLine; "Assembly Line")
                {
                    DataItemTableView = SORTING("Document No.", "Line No.");
                    column(LineNo_AssemblyLine; "No.")
                    {
                    }
                    column(Description_AssemblyLine; Description)
                    {
                    }
                    column(Quantity_AssemblyLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(UnitOfMeasure_AssemblyLine; GetUOMText("Unit of Measure Code"))
                    {
                    }
                    column(VariantCode_AssemblyLine; "Variant Code")
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        if not DisplayAssemblyInformation then
                            CurrReport.Break();
                        if not AsmInfoExistsForLine then
                            CurrReport.Break();
                        SetRange("Document Type", AsmHeader."Document Type");
                        SetRange("Document No.", AsmHeader."No.");
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    EinhellCoreSetup: Record "Einhell Core Setup_EH001_EHC";
                    ItemFeeAssignment_EHC: Record "Item Fee Assignment_EHC";
                    CustomerSellTo: Record Customer;
                    StrSubstNo_1Lbl: label '%1%';
                    EANLbl: label 'EAN: ';
                begin
                    if Type = Type::"G/L Account" then
                        "No." := '';

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := StrSubstNo(StrSubstNo_1Lbl, -Round("Line Discount %", 0.1));

                    //EINH++
                    LineDiscountPctText := '';
                    LineDiscountPct := Round("Line Discount %", 0.1);
                    LineDiscountPctText := Format(LineDiscountPct);
                    //EINH--    

                    if DisplayAssemblyInformation then
                        AsmInfoExistsForLine := AsmToOrderExists(AsmHeader);

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                    OnLineOnAfterGetRecordOnAfterCalcTotals(Header, Line, TotalAmount, TotalAmountVAT, TotalAmountInclVAT);

                    FormatDocument.SetSalesLine(Line, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);

                    if FirstLineHasBeenOutput then
                        Clear(DummyCompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;
                    ///RRRRRRRRRRRRRRRRRRRRRRR
                    NoPrintFeeGLAccount := false;
                    if Line.Type = Line.Type::"G/L Account" then
                        if EinhellCoreSetup.Get() then
                            if EinhellCoreSetup."Item Fee G/L Account" = Line."No." then
                                NoPrintFeeGLAccount := true;


                    EAN := '';
                    EAN_short := '';
                    if (Type = Type::Item) then begin
                        ItemReference.Reset();
                        ItemReference.SETCURRENTKEY("Item No.", "Variant Code", "Unit of Measure", "Reference Type", "Reference Type No.", "Reference No.");
                        ItemReference.Setrange("Item No.", "No.");
                        ItemReference.Setrange("Reference Type", ItemReference."Reference Type"::"Bar Code");
                        if ItemReference.FindFirst() then begin
                            EAN := EANLbl + ItemReference."Reference No.";
                            EAN_short := ItemReference."Reference No.";
                        end else
                            EAN := '';

                        CustomerSellTo.Get(Header."Sell-to Customer No.");

                        CustItemNo := '';
                        ItemReference.Reset();
                        ItemReference.SETCURRENTKEY("Item No.", "Variant Code", "Unit of Measure", "Reference Type", "Reference Type No.", "Reference No.");
                        ItemReference.Setrange("Item No.", "No.");
                        ItemReference.Setrange("Reference Type No.", CustomerSellTo."Global Dimension 2 Code");
                        ItemReference.Setrange("Reference Type", ItemReference."Reference Type"::"Customer Group");
                        if ItemReference.FindFirst() then
                            CustItemNo := ItemReference."Reference No.";
                    end;

                    FeeItemText := '';
                    FeeItemAmount := 0;
                    FeeItemLineAmount := 0;
                    if Line.Type = Line.Type::Item then begin
                        ItemFeeAssignment_EHC.Reset();
                        ItemFeeAssignment_EHC.SetRange("Item Fee Type Code", 'RECYCLING');
                        ItemFeeAssignment_EHC.SetRange("Item No.", Line."No.");
                        ItemFeeAssignment_EHC.SetFilter("Starting Date", '%1|<=%2', 0D, Header."Posting Date");
                        if ItemFeeAssignment_EHC.FindFirst() then begin
                            FeeItemText := FeeItemLbl + ' ' + ItemFeeAssignment_EHC."Item Fee Group Code";
                            FeeItemAmount := Line."Item Fee by Piece_EHC";
                            FeeItemLineAmount := Line."Item Fee Amount_EHC";
                            ShowVRGData := true;
                            SetVRGBuffer(ItemFeeAssignment_EHC."Item Fee Group Code", Line.Quantity, FeeItemAmount, FeeItemLineAmount);
                        end;
                    end;

                    VRGTotalText := StrSubstNo(VRGTotalLbl, GLSetup."LCY Code");

                end;

                trigger OnPreDataItem()
                begin
                    MoreLines := Find('+');
                    while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                        MoreLines := Next(-1) <> 0;
                    if not MoreLines then
                        CurrReport.Break();
                    SetRange("Line No.", 0, "Line No.");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := false;
                    DummyCompanyInfo.Picture := CompanyInfo.Picture;
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 .. 99999));
                column(WorkDescriptionLineNumber; Number)
                {
                }
                column(WorkDescriptionLine; WorkDescriptionLine)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if WorkDescriptionInstream.EOS then
                        CurrReport.Break();
                    WorkDescriptionInstream.ReadText(WorkDescriptionLine);
                end;

                trigger OnPostDataItem()
                begin
                    Clear(WorkDescriptionInstream)
                end;

                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then
                        CurrReport.Break();
                    Header."Work Description".CreateInStream(WorkDescriptionInstream, TEXTENCODING::UTF8);
                end;
            }
            dataitem(VATAmountLine; "VAT Amount Line")
            {
                DataItemTableView = SORTING("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;
                column(InvoiceDiscountAmount_VATAmountLine; "Invoice Discount Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountAmount_VATAmountLine_Lbl; FieldCaption("Invoice Discount Amount"))
                {
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine; "Inv. Disc. Base Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine_Lbl; FieldCaption("Inv. Disc. Base Amount"))
                {
                }
                column(LineAmount_VatAmountLine; "Line Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_VatAmountLine_Lbl; FieldCaption("Line Amount"))
                {
                }
                column(VATAmount_VatAmountLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmount_VatAmountLine_Lbl; FieldCaption("VAT Amount"))
                {
                }
                column(VATAmountLCY_VATAmountLine; VATAmountLCY)
                {
                }
                column(VATAmountLCY_VATAmountLine_Lbl; VATAmountLCYLbl)
                {
                }
                column(VATBase_VatAmountLine; "VAT Base")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATBase_VatAmountLine_Lbl; FieldCaption("VAT Base"))
                {
                }
                column(VATBaseLCY_VATAmountLine; VATBaseLCY)
                {
                }
                column(VATBaseLCY_VATAmountLine_Lbl; VATBaseLCYLbl)
                {
                }
                column(VATIdentifier_VatAmountLine; "VAT Identifier")
                {
                }
                column(VATIdentifier_VatAmountLine_Lbl; FieldCaption("VAT Identifier"))
                {
                }
                column(VATPct_VatAmountLine; "VAT %")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(VATPct_VatAmountLine_Lbl; FieldCaption("VAT %"))
                {
                }
                column(NoOfVATIdentifiers; Count)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    VATBaseLCY :=
                      GetBaseLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");
                    VATAmountLCY :=
                      GetAmountLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");

                    TotalVATBaseLCY += VATBaseLCY;
                    TotalVATAmountLCY += VATAmountLCY;

                    if "VAT Clause Code" <> '' then begin
                        VATClauseLine := VATAmountLine;
                        if VATClauseLine.Insert() then;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    Clear(VATBaseLCY);
                    Clear(VATAmountLCY);

                    TotalVATBaseLCY := 0;
                    TotalVATAmountLCY := 0;

                    VATClauseLine.DeleteAll();
                end;
            }
            dataitem(VATClauseLine; "VAT Amount Line")
            {
                DataItemTableView = SORTING("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;
                column(VATIdentifier_VATClauseLine; "VAT Identifier")
                {
                }
                column(Code_VATClauseLine; VATClause.Code)
                {
                }
                column(Code_VATClauseLine_Lbl; VATClause.FieldCaption(Code))
                {
                }
                column(Description_VATClauseLine; VATClause.Description)
                {
                }
                column(Description2_VATClauseLine; VATClause."Description 2")
                {
                }
                column(VATAmount_VATClauseLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(NoOfVATClauses; Count)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if "VAT Clause Code" = '' then
                        CurrReport.Skip();
                    if not VATClause.Get("VAT Clause Code") then
                        CurrReport.Skip();
                    VATClause.GetDescription(Header);
                end;
            }
            dataitem(VRGBuffer; "BOM Buffer")
            {
                UseTemporary = true;
                column(VRGBuffer_ItemNo; VRGBuffer."No.")
                {
                }
                column(VRGBuffer_Quantity; VRGBuffer."Qty. per Parent")
                {
                }
                column(VRGBuffer_ItemAmount; VRGBuffer."Unit Cost")
                {
                }
                column(VRGBuffer_ItemLineAmount; VRGBuffer."Total Cost")
                {
                }
            }
            dataitem(ReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = SORTING("Line No.");
                UseTemporary = true;
                column(Description_ReportTotalsLine; Description)
                {
                }
                column(Amount_ReportTotalsLine; Amount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted")
                {
                }
                column(FontBold_ReportTotalsLine; "Font Bold")
                {
                }
                column(FontUnderline_ReportTotalsLine; "Font Underline")
                {
                }

                trigger OnPreDataItem()
                begin
                    CreateReportTotalLines();
                end;
            }
            dataitem(LeftHeader; "Name/Value Buffer")
            {
                DataItemTableView = SORTING(ID);
                UseTemporary = true;
                column(LeftHeaderName; Name)
                {
                }
                column(LeftHeaderValue; Value)
                {
                }
            }
            dataitem(RightHeader; "Name/Value Buffer")
            {
                DataItemTableView = SORTING(ID);
                UseTemporary = true;
                column(RightHeaderName; Name)
                {
                }
                column(RightHeaderValue; Value)
                {
                }
            }
            dataitem(Footer; "Name/Value Buffer")
            {
                DataItemTableView = SORTING(ID);
                UseTemporary = true;
                column(FooterName; Name)
                {
                }
                column(FooterValue; Value)
                {
                }
            }
            dataitem(LetterText; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(GreetingText; GreetingLbl)
                {
                }
                column(BodyText; BodyLbl)
                {
                }
                column(ClosingText; ClosingLbl)
                {
                }
                column(PmtDiscText; PmtDiscText)
                {
                }

                trigger OnPreDataItem()
                begin
                    PmtDiscText := '';
                    if Header."Payment Discount %" <> 0 then
                        PmtDiscText := StrSubstNo(PmtDiscTxt, Header."Pmt. Discount Date", Header."Payment Discount %");
                end;
            }
            dataitem(Totals; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(TotalNetAmount; TotalAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATBaseLCY; TotalVATBaseLCY)
                {
                }
                column(TotalAmountIncludingVAT; Format(TotalAmountInclVAT, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, Header."Currency Code")))
                {
                }
                column(TotalVATAmount; TotalAmountVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmountLCY; TotalVATAmountLCY)
                {
                }
                column(TotalInvoiceDiscountAmount; TotalInvDiscAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalPaymentDiscountOnVAT; TotalPaymentDiscOnVAT)
                {
                }
                column(TotalVATAmountText; VATAmountLine.VATAmountText())
                {
                }
                column(TotalExcludingVATText; TotalExclVATText)
                {
                }
                column(TotalIncludingVATText; TotalInclVATText)
                {
                }
                column(TotalSubTotal; TotalSubTotal)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalSubTotalMinusInvoiceDiscount; TotalSubTotal + TotalInvDiscAmount)
                {
                }
                column(TotalText; TotalText)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                ArchiveManagement: codeunit ArchiveManagement;
                SalesPost: codeunit "Sales-Post";
            begin
                FirstLineHasBeenOutput := false;
                Clear(Line);
                Clear(SalesPost);
                VATAmountLine.DeleteAll();
                Line.DeleteAll();
                SalesPost.GetSalesLines(Header, Line, 0);
                Line.CalcVATAmountLines(0, Header, Line, VATAmountLine);
                Line.UpdateVATOnLines(0, Header, Line, VATAmountLine);
                OnHeaderOnAfterGetRecordOnAfterUpdateVATOnLines(Header, Line, VATAmountLine);

                if not IsReportInPreviewMode() then
                    codeunit.Run(codeunit::"Sales-Printed", Header);

                //EIN++
                if Header."Language Code" in ['', 'ENU', 'DES', 'FRS', 'ITS'] then
                    CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code")
                else
                    if Header."Language Code" in ['DEU', 'DEA', 'DEC', 'DEL'] then
                        CurrReport.Language := Language.GetLanguageIdOrDefault('DES')
                    else
                        CurrReport.Language := Language.GetLanguageIdOrDefault('ENU');
                //EIN--

                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue;
                ///RRRRRRR
                FormatAddr.GetCompanyAddr("Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
                FormatAddr.SalesHeaderBillTo(CustAddr, Header);
                FormatAddr.SalesHeaderSellTo(SellToAddr, Header);
                ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, Header);

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      Round(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := StrSubstNo(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                end;

                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;

                if not IsReportInPreviewMode() and
                   (CurrReport.UseRequestPage and ArchiveDocument or
                    not CurrReport.UseRequestPage and SalesSetup."Archive Orders")
                then
                    ArchiveManagement.StoreSalesDocument(Header, LogInteraction);

                //EIN++
                VRGBuffer.DeleteAll();
                NextVRGEntryNo := 0;
                FillLeftHeader();
                FillRightHeader();
                FillFooter();

                if LogoPrint then begin
                    CompanyInfo.Get();
                    CompanyInfo.CalcFields(Picture);
                end;

                if not LogoPrint then
                    if SendAsPdf() then begin
                        LogoPrint := true;
                        CompanyInfo.Get();
                        CompanyInfo.CalcFields(Picture);
                    end;
                //EIN--

                DummyCompanyInfo.Picture := CompanyInfo.Picture;

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(LogInteractionOption; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(LogoPrintOption; LogoPrint)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Logo Print';
                    }
                    field(DisplayAsmInformationOption; DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold. (Only possible for RDLC report layout.)';
                    }
                    field(ArchiveDocumentOption; ArchiveDocument)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Archive Document';
                        ToolTip = 'Specifies if the document is archived after you print it.';

                        trigger OnValidate()
                        begin
                            if not ArchiveDocument then
                                LogInteraction := false;
                        end;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
            ArchiveDocument := SalesSetup."Archive Orders";

            OnAfterOnInit(Header);
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction();
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.Get();
        CompanyInfo.SetAutoCalcFields(Picture);
        CompanyInfo.Get();
        SalesSetup.Get();
        CompanyInfo.VerifyAndSetPaymentInfo();
    end;

    trigger OnPostReport()
    begin
        if LogInteraction and not IsReportInPreviewMode() then
            if Header.FindSet() then
                repeat
                    Header.CalcFields("No. of Archived Versions");
                    if Header."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          3, Header."No.", Header."Doc. No. Occurrence",
                          Header."No. of Archived Versions", DATABASE::Contact, Header."Bill-to Contact No."
                          , Header."Salesperson Code", Header."Campaign No.", Header."Posting Description", Header."Opportunity No.")
                    else
                        SegManagement.LogDocument(
                          3, Header."No.", Header."Doc. No. Occurrence",
                          Header."No. of Archived Versions", DATABASE::Customer, Header."Bill-to Customer No.",
                          Header."Salesperson Code", Header."Campaign No.", Header."Posting Description", Header."Opportunity No.");

                until Header.Next() = 0;
    end;

    trigger OnPreReport()
    begin
        if Header.GetFilters = '' then
            Error(NoFilterSetErr);

        if not CurrReport.UseRequestPage then
            InitLogInteraction();

        CompanyLogoPosition := SalesSetup."Logo Position on Documents";
    end;

    var
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        DummyCompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        VATClause: Record "VAT Clause";
        AsmHeader: Record "Assembly Header";
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        ItemReference: Record "Item Reference";
        Language: codeunit Language;
        FormatAddr: codeunit "Format Address";
        FormatDocument: codeunit "Format Document";
        SegManagement: codeunit SegManagement;
        AutoFormat: codeunit "Auto Format";
        LineDiscountPct: decimal;
        LogoPrint: Boolean;
        SalesConfirmationLbl: label 'Order Confirmation';
        SalespersonLbl: label 'Sales person';
        CompanyInfoBankAccNoLbl: label 'Account No.';
        CompanyInfoBankNameLbl: label 'Bank';
        CompanyInfoGiroNoLbl: label 'Giro No.';
        CompanyInfoPhoneNoLbl: label 'Phone No.';
        CopyLbl: label 'Copy';
        EMailLbl: label 'Email';
        HomePageLbl: label 'Home Page';
        InvDiscBaseAmtLbl: label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: label 'Invoice Discount';
        InvNoLbl: label 'Order No.';
        LineAmtAfterInvDiscLbl: label 'Payment Discount on VAT';
        LocalCurrencyLbl: label 'Local Currency';
        PageLbl: label 'Page';
        PaymentTermsDescLbl: label 'Payment Terms';
        PaymentMethodDescLbl: label 'Payment Method';
        PostedShipmentDateLbl: label 'Shipment Date';
        SalesInvLineDiscLbl: label 'Discount %';
        ShipmentLbl: label 'Shipment';
        ShiptoAddrLbl: label 'Ship-to Address';
        ShptMethodDescLbl: label 'Shipment Method';
        SubtotalLbl: label 'Subtotal';
        TotalLbl: label 'Total';
        VATAmtSpecificationLbl: label 'VAT Amount Specification';
        VATAmtLbl: label 'VAT Amount';
        VATAmountLCYLbl: label 'VAT Amount (LCY)';
        VATBaseLbl: label 'VAT Base';
        VATBaseLCYLbl: label 'VAT Base (LCY)';
        VATClausesLbl: label 'VAT Clause';
        VATIdentifierLbl: label 'VAT Identifier';
        VATPercentageLbl: label 'VAT %';
        WorkDescriptionInstream: InStream;
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        SellToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        SalesPersonText: Text[50];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        EAN: Text[60];
        EAN_Short: Text[60];
        CustItemNo: Code[50];
        LineDiscountPctText: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        MoreLines: Boolean;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        NoPrintFeeGLAccount: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        ShowVRGData: Boolean;
        AsmInfoExistsForLine: Boolean;
        CompanyLogoPosition: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        ExchangeRateTxt: label 'Exchange rate: %1/%2', Comment = '%1 and %2 are both amounts.';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        FeeItemAmount: Decimal;
        FeeItemLineAmount: Decimal;
        NextVRGEntryNo: Integer;
        NoFilterSetErr: label 'You must specify one or more filters to avoid accidently printing all documents.';
        GreetingLbl: label 'Hello';
        ClosingLbl: label 'Sincerely';
        PmtDiscTxt: label 'If we receive the payment before %1, you are eligible for a %2% payment discount.', Comment = '%1 Discount Due Date %2 = value of Payment Discount % ';
        BodyLbl: label 'Thank you for your business. Your order confirmation is attached to this message.';
        SellToContactPhoneNoLbl: label 'Sell-to Contact Phone No.';
        SellToContactMobilePhoneNoLbl: label 'Sell-to Contact Mobile Phone No.';
        SellToContactEmailLbl: label 'Sell-to Contact E-Mail';
        BillToContactPhoneNoLbl: label 'Bill-to Contact Phone No.';
        BillToContactMobilePhoneNoLbl: label 'Bill-to Contact Mobile Phone No.';
        BillToContactEmailLbl: label 'Bill-to Contact E-Mail';
        CompanyInfoGiroLbl: label 'Giro No.';
        SalesHeaderShipmentDateLbl: label 'Shipment Date';
        BilltoCustomerNoLbl: label 'Bill-to Customer No.';
        SalespersonPurchaserLbl: label 'Seller';
        LineDiscountInPctLbl: label 'Line discount %';
        ItemNoLbl: label 'Item No.';
        VRGSummaryLbl: label 'Fee Summary';
        VRGItemNoLbl: label 'Fee Item No.';
        VRGItemQuantityLbl: label 'Fee Quantity';
        VRGItemAmountLbl: label 'Fee Amount';
        VRGItemLineAmountLbl: label 'Fee Line Amount';
        VRGTotalLbl: label 'Total %1';
        PmtDiscText: Text;
        ShowWorkDescription: Boolean;
        WorkDescriptionLine: Text;
        FeeItemText: Text;
        VRGTotalText: Text;
        FeeItemLbl: label 'plus';
        SupplierNnoLbl: label 'Supplier no.';
        ReferenceTypeNoLbl: label 'Reference No.';
        CustomItemNoLbl: label 'Cross-Reference No';
        SellToLbl: label 'Sell to';

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(3) <> '';
    end;

    local procedure DocumentCaption(): Text[250]
    begin
        exit(SalesConfirmationLbl);
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: codeunit "Mail Management";
    begin
        exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody());
    end;

    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    begin
        FormatDocument.SetTotallabels(SalesHeader."Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesHeader."Payment Terms Code", SalesHeader."Language Code");
        FormatDocument.SetPaymentMethod(PaymentMethod, SalesHeader."Payment Method Code", SalesHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesHeader."Shipment Method Code", SalesHeader."Language Code");
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[50]
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        if not UnitOfMeasure.Get(UOMCode) then
            exit(UOMCode);
        exit(UnitOfMeasure.Description);
    end;

    local procedure CreateReportTotalLines()
    begin
        ReportTotalsLine.DeleteAll();
        if (TotalInvDiscAmount <> 0) or (TotalAmountVAT <> 0) then
            ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, true, false, false);
        if TotalInvDiscAmount <> 0 then begin
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, false, false, false);
            if TotalAmountVAT <> 0 then
                ReportTotalsLine.Add(TotalExclVATText, TotalAmount, true, false, false);
        end;
        if TotalAmountVAT <> 0 then
            ReportTotalsLine.Add(VATAmountLine.VATAmountText(), TotalAmountVAT, false, true, false);
    end;

    local procedure FillLeftHeader()
    var
        ShippingAgent: Record "Shipping Agent";
        CompanyFooter: Record "Company Information";
    begin
        LeftHeader.DeleteAll();

        if not CompanyFooter.Get() then;

        if not ShippingAgent.Get(Header."Shipping Agent Code") then
            ShippingAgent.Init();

        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, BilltoCustomerNoLbl, Header."Bill-to Customer No.");
        FillNameValueTable(LeftHeader, ' ', ' ');
        FillNameValueTable(LeftHeader, CompanyInfo.GetVATRegistrationNumberLbl(), Header."VAT Registration No.");
        FillNameValueTable(LeftHeader, SalespersonPurchaserLbl, SalespersonPurchaser.Name);
        FillNameValueTable(LeftHeader, Header.FieldCaption("Your Reference"), Header."Your Reference");
    end;

    local procedure FillRightHeader()
    var
        Customer: Record Customer;
    begin
        RightHeader.DeleteAll();
        FillNameValueTable(RightHeader, CompanyInfoPhoneNoLbl, CompanyInfo."Phone No.");
        FillNameValueTable(RightHeader, CompanyInfo.FieldCaption("Fax No."), CompanyInfo."Fax No.");
        FillNameValueTable(RightHeader, CompanyInfo.GetVATRegistrationNumberLbl(), CompanyInfo.GetVATRegistrationNumber());
        FillNameValueTable(RightHeader, CompanyInfoGiroLbl, CompanyInfo."Giro No.");
        FillNameValueTable(RightHeader, CompanyInfoBankNameLbl, CompanyInfo."Bank Name");
        FillNameValueTable(RightHeader, CompanyInfoBankAccNoLbl, CompanyInfo."Bank Account No.");
        FillNameValueTable(RightHeader, ' ', ' ');
        FillNameValueTable(RightHeader, Format(Header."Document Date", 0, 4), ' ');
        FillNameValueTable(RightHeader, ' ', ' ');
        FillNameValueTable(RightHeader, SalesHeaderShipmentDateLbl, Format(Header."Requested Delivery Date", 0, '<Day>/<Month>/<YEAR>'));
        FillNameValueTable(RightHeader, InvNoLbl, Header."No.");
        if Header."External Document No." = '' then
            FillNameValueTable(RightHeader, Header.FieldCaption("External Document No."), ' ')
        else
            FillNameValueTable(RightHeader, Header.FieldCaption("External Document No."), Header."External Document No.");

        Customer.Reset();
        if Customer.Get(Header."Sell-to Customer No.") then
            FillNameValueTable(RightHeader, SupplierNnoLbl, Customer."Our Account No.");

        //FillNameValueTable(RightHeader, BilltoCustomerNoLbl, Header."Bill-to Customer No.");
        //FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, 4));
        //FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, '<Day>/<Month>/<YEAR>'));
    end;

    local procedure FillFooter()
    var
        ShiptoAddrText: Text;
        SellToAddrText: Text;

    begin
        Footer.DeleteAll();

        ShiptoAddrText := '';
        ShiptoAddrText += ShipToAddr[1];
        if ShipToAddr[2] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[2];
        if ShipToAddr[3] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[3];
        if ShipToAddr[4] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[4];
        if ShipToAddr[5] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[5];
        if ShipToAddr[6] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[6];
        if ShipToAddr[7] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[7];
        if ShipToAddr[8] <> '' then
            ShiptoAddrText += ', ' + ShipToAddr[8];
        if ShiptoAddrText <> '' then
            FillNameValueTable(Footer, ShiptoAddrLbl, ShiptoAddrText);

        SellToAddrText := '';
        SellToAddrText += SellToAddr[1];
        if SellToAddr[2] <> '' then
            SellToAddrText += ', ' + SellToAddr[2];
        if SellToAddr[3] <> '' then
            SellToAddrText += ', ' + SellToAddr[3];
        if SellToAddr[4] <> '' then
            SellToAddrText += ', ' + SellToAddr[4];
        if SellToAddr[5] <> '' then
            SellToAddrText += ', ' + SellToAddr[5];
        if SellToAddr[6] <> '' then
            SellToAddrText += ', ' + SellToAddr[6];
        if SellToAddr[7] <> '' then
            SellToAddrText += ', ' + SellToAddr[7];
        if SellToAddr[8] <> '' then
            SellToAddrText += ', ' + SellToAddr[8];
        if ShiptoAddrText <> '' then
            FillNameValueTable(Footer, SellToLbl, SellToAddrText);

        //FillNameValueTable(Footer, BilltoCustomerNoLbl, Header."Bill-to Customer No.");
        //FillNameValueTable(Footer, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, 4));
        //FillNameValueTable(Footer, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, '<Day>/<Month>/<YEAR>'));
    end;

    local procedure FillNameValueTable(var NameValueBuffer: Record "Name/Value Buffer"; Name: Text; Value: Text)
    var
        KeyIndex: Integer;
    begin
        if Value <> '' then begin
            Clear(NameValueBuffer);
            if NameValueBuffer.FindLast() then
                KeyIndex := NameValueBuffer.ID + 1;

            NameValueBuffer.Init();
            NameValueBuffer.ID := KeyIndex;
            NameValueBuffer.Name := CopyStr(Name, 1, MaxStrLen(NameValueBuffer.Name));
            NameValueBuffer.Value := CopyStr(Value, 1, MaxStrLen(NameValueBuffer.Value));
            NameValueBuffer.Insert();
        end;
    end;

    procedure SetVRGBuffer(_ItemFeeGroupCode: Code[20]; _FeeItemQuantity: Decimal; _FeeItemAmount: Decimal; _FeeItemLineAmount: Decimal)
    begin
        ShowVRGData := true;

        VRGBuffer.Reset();
        VRGBuffer.SetRange("No.", _ItemFeeGroupCode);
        if VRGBuffer.FindFirst() then begin
            VRGBuffer."Qty. per Parent" += _FeeItemQuantity;
            VRGBuffer."Unit Cost" += _FeeItemAmount;
            VRGBuffer."Total Cost" += _FeeItemLineAmount;
            VRGBuffer.Modify();
        end else begin
            NextVRGEntryNo += 1;
            VRGBuffer.Init();
            VRGBuffer."Entry No." := NextVRGEntryNo;
            VRGBuffer."No." := _ItemFeeGroupCode;
            VRGBuffer."Qty. per Parent" := _FeeItemQuantity;
            VRGBuffer."Unit Cost" := _FeeItemAmount;
            VRGBuffer."Total Cost" := _FeeItemLineAmount;
            VRGBuffer.Insert();
        end;
    end;

    procedure SendAsPdf(): Boolean
    begin
        if not ThrowExeption() then
            exit(STRPOS(LOWERCASE(GETLASTERRORCALLSTACK), 'savereportaspdf') <> 0);
    end;

    [TryFunction]
    local procedure ThrowExeption()
    begin
        Error('');
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterOnInit(var SalesHeader: Record "Sales Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnHeaderOnAfterGetRecordOnAfterUpdateVATOnLines(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var VATAmountLine: Record "VAT Amount Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnLineOnAfterGetRecordOnAfterCalcTotals(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var VATBaseAmount: Decimal; var VATAmount: Decimal; var TotalAmountInclVAT: Decimal)
    begin
    end;
}

