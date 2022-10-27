report 50102 "EIN Standard Sales-Credit Memo"
{
    RDLCLayout = './src/ReportLayout/Rep50102.EINStandardSalesCreditMemo.rdlc';	
    //WordLayout = './src/ReportLayout/Rep50102.EINStandardSalesCreditMemo.docx';
    Caption = 'Sales - Credit Memo';
    DefaultLayout = RDLC;
    Permissions = TableData "Sales Shipment Buffer" = rimd;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Credit Memo';
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
            column(CompanyAddress7; CompanyAddr[7])
            {
            }
            column(CompanyAddress8; CompanyAddr[8])
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
            column(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
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
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(ExternalDocumentNoLbl; FieldCaption("External Document No."))
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl)
            {
            }
            column(ShipmentDate; Format("Shipment Date", 0, 4))
            {
            }
            column(ShipmentDate_Lbl; FieldCaption("Shipment Date"))
            {
            }
            column(Shipment_Lbl; ShipmentLbl)
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
            column(BilltoCustumerNo_Lbl; FieldCaption("Bill-to Customer No."))
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
            column(AppliesToDocument; AppliesToText)
            {
            }
            column(AppliesToDocument_Lbl; AppliesToTextLbl)
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
            column(SalesPersonBlank_Lbl; SalesPersonText)
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
            column(LegalEntityType; Cust.GetLegalEntityType())
            {
            }
            column(LegalEntityType_Lbl; Cust.GetLegalEntityTypeLbl())
            {
            }
            column(Copy_Lbl; CopyLbl)
            {
            }
            column(EMail_Header_Lbl; EMailLbl)
            {
            }
            column(HomePage_Header_Lbl; HomePageLbl)
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
            column(ExchangeRateASText; ExchangeRateText)
            {
            }
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl)
            {
            }
            column(DocumentTitle_Lbl; SalesCreditMemoLbl + ' ' + "No.")
            {
            }
            column(ShowWorkDescription; ShowWorkDescription)
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
            column(ExternalDocumentNo_Lbl; FieldCaption("External Document No."))
            {       
            }
            //EIN++
            column(LiefNoTxt; LiefNoTxt)
            {
            }

            column(EdiInfo; EdiInfo)
            {
            }
            column(RefTExtFull; RefTExtFull)
            {
            }
            column(CustomerOurAccountNo; Cust."Our Account No.")
            {
            }
            column(CustAccountLabel; CustAccountLabel)
            {
            }
            column(CustAccountLabelText; CustAccountLabelText)
            {
            }
            column(Text76702Lbl; Text76702Lbl)
            {
            }
            column(ShippingAgentText; ShippingAgentText)
            {
            }
            column(RefTExt; RefTExt)
            {
            }
            column(OfficialInChargeText; OfficialInChargeText)
            {
            }
            column(Text76704Lbl; Text76704Lbl)
            {
            }
            column(BillToLbl; BillToLbl)
            {
            }
            column(SellToLbl; SellToLbl)
            {
            }
            column(DeliveryToLbl; DeliveryToLbl)
            {
            }
            column(Text76701Lbl; Text76701Lbl)
            {
            }
            column(PrintTarifNo; PrintTarifNo)
            {
            }
            column(SalesShipmentHdr_No; SalesShipmentHdr_No)
            {
            }
            column(DiscountInProcentLbl; DiscountInProcentLbl)
            {
            }
            column(ReferenceTypeNoLbl; ReferenceTypeNoLbl)
            {
            }
            column(LogoPrint; LogoPrint)
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
            column(EDIPartnerCodeLayout2; EDIPartnerCodeLayout2)
            {
            }
            column(HeaderSubText; HeaderSubText)
            {
            }
            column(EANCodeLbl; EANCodeLbl)
            {
            }    
            column(VendorItemNoLbl; VendorItemNoLbl)
            {
            }
            column(ArticleDescriptionLbl; ArticleDescriptionLbl)
            {
            }
            column(ShipToGLN; ShipToGLN)
            {
            }
            column(YourOrderNumberLbl; YourOrderNumberLbl)
            {
            }
            column(GLNCustNo; GLNCust.GLN)
            {
            }
            column(CustomItemNoLbl; CustomItemNoLbl)
            {
            }
            column(DeliveryPerson; DeliveryPerson)
            {
            }
            column(InclVRGfeeLbl; InclVRGfeeLbl)
            {
            }
            column(HideRoundingLine; HideRoundingLine)
            {
            }
            column(AmountLbl; AmountLbl)
            {
            }
            column(ItemNoLbl; ItemNoLbl)
            {
            }
            dataitem(Line; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.", "Line No.");
                column(LineNo_Line; "Line No.")
                {
                }
                column(AmountExcludingVAT_Line; Amount)
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FieldCaption(Amount))
                {
                }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
                {
                    AutoFormatExpression = GetCurrencyCode();
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
                column(LineAmount_Line; "Line Amount")
                {
                    AutoFormatExpression = GetCurrencyCode();
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
                column(ItemReferenceNo_Line; "Item Reference No.")
                {
                }
                column(ItemReferenceNo_Line_Lbl; FieldCaption("Item Reference No."))
                {
                }
                column(ShipmentDate_Line; Format("Shipment Date"))
                {
                }
                column(ShipmentDate_Line_Lbl; PostedShipmentDateLbl)
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
                    AutoFormatExpression = GetCurrencyCode();
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
 		        column(CustItemNo; CustItemNo)
                {
                }
                column(EAN; EAN)
                {
                }
                column(TariffNo; TariffNo)
                {
                }
                column(UKPriceLbl; UKPriceLbl)
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
                column(NoPrintFeeGLAccount; NoPrintFeeGLAccount)
                {
                }
                column(TransHeaderAmount; TransHeaderAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                dataitem(ShipmentLine; "Sales Shipment Buffer")
                {
                    DataItemTableView = SORTING("Document No.", "Line No.", "Entry No.");
                    UseTemporary = true;
                    column(DocumentNo_ShipmentLine; "Document No.")
                    {
                    }
                    column(PostingDate_ShipmentLine; "Posting Date")
                    {
                    }
                    column(PostingDate_ShipmentLine_Lbl; FieldCaption("Posting Date"))
                    {
                    }
                    column(Quantity_ShipmentLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(Quantity_ShipmentLine_Lbl; FieldCaption(Quantity))
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        SetRange("Line No.", Line."Line No.");
                    end;
                }
                dataitem(AssemblyLine; "Posted Assembly Line")
                {
                    DataItemTableView = SORTING("Document No.", "Line No.");
                    UseTemporary = true;
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
                    var
                        ValueEntry: Record "Value Entry";
                    begin
                        Clear(AssemblyLine);
                        if not DisplayAssemblyInformation then
                            CurrReport.Break();
                        GetAssemblyLinesForDocument(
                          AssemblyLine, ValueEntry."Document Type"::"Sales Credit Memo", Line."Document No.", Line."Line No.");
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    EinhellCoreSetup: Record "Einhell Core Setup_EH001_EHC";
                    ItemFeeAssignment_EHC: Record "Item Fee Assignment_EHC";
                    Substr01Lbl: Label'%1%';
                    EANLbl: Label 'EAN: ';
                begin
                    //EIN++
                    if (Type = Type::"G/L Account") and ("No." = '3297') then
                        HideRoundingLine := TRUE
                    else
                        HideRoundingLine := false;

                    CustItemNo := Line."Item Reference No.";

                    TariffNo := '';
                    if (Type = Type::Item) then
                        if Item.Get(Line."No.") then
                            if Item."Tariff No." <> '' then
                                TariffNo := TariffNoLbl + Item."Tariff No.";

                    EAN := '';
                    if (Type = Type::Item) then begin
                        ItemReference.Reset();
                        ItemReference.SETCURRENTKEY("Item No.", "Variant Code", "Unit of Measure", "Reference Type", "Reference Type No.", "Reference No.");
                        ItemReference.SETRANGE("Item No.", "No.");
                        ItemReference.SETRANGE("Reference Type", ItemReference."Reference Type"::"Bar Code");
                        if ItemReference.FindFirst() then
                            EAN := EANLbl + ItemReference."Reference No."
                        else
                            EAN := '';
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
                            FeeItemAmount := 0; //Bei Gutschrift kein Einzelprreis
                            FeeItemLineAmount := Line."Item Fee Amount_EHC";
                            ShowVRGData := true;
                            SetVRGBuffer(ItemFeeAssignment_EHC."Item Fee Group Code", Line.Quantity, FeeItemAmount, FeeItemLineAmount);
                        end;
                    end;

                    NoPrintFeeGLAccount := false;
                    if Line.Type = Line.Type::"G/L Account" then
                        if EinhellCoreSetup.Get() then 
                            if EinhellCoreSetup."Item Fee G/L Account" = Line."No." then
                                NoPrintFeeGLAccount := true;
     
                    VRGTotalText := StrSubstNo(VRGTotalLbl,GLSetup."LCY Code");
                    //EIN--
                    
                    InitializeSalesShipmentLine();
                    if Type = Type::"G/L Account" then
                        "No." := '';

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := StrSubstNo(Substr01Lbl, -Round("Line Discount %", 0.1));

                    VATAmountLine.Init();
                    VATAmountLine."VAT Identifier" := "VAT Identifier";
                    VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                    VATAmountLine."Tax Group Code" := "Tax Group Code";
                    VATAmountLine."VAT %" := "VAT %";
                    VATAmountLine."VAT Base" := Amount;
                    VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                    VATAmountLine."Line Amount" := "Line Amount";
                    if "Allow Invoice Disc." then
                        VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                    VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                    VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                    VATAmountLine.InsertLine();

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                    FormatDocument.SetSalesCrMemoLine(Line, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);

                    if FirstLineHasBeenOutput then
                        Clear(DummyCompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;
                end;

                trigger OnPreDataItem()
                begin
                    VATAmountLine.DeleteAll();
                    VATClauseLine.DeleteAll();
                    ShipmentLine.Reset();
                    ShipmentLine.DeleteAll();
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
                    AutoFormatExpression = Line.GetCurrencyCode();
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
                end;
            }
            dataitem(VATClauseLine; "VAT Amount Line")
            {
                DataItemTableView = SORTING("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;
                column(VATClausesHeader; VATClausesText)
                {
                }
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

                trigger OnPreDataItem()
                begin
                    if Count = 0 then
                        VATClausesText := ''
                    else
                        VATClausesText := VATClausesLbl;
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
            }
            dataitem(Totals; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(TotalNetAmount; TotalAmount)
                {
                }
                column(TotalVATBaseLCY; TotalVATBaseLCY)
                {
                }
                column(TotalAmountIncludingVAT; TotalAmountInclVAT)
                {
                }
                column(TotalVATAmount; TotalAmountVAT)
                {
                }
                column(TotalVATAmountLCY; TotalVATAmountLCY)
                {
                }
                column(TotalInvoiceDiscountAmount; TotalInvDiscAmount)
                {
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
                }
                column(TotalSubTotalMinusInvoiceDiscount; TotalSubTotal)
                {
                }
                column(TotalText; TotalText)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                ShippingAgent: Record "Shipping Agent";
                CustomerSellTo: Record Customer;
                SellToCust: Record Customer;
                WindowsLogin: Record 2000000120;
                AddrIndex: integer;
                EmptyIndex: integer;
            begin
                if not IsReportInPreviewMode() then
                    CODEUNIT.Run(CODEUNIT::"Sales Cr. Memo-Printed", Header);

                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue;

                //EIN++
                if Header."Language Code" in ['', 'ENU', 'DES', 'FRS', 'ITS'] then
                    CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code")
                else
                    if Header."Language Code" in ['DEU', 'DEA', 'DEC', 'DEL'] then
                        CurrReport.Language := Language.GetLanguageIdOrDefault('DES')
                    else
                        CurrReport.Language := Language.GetLanguageIdOrDefault('ENU');
                //EIN--

                FormatAddressFields(Header);
                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);
                                
                //EIN++
                VRGBuffer.DeleteAll();
                NextVRGEntryNo := 0;

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

                DummyCompanyInfo.Picture := CompanyInfo.Picture;

		        CurrReport.Language := Language.GetLanguageID(Header."Language Code");
		        if ShippingAgent.Get(Header."Shipping Agent Code") then
                    if ShippingAgent.Name <> '' then
                        ShippingAgentText := Text76702Lbl
                    else
                        ShippingAgentText := '';
	
	            IF Cust."Our Account No." = '' THEN
                    CustAccountLabelText := ''
                ELSE
                    CustAccountLabelText := Text76703;

		        if Cust."Global Dimension 2 Code" = '80' then begin
                    CustAccountLabelText := CustAccountLabel;
                    LiefNoTxt := LiefNoLbl;
                end else
                    LiefNoTxt := '';

                if Cust."Global Dimension 2 Code" = '137' then
                    EdiInfo := Text76707
                else
                    EdiInfo := '';

                CustomerSellTo.Get(Header."Sell-to Customer No.");
                PrintTarifNo := CustomerSellTo."EIN Print Tariff No.on Invoice";

                //13.10.2022 ++ Immer Sell-to Customer No.    
                FormatAddr.SalesCrMemoSellTo(ShipToAddr, Header);
                /*              
                if CustomerSellTo."Global Dimension 2 Code" = '80' then
                    FormatAddr.SalesCrMemoSellTo(ShipToAddr, Header)
                else
                    FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, Header);
                */
                //13.10.2022 -- Immer Sell-to Customer No.    
                for AddrIndex := 1 to 8 do
                    if CustAddr[AddrIndex] <> '' then
                        EmptyIndex := AddrIndex + 1;

                GLNCust.Get(Header."Bill-to Customer No.");
                if EmptyIndex <> 0 then begin
                    CustAddr[EmptyIndex] := GLNCust.GLN;
                    if CustAddr[EmptyIndex] = '7610808000282' then
                        CustAddr[EmptyIndex] := '7610808000626';

                    for AddrIndex := 1 to 8 do
                        if ShipToAddr[AddrIndex] <> '' then
                            EmptyIndex := AddrIndex + 1;

                    GLNCust.Get(Header."Sell-to Customer No.");
                    ShipToAddr[EmptyIndex] := GLNCust.GLN;
                end;

                HeaderSubText := ' | 7612033000006';    
                EDIPartnerCodeLayout2 := false;

                if Header."EDI Partner Code_EHC" = 'JUMBO' then begin
                    GLNCust.Get(Header."Bill-to Customer No.");
                    //13.10.2022 ++ Immer Sell-to Customer No.
                    /*
                    Clear(ShipToAddr);
                    FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, Header);
                    if not SellToCust.Get("Sell-to Customer No.") then
                        CLear(SellToCust);
                    */
                    CustAccountLabelText := CustAccountLabel;
                    EDIPartnerCodeLayout2 := true;
                    HeaderSubText := '';
                    LiefNoTxt := LiefNoLbl;
                    ShipToGLN := SellToCust.GLN;
                end;

                CLEAR(DeliveryPerson);

                if WindowsLogin.GET(UserSecurityId()) then
                  DeliveryPerson := WindowsLogin."Full Name";
                //EIN--

     	        FillLeftHeader();
                FillRightHeader();

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      Round(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := StrSubstNo(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                end;

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;
            end;

            trigger OnPreDataItem()
            begin
                FirstLineHasBeenOutput := false;
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
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
                    }
                    field(DisplayShipmentInformationOption; DisplayShipmentInformation)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Shipments';
                        ToolTip = 'Specifies that shipments are shown on the document.';
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
                    if Header."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Contact, Header."Bill-to Contact No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Customer, Header."Bill-to Customer No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '');
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
        //WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        DummyCompanyInfo: Record "Company Information";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        VATClause: Record "VAT Clause";
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        ItemReference: Record "Item Reference";
        GLNCust: Record Customer;
        Item: Record Item;
        Language: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        SalesPrepCreditMemoNoLbl: Label 'Sales - Prepmt. Credit Memo %1';
        SalesCreditMemoNoLbl: Label 'Sales - Credit Memo %1';
        SalespersonLbl: Label 'Sales person';
        CompanyInfoBankAccNoLbl: Label 'Account No.';
        CompanyInfoBankNameLbl: Label 'Bank';
        CompanyInfoGiroNoLbl: Label 'Giro No.';
        CompanyInfoPhoneNoLbl: Label 'Phone No.';
        CopyLbl: Label 'Copy';
        EMailLbl: Label 'Email';
        HomePageLbl: Label 'Home Page';
        InvDiscBaseAmtLbl: Label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: Label 'Invoice Discount';
        InvNoLbl: Label 'Credit Memo No.';
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        SalesCreditMemoLbl: Label 'Credit Memo';
        ShipmentLbl: Label 'Shipment';
        ShiptoAddrLbl: Label 'Ship-to Address';
        ShptMethodDescLbl: Label 'Shipment Method';
        SubtotalLbl: Label 'Subtotal';
        TotalLbl: Label 'Total';
        VATAmtSpecificationLbl: Label 'VAT Amount Specification';
        VATAmtLbl: Label 'VAT Amount';
        VATAmountLCYLbl: Label 'VAT Amount (LCY)';
        VATBaseLbl: Label 'VAT Base';
        VATBaseLCYLbl: Label 'VAT Base (LCY)';
        VATClausesLbl: Label 'VAT Clause';
        VATIdentifierLbl: Label 'VAT Identifier';
        VATPercentageLbl: Label 'VAT %';
        SellToContactPhoneNoLbl: Label 'Sell-to Contact Phone No.';
        SellToContactMobilePhoneNoLbl: Label 'Sell-to Contact Mobile Phone No.';
        SellToContactEmailLbl: Label 'Sell-to Contact E-Mail';
        BillToContactPhoneNoLbl: Label 'Bill-to Contact Phone No.';
        BillToContactMobilePhoneNoLbl: Label 'Bill-to Contact Mobile Phone No.';
        BillToContactEmailLbl: Label 'Bill-to Contact E-Mail';
        BodyLbl: Label 'Thank you for your business. Your invoice is attached to this message.';
        WorkDescriptionInstream: InStream;
        CustItemNo: Code[50];
        ShipToGLN: Code[20];
        WorkDescriptionLine: Text;
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        SalesPersonText: Text[50];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        TariffNo: Text[50];
        EAN: Text[60];
        LineDiscountPctText: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        FeeItemText: Text;
        VRGTotalText: Text;
        MoreLines: Boolean;
        CopyText: Text[30];
        ShowWorkDescription: Boolean;
        ShowShippingAddr: Boolean;
        LogInteraction: Boolean;
        LogoPrint: Boolean;
        NoPrintFeeGLAccount: Boolean;
        ShowVRGData: Boolean;
        HideRoundingLine: Boolean;
        EDIPartnerCodeLayout2: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        FeeItemAmount: Decimal;
        FeeItemLineAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        DisplayShipmentInformation: Boolean;
        CompanyLogoPosition: Integer;
        NextVRGEntryNo: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment = '%1 and %2 are both amounts.';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        AppliesToText: Text;
        AppliesToTextLbl: Label 'Applies to Document';
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidently printing all documents.';
        DisplayAdditionalFeeNote: Boolean;
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        VATClausesText: Text;
        //EIN
        LiefNoTxt: Text[50];
        DeliveryPerson: Text;
        LiefNoLbl: Label 'Vendor no.: 970471';
        ShippingAgentText: Text[50];
        RefTExt: Text[30];
        RefTExtFull: Text[100];
        EdiInfo: Text[50];
        PrintTarifNo: Boolean;
        SalesShipmentHdr_No: Text[20];
        OfficialInChargeText: text[30];
        CustAccountLabelText: Text[30];
        HeaderSubText: Text[20];
        Text76703: Label 'Our customer no.';
        Text76707: Label 'No EDI order!';
        CustAccountLabel: Label 'Company number: ';
        Text76702Lbl: Label 'Shipping Agent:';
        Text76704Lbl: Label 'Ref.';
        BillToLbl: Label 'BILL TO:';
        SellToLbl: Label 'SELL TO:';
        DeliveryToLbl: Label 'DELIVERY TO';
        Text76701Lbl: Label 'Official in Charge:';
        BilltoCustomerNoLbl: Label 'Invoice to customer no.';
        BankNameLbl: Label 'Bank Name';
        IBANLbl: Label 'IBAN';
        SwiftCodeLbl: Label 'SWIFT-Code/BIC';
        DiscountInProcentLbl: Label 'Discount %';
        ReferenceTypeNoLbl: Label 'Reference No.';
        TariffNoLbl: Label 'Tariff No.: ';
        UKPriceLbl: Label 'UK price';
        FeeItemLbl: Label 'plus';
        VRGSummaryLbl: Label 'Fee Summary';
        VRGItemNoLbl: Label 'Fee Item No.';
        VRGItemQuantityLbl: Label 'Fee Quantity';
        VRGItemAmountLbl: Label 'Fee Amount';
        VRGItemLineAmountLbl: Label 'Fee Line Amount';
        EANCodeLbl: Label 'EAN-Code';
        VendorItemNoLbl: Label 'Vendor Item No.';
        CustomItemNoLbl: Label 'Cross-Reference No';
        ArticleDescriptionLbl: Label 'Article description';
        YourOrderNumberLbl: Label 'Your order number';
        InclVRGfeeLbl: Label 'incl. VRG fee';
        UStIdNrLbl: Label 'USt-IdNr.';
        VRGTotalLbl: Label 'Total %1';
        AmountLbl: Label 'Amount';
        ReturnNoLbl: Label 'Return No.';
        ItemNoLbl: Label 'Item No.';

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
    end;

    local procedure InitializeSalesShipmentLine(): Date
    var
        ReturnReceiptHeader: Record "Return Receipt Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer";
    begin
        if Line."Return Receipt No." <> '' then
            if ReturnReceiptHeader.Get(Line."Return Receipt No.") then
                exit(ReturnReceiptHeader."Posting Date");
        if Header."Return Order No." = '' then
            exit(Header."Posting Date");
        if Line.Type = Line.Type::" " then
            exit(0D);

        ShipmentLine.GetLinesForSalesCreditMemoLine(Line, Header);

        ShipmentLine.Reset();
        ShipmentLine.SetRange("Line No.", Line."Line No.");
        if ShipmentLine.Find('-') then begin
            SalesShipmentBuffer2 := ShipmentLine;
            if not DisplayShipmentInformation then
                if ShipmentLine.Next() = 0 then begin
                    ShipmentLine.Get(
                      SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                    ShipmentLine.Delete();
                    exit(SalesShipmentBuffer2."Posting Date");
                end;
            ShipmentLine.CalcSums(Quantity);
            if ShipmentLine.Quantity <> Line.Quantity then begin
                ShipmentLine.DeleteAll();
                exit(Header."Posting Date");
            end;
        end;
        exit(Header."Posting Date");
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody());
    end;

    local procedure DocumentCaption(): Text[250]
    var
        DocCaption: Text[250];
    begin
        OnBeforeDocumentCaption(Header, DocCaption);
        if DocCaption <> '' then
            exit(DocCaption);

        if Header."Prepayment Credit Memo" then
            exit(SalesPrepCreditMemoNoLbl);
        exit(SalesCreditMemoNoLbl);
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
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

        FillNameValueTable(LeftHeader, BankNameLbl, CompanyFooter."Bank Name");
        FillNameValueTable(LeftHeader, IBANLbl, CompanyFooter.IBAN);
        FillNameValueTable(LeftHeader, SwiftCodeLbl, CompanyFooter."SWIFT Code");
        FillNameValueTable(LeftHeader, CompanyFooter.FieldCaption("VAT Registration No."), CompanyFooter."VAT Registration No.");

        if EDIPartnerCodeLayout2 then
            FillNameValueTable(LeftHeader, UStIdNrLbl, 'CHE-113.193.989 MWST / ZAK-Kto. 7833-4');   

        /*
        //Original
        FillNameValueTable(LeftHeader, Header.FieldCaption("External Document No."), Header."External Document No.");
        FillNameValueTable(LeftHeader, Header.FieldCaption("Bill-to Customer No."), Header."Bill-to Customer No.");
        FillNameValueTable(LeftHeader, Header.GetCustomerVATRegistrationNumberLbl(), Header.GetCustomerVATRegistrationNumber());
        FillNameValueTable(LeftHeader, Header.GetCustomerGlobalLocationNumberLbl(), Header.GetCustomerGlobalLocationNumber());
        FillNameValueTable(LeftHeader, InvNoLbl, Header."No.");
        FillNameValueTable(LeftHeader, Header.FieldCaption("Order No."), Header."Order No.");
        FillNameValueTable(LeftHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, 4));
        FillNameValueTable(LeftHeader, Header.FieldCaption("Due Date"), Format(Header."Due Date", 0, 4));
        FillNameValueTable(LeftHeader, PaymentTermsDescLbl, PaymentTerms.Description);
        FillNameValueTable(LeftHeader, PaymentMethodDescLbl, PaymentMethod.Description);
        FillNameValueTable(LeftHeader, Cust.GetLegalEntityTypeLbl(), Cust.GetLegalEntityType());
        FillNameValueTable(LeftHeader, ShptMethodDescLbl, ShipmentMethod.Description);
        */
    end;

    local procedure FillRightHeader()
    var
    begin
        RightHeader.DeleteAll();

        FillNameValueTable(RightHeader, BilltoCustomerNoLbl, Header."Bill-to Customer No.");
        FillNameValueTable(RightHeader, ReturnNoLbl, Header."Return Order No.");
        //FillNameValueTable(RightHeader, CompanyInfo.FieldCaption("VAT Registration No."), CompanyInfo."VAT Registration No.");
        //FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, 4));
        FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, '<Day>/<Month>/<YEAR>'));
        //FillNameValueTable(RightHeader, Header.FieldCaption("Order Date"), Format(Header."Order Date", 0, 4));
        FillNameValueTable(RightHeader, Header.FieldCaption("Posting Date"), Format(Header."Posting Date", 0, '<Day>/<Month>/<YEAR>'));
        FillNameValueTable(RightHeader, Header.FieldCaption("External Document No."), Header."External Document No.");

        /*
        //Original
        FillNameValueTable(RightHeader, EMailLbl, CompanyInfo."E-Mail");
        FillNameValueTable(RightHeader, HomePageLbl, CompanyInfo."Home Page");
        FillNameValueTable(RightHeader, CompanyInfoPhoneNoLbl, CompanyInfo."Phone No.");
        FillNameValueTable(RightHeader, CompanyInfo.GetRegistrationNumberLbl(), CompanyInfo.GetRegistrationNumber());
        FillNameValueTable(RightHeader, CompanyInfoBankNameLbl, CompanyInfo."Bank Name");
        FillNameValueTable(RightHeader, CompanyInfoGiroNoLbl, CompanyInfo."Giro No.");
        FillNameValueTable(RightHeader, CompanyInfo.FieldCaption(IBAN), CompanyInfo.IBAN);
        FillNameValueTable(RightHeader, CompanyInfo.FieldCaption("SWIFT Code"), CompanyInfo."SWIFT Code");
        FillNameValueTable(RightHeader, Header.GetPaymentReferenceLbl(), Header.GetPaymentReference());
        */
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
	
    local procedure FormatAddressFields(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
        FormatAddr.GetCompanyAddr(SalesCrMemoHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesCrMemoBillTo(CustAddr, SalesCrMemoHeader);
        ShowShippingAddr := FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, SalesCrMemoHeader);
    end;

    local procedure FormatDocumentFields(SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        StrSubstNoLbl: Label '%1 %2';
    begin
        FormatDocument.SetTotalLabels(SalesCrMemoHeader."Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesCrMemoHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesCrMemoHeader."Payment Terms Code", SalesCrMemoHeader."Language Code");
        FormatDocument.SetPaymentMethod(PaymentMethod, SalesCrMemoHeader."Payment Method Code", SalesCrMemoHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesCrMemoHeader."Shipment Method Code", SalesCrMemoHeader."Language Code");

        AppliesToText :=
            FormatDocument.SetText(SalesCrMemoHeader."Applies-to Doc. No." <> '', StrSubstNo(StrSubstNoLbl, Format(SalesCrMemoHeader."Applies-to Doc. Type"), SalesCrMemoHeader."Applies-to Doc. No."));
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeDocumentCaption(SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var DocCaption: Text[250])
    begin
    end;
 procedure SetVRGBuffer(_ItemFeeGroupCode: Code[20]; _FeeItemQuantity: Decimal; _FeeItemAmount: Decimal; _FeeItemLineAmount:Decimal)
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
    //EIN--
}

