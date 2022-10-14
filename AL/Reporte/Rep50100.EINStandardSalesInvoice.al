report 50100 "EIN Standard Sales - Invoice"
{
    RDLCLayout = './src/ReportLayout/Rep50100.EINStandardSalesInvoice.rdlc';
    //WordLayout = './src/ReportLayout/Rep50100.EINStandardSalesInvoice..docx';
    Caption = 'Sales - Invoice';
    DefaultLayout = RDLC;
    EnableHyperlinks = true;
    Permissions = TableData "Sales Shipment Buffer" = rimd;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Invoice';
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
            column(OrderNo; "Order No.")
            {
            }
            column(OrderNo_Lbl; FieldCaption("Order No."))
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
            column(SellToFaxNo; GetSellToCustomerFaxNo())
            {
            }
            column(SellToPhoneNo; "Sell-to Phone No.")
            {
            }
            column(PaymentReference; GetPaymentReference())
            {
            }
            column(From_Lbl; FromLbl)
            {
            }
            column(BilledTo_Lbl; BilledToLbl)
            {
            }
            column(ChecksPayable_Lbl; ChecksPayableText)
            {
            }
            column(PaymentReference_Lbl; GetPaymentReferenceLbl())
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
            column(ExchangeRateAsText; ExchangeRateText)
            {
            }
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl)
            {
            }
            column(Questions_Lbl; QuestionsLbl)
            {
            }
            column(Contact_Lbl; CompanyInfo.GetContactUsText())
            {
            }
            column(DocumentTitle_Lbl; DocumentCaption() + ' ' + "No.")
            {
            }
            column(YourDocumentTitle_Lbl; YourSalesInvoiceLbl)
            {
            }
            column(Thanks_Lbl; ThanksLbl)
            {
            }
            column(ShowWorkDescription; ShowWorkDescription)
            {
            }
            column(RemainingAmount; RemainingAmount)
            {
            }
            column(RemainingAmountText; RemainingAmountTxt)
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
            column(PackageTrackingNo; "Package Tracking No.")
            {
            }
            column(PackageTrackingNo_Lbl; FieldCaption("Package Tracking No."))
            {
            }
            column(ShippingAgentCode; "Shipping Agent Code")
            {
            }
            column(ShippingAgentCode_Lbl; FieldCaption("Shipping Agent Code"))
            {
            }
            column(PaymentInstructions_Txt; PaymentInstructionsTxt)
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(ExternalDocumentNo_Lbl; FieldCaption("External Document No."))
            {
            }
            column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
            {
                AutoFormatExpression = Line.GetCurrencyCode();
                AutoFormatType = 1;
            }
            column(Description_Line_Lbl; Line.FieldCaption(Description))
            {
            }
            column(Description2_Line_Lbl; Line.FieldCaption("Description 2"))
            {
            }
            column(ItemNo_Line_Lbl; FieldCaption("No."))
            {
            }
            column(JobTaskDesc_Lbl; JobTaskDescLbl)
            {
            }
            column(JobNo_Lbl; JobNoLbl)
            {
            }
            column(Unit_Lbl; UnitLbl)
            {
            }
            column(Qty_Lbl; QtyLbl)
            {
            }
            column(Price_Lbl; PriceLbl)
            {
            }
            column(PricePer_Lbl; PricePerLbl)
            {
            }
            column(Quantity_Line_Lbl; Line.FieldCaption(Quantity))
            {
            }
            column(UnitOfMeasure_Lbl; Line.FieldCaption("Unit of Measure"))
            {
            }
            column(UnitPrice_Lbl; Line.FieldCaption("Unit Price"))
            {
            }
            column(LineAmount_Line_Lbl; Line.FieldCaption("Line Amount"))
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
            column(InclVRGfeeLbl; InclVRGfeeLbl)
            {
            }
            column(ItemNoLbl; ItemNoLbl)
            {
            }
            //QR-CODE++
            column(g_HideQrZahlschein; g_HideQrZahlschein)
            {
            }
            column(AmountLbl; AmountLbl)
            {
            }
            column(UKPriceLbl; UKPriceLbl)
            {
            }
            dataitem(SwissQRBillBuffer; "Swiss QR-Bill Buffer")
            {
                DataItemTableView = sorting("Entry No.");
                UseTemporary = true;

                column(PaymentPartLbl; PaymentPartLbl) { }
                column(AccountPayableToLbl; AccountPayableToLbl) { }
                column(ReferenceLbl; ReferenceLbl) { }
                column(AdditionalInformationLbl; AdditionalInformationLbl) { }
                column(CurrencyLbl; CurrencyLbl) { }

                column(ReceiptLbl; ReceiptLbl) { }
                column(AcceptancePointLbl; AcceptancePointLbl) { }
                column(PayableByLbl; PayableByLbl) { }
                column(PayableByNameAddressLbl; PayableByNameAddressLbl) { }
                column(AltProcName1Lbl; "Alt. Procedure Name 1") { }
                column(AltProcName2Lbl; "Alt. Procedure Name 2") { }
                column(SeparateLbl; SeparateLbl) { }

                column(QRImage; "QR-Code Image") { }
                column(AccountPayableToText; AccountPayableTo) { }
                column(ReferenceText; PaymentReferenceNoText) { }
                column(PayableByText; PayableBy) { }
                column(AdditionalInformationText; AddInformationText) { }
                column(CurrencyText; Currency) { }
                column(AmountText; AmountText) { }
                column(AltProcValue1Text; "Alt. Procedure Value 1") { }
                column(AltProcValue2Text; "Alt. Procedure Value 2") { }

                trigger OnPreDataItem()
                begin
                    PrintedCount := header.Count();
                    if PrintedCount > 0 then
                        if FindSet() then;
                end;

                trigger OnAfterGetRecord()
                var
                    lCustomer: Record customer;
                    Language: Codeunit Language;
                    lCountryCodeBackup: code[10];
                    lCustomerModify: Boolean;
                begin
                    clear(lCountryCodeBackup);
                    lCustomerModify := False;
                    if not g_HideQrZahlschein then
                        if Header."No." <> '' then begin
                            RemainingAmount := header.GetRemainingAmount();
                            IF RemainingAmount <> 0 then begin
                                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");
                                PrepareForPrint();
                                if lCustomer.get(Header."Bill-to Customer No.") then
                                    if lCustomer."Country/Region Code" = '' then begin
                                        lCustomer."Country/Region Code" := 'LI';
                                        lCustomerModify := true;
                                        lCustomer.Modify();
                                    end;

                                SwissQRBillMgt.GenerateImage(SwissQRBillBuffer);

                                // Hotfix zu Ländercodeproblem++
                                // Ländercode ggf zurückschreiben
                                if lCustomerModify then begin
                                    lCustomer."Country/Region Code" := lCountryCodeBackup;
                                    lCustomer.Modify();
                                end;
                                // Hotfix zu Ländercodeproblem--
                                AccountPayableTo := ReportAccountPayableToInfo(SwissQRBillBuffer);
                                PayableBy := ReportAccountPayableByInfo(SwissQRBillBuffer);
                                AmountText := FormatAmount(Amount);
                                PaymentReferenceNoText := SwissQRBillMgt.FormatPaymentReference("Payment Reference Type", "Payment Reference");
                                AddInformationText := ReportAddInformationInfo(SwissQRBillBuffer);
                            end;
                        end else
                            CurrReport.Skip();
                    ;
                end;
            }
            dataitem(Line; "Sales Invoice Line")
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
                column(Description_Line; Description)
                {
                }

                column(Description2_Line; "Description 2")
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
                column(ItemNo_Line; "No.")
                {
                }
                column(ItemReferenceNo_Line; EAN_Short)
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
                column(Type_Line; Format(Type))
                {
                }
                column(UnitPrice; "Unit Price")
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 2;
                }
                column(UnitOfMeasure; "Unit of Measure")
                {
                }
                column(VATIdentifier_Line; "VAT Identifier")
                {
                }
                column(VATPct_Line; FormattedVATPct)
                {
                }
                column(TransHeaderAmount; TransHeaderAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(JobTaskNo_Lbl; JobTaskNoLbl)
                {
                }
                column(JobTaskNo; JobTaskNo)
                {
                }
                column(JobTaskDescription; JobTaskDescription)
                {
                }
                column(JobNo; JobNo)
                {
                }
                column(HideRoundingLine; HideRoundingLine)
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
                          AssemblyLine, ValueEntry."Document Type"::"Sales Invoice", Line."Document No.", Line."Line No.");
                    end;
                }

                //EIN++
                dataitem(DimensionLoop2; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    column(ShipmentLbl; ShipmentLbl)
                    {
                    }
                    column(SalesShipmentBufferPostingDate; SalesShipmentBuffer."Posting Date")
                    {
                    }
                    column(SalesShipmentBufferQuantity; SalesShipmentBuffer.Quantity)
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        SalesShipmentBuffer.Setrange("Line No.", Line."Line No.");
                        Setrange(Number, 1, SalesShipmentBuffer.Count);
                    end;

                    trigger OnAfterGetRecord()
                    var
                    begin
                        if Number = 1 then
                            SalesShipmentBuffer.FindSet()
                        else
                            SalesShipmentBuffer.Next();
                    end;
                }

                //EIN--

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
                    if LogoPrint then begin
                        CompanyInfo.Get();
                        CompanyInfo.CalcFields(Picture);
                    end;
                    DummyCompanyInfo.Picture := CompanyInfo.Picture;

                    //EIN++
                    SalesShipmentBuffer.Reset();
                    SalesShipmentBuffer.DeleteAll();
                    //EIN--

                    OnAfterLineOnPreDataItem(Header, Line);
                end;

                trigger OnAfterGetRecord()
                var
                    EinhellCoreSetup: Record "Einhell Core Setup_EH001_EHC";
                    ItemFeeAssignment_EHC: Record "Item Fee Assignment_EHC";
                    CustomerSellTo: Record Customer;
                    LineDiscountPctText_Mesg: Label '%1%';
                    PostedShipmentDate: Date;
                    EANLbl: Label 'EAN: ';
                begin
                    //EIN++

                    //if (Line.Type = Line.Type::" ") and (Line.Description = '') then
                    //    CurrReport.Skip();

                    PostedShipmentDate := 0D;
                    if Quantity <> 0 then
                        PostedShipmentDate := FindPostedShipmentDate();
                    if PostedShipmentDate = 0D then;

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

                    NoPrintFeeGLAccount := false;
                    if Line.Type = Line.Type::"G/L Account" then
                        if EinhellCoreSetup.Get() then 
                            if EinhellCoreSetup."Item Fee G/L Account" = Line."No." then
                                NoPrintFeeGLAccount := true;
     
                    VRGTotalText := StrSubstNo(VRGTotalLbl,GLSetup."LCY Code");
                    //EIN--

                    InitializeShipmentLine();
                    if Type = Type::"G/L Account" then
                        "No." := '';

                    OnBeforeLineOnAfterGetRecord(Header, Line);

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := StrSubstNo(LineDiscountPctText_Mesg, -Round("Line Discount %", 0.1));

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

                    if FirstLineHasBeenOutput then
                        //Clear(DummyCompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;

                    JobNo := "Job No.";
                    JobTaskNo := "Job Task No.";

                    if JobTaskNo <> '' then begin
                        JobTaskNoLbl := JobTaskNoLbl2;
                        JobTaskDescription := GetJobTaskDescription(JobNo, JobTaskNo);
                    end else begin
                        JobTaskDescription := '';
                        JobTaskNoLbl := '';
                    end;

                    if JobNo <> '' then
                        JobNoLbl := JobNoLbl2
                    else
                        JobNoLbl := '';

                    FormatDocument.SetSalesInvoiceLine(Line, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);
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
                var
                    TypeHelper: Codeunit "Type Helper";
                begin
                    if WorkDescriptionInstream.EOS then
                        CurrReport.Break();
                    WorkDescriptionLine := TypeHelper.ReadAsTextWithSeparator(WorkDescriptionInstream, TypeHelper.LFSeparator());
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

                    if ShowVATClause("VAT Clause Code") then begin
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
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
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
            dataitem(LineFee; "Integer")
            {
                DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number = FILTER(1 ..));
                column(LineFeeCaptionText; TempLineFeeNoteOnReportHist.ReportText)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if not DisplayAdditionalFeeNote then
                        CurrReport.Break();

                    if Number = 1 then begin
                        if not TempLineFeeNoteOnReportHist.FindSet() then
                            CurrReport.Break()
                    end else
                        if TempLineFeeNoteOnReportHist.Next() = 0 then
                            CurrReport.Break();
                end;
            }
            dataitem(PaymentReportingArgument; "Payment Reporting Argument")
            {
                DataItemTableView = SORTING(Key);
                UseTemporary = true;
                column(PaymentServiceLogo; Logo)
                {
                }
                column(PaymentServiceLogo_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceLogo_Url; GetTargetURL())
                {
                }
                column(PaymentServiceText_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceText_Url; GetTargetURL())
                {
                }
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
                column(TotalAmountExclInclVAT; TotalAmountExclInclVATValue)
                {
                }
                column(TotalAmountExclInclVATText; TotalAmountExclInclVATTextValue)
                {
                }

                trigger OnPreDataItem()
                begin
                    if Header."Prices Including VAT" then begin
                        TotalAmountExclInclVATTextValue := TotalExclVATText;
                        TotalAmountExclInclVATValue := TotalAmount;
                    end else begin
                        TotalAmountExclInclVATTextValue := TotalInclVATText;
                        TotalAmountExclInclVATValue := TotalAmountInclVAT;
                    end;
                end;
            }
           
            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                PaymentServiceSetup: Record "Payment Service Setup";
                ShippingAgent: Record "Shipping Agent";
                CustomerSellTo: Record Customer;
                SellToCust: Record Customer;
                AddrIndex: integer;
                EmptyIndex: integer;
#if not CLEAN19
            //O365SalesInvoiceMgmt: Codeunit "O365 Sales Invoice Mgmt";
#endif
            begin
                //EIN++
                if Header."Language Code" in ['', 'ENU', 'DES', 'FRS', 'ITS'] then
                    CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code")
                else
                    if Header."Language Code" in ['DEU', 'DEA', 'DEC', 'DEL'] then
                        CurrReport.Language := Language.GetLanguageIdOrDefault('DES')
                    else
                        CurrReport.Language := Language.GetLanguageIdOrDefault('ENU');
                //EIN--

                if not IsReportInPreviewMode() then
                    CODEUNIT.Run(CODEUNIT::"Sales Inv.-Printed", Header);

                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue;

#if not CLEAN19
                Clear(PaymentInstructionsTxt);
                ///PaymentInstructionsTxt := O365SalesInvoiceMgmt.GetPaymentInstructionsFromPostedInvoice(Header);
#endif
                //QR-CODE++
                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);

                RemainingAmount := header.GetRemainingAmount();
                g_HideQrZahlschein := HideQR(header."Payment Method Code", Header."Currency Code", RemainingAmount);
                IF SwissQRBillMgt.AllowedCurrencyCode("Currency Code") then begin
                    SwissQRBillBuffer.DELETEALL(); // IST MEAGWICHTIG. für den Massendruck
                    SwissQRBillBuffer.InitBuffer('');
                    SwissQRBillBuffer.SetSourceRecord("Cust. Ledger Entry No.");
                    SwissQRBillBuffer.AddBufferRecord(SwissQRBillBuffer);
                end;

                //QR-CODE--
                ChecksPayableText := StrSubstNo(ChecksPayableLbl, CompanyInfo.Name);

                FormatAddressFields(Header);
                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;

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

                CalcFields("Amount Including VAT");

                if "Amount Including VAT" = 0 then begin
                    if not CurrReport.Preview then
                        CODEUNIT.Run(CODEUNIT::"Sales Inv.-Printed", Header);
                    //CurrReport.QUIT(); // Auch Rechnungen mit Betrag 0 drucken
                end;

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

                if CustomerSellTo."Global Dimension 2 Code" = '80' then
                    FormatAddr.SalesInvSellTo(ShipToAddr, Header)
                else
                    FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, Header);


                if Header."Order No." <> '' then begin
                    SalesShipmentHdr.SetCurrentKey("Order No.");
                    SalesShipmentHdr.SetRange("Order No.", Header."Order No.");

                    if SalesShipmentHdr.FindLast() then
                        SalesShipmentHdr_No := SalesShipmentHdr."No."
                    else
                        SalesShipmentHdr_No := ''
                end;

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
                    Clear(ShipToAddr);
                    FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, Header);
                    if not SellToCust.Get("Sell-to Customer No.") then
                        CLear(SellToCust);
                    CustAccountLabelText := CustAccountLabel;
                    EDIPartnerCodeLayout2 := true;
                    HeaderSubText := '';
                    LiefNoTxt := '';
                    ShipToGLN := SellToCust.GLN;
                end;
                //EIN--

                FillLeftHeader();
                FillRightHeader();

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      Round(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := StrSubstNo(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                end;

                GetLineFeeNoteOnReportHist("No.");

                PaymentServiceSetup.CreateReportingArgs(PaymentReportingArgument, Header);

                CalcFields("Amount Including VAT");
                RemainingAmount := GetRemainingAmount();
                if RemainingAmount = 0 then
                    RemainingAmountTxt := AlreadyPaidLbl
                else
                    if RemainingAmount <> "Amount Including VAT" then
                        RemainingAmountTxt := StrSubstNo(PartiallyPaidLbl, Format(RemainingAmount, 0, '<Precision,2><Standard Format,0>'))
                    else
                        RemainingAmountTxt := '';

                OnAfterGetSalesHeader(Header);

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;
                if ("Order No." = '') and "Prepayment Invoice" then
                    "Order No." := "Prepayment Order No.";
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
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold. (Only possible for RDLC report layout.)';
                    }
                    field(DisplayShipmentInformationOption; DisplayShipmentInformation)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Shipments';
                        ToolTip = 'Specifies that shipments are shown on the document.';
                    }
                    field(DisplayAdditionalFeeNoteOption; DisplayAdditionalFeeNote)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Additional Fee Note';
                        ToolTip = 'Specifies if you want notes about additional fees to be shown on the document.';
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
                          4, Header."No.", 0, 0, DATABASE::Contact, Header."Bill-to Contact No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          4, Header."No.", 0, 0, DATABASE::Customer, Header."Bill-to Customer No.", Header."Salesperson Code",
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
        CompanyInfo: Record "Company Information";
        DummyCompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        VATClause: Record "VAT Clause";
        TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary;
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        Item: Record Item;
        ItemReference: Record "Item Reference";
        SalesShipmentHdr: Record "Sales Shipment Header";
        GLNCust: Record Customer;
        Language: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        SwissQRBillMgt: Codeunit "Swiss QR-Bill Mgt.";
        SalespersonLbl: Label 'Salesperson';
        CompanyInfoBankAccNoLbl: Label 'Account No.';
        CompanyInfoBankNameLbl: Label 'Bank';
        CompanyInfoGiroNoLbl: Label 'Giro No.';
        CompanyInfoPhoneNoLbl: Label 'Phone No.';
        CopyLbl: Label 'Copy';
        EMailLbl: Label 'Email';
        HomePageLbl: Label 'Home Page';
        InvDiscBaseAmtLbl: Label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: Label 'Invoice Discount';
        InvNoLbl: Label 'Invoice No.';
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        SalesInvoiceLbl: Label 'Invoice';
        YourSalesInvoiceLbl: Label 'Your Invoice';
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
        WorkDescriptionInstream: InStream;
        JobNo: Code[20];
        JobTaskNo: Code[20];
        CustItemNo: Code[50];
        ShipToGLN: Code[20];
        WorkDescriptionLine: Text;
        CustAddr: array[8] of Text[100];
        ChecksPayableText: Text;
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        SalesPersonText: Text[50];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        TariffNo: Text[50];
        EAN: Text[60];
        EAN_Short: Text[60];
        LineDiscountPctText: Text;
        PmtDiscText: Text;
        RemainingAmountTxt: Text;
        JobNoLbl: Text;
        JobTaskNoLbl: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        FeeItemText: Text;
        TotalAmountExclInclVATTextValue: Text;
        VRGTotalText: Text;
        MoreLines: Boolean;
        ShowWorkDescription: Boolean;
        ShowShippingAddr: Boolean;
        LogInteraction: Boolean;
        LogoPrint: Boolean;
        HideRoundingLine: Boolean;
        NoPrintFeeGLAccount: Boolean;
        ShowVRGData: Boolean;
        EDIPartnerCodeLayout2: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        RemainingAmount: Decimal;
        TransHeaderAmount: Decimal;
        FeeItemAmount: Decimal;
        FeeItemLineAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        DisplayShipmentInformation: Boolean;
        CompanyLogoPosition: Integer;
        FirstValueEntryNo: Integer;
        NextEntryNo: Integer;
        NextVRGEntryNo: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        PaymentInstructionsTxt: Text;
        ExchangeRateText: Text;
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment = '%1 and %2 are both amounts.';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidently printing all documents.';
        TotalAmountExclInclVATValue: Decimal;
        DisplayAdditionalFeeNote: Boolean;
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        PmtDiscTxt: Label 'If we receive the payment before %1, you are eligible for a %2% payment discount.', Comment = '%1 Discount Due Date %2 = value of Payment Discount % ';
        BodyLbl: Label 'Thank you for your business. Your invoice is attached to this message.';
        AlreadyPaidLbl: Label 'The invoice has been paid.';
        PartiallyPaidLbl: Label 'The invoice has been partially paid. The remaining amount is %1', Comment = '%1=an amount';
        FromLbl: Label 'From';
        BilledToLbl: Label 'Billed to';
        ChecksPayableLbl: Label 'Please make checks payable to %1', Comment = '%1 = company name';
        QuestionsLbl: Label 'Questions?';
        ThanksLbl: Label 'Thank You!';
        JobNoLbl2: Label 'Job No.';
        JobTaskNoLbl2: Label 'Job Task No.';
        JobTaskDescription: Text[100];
        JobTaskDescLbl: Label 'Job Task Description';
        UnitLbl: Label 'Unit';
        VATClausesText: Text;
        QtyLbl: Label 'Qty', Comment = 'Short form of Quantity';
        PriceLbl: Label 'Price';
        PricePerLbl: Label 'Price per';
        //QR-CODE++
        g_Account: Text;
        g_BankName: Text;
        AccountPayableTo: Text;
        PayableBy: Text;
        AddInformationText: Text;
        AmountText: Text;
        PaymentReferenceNoText: Text;
        PrintedCount: Integer;
        PaymentPartLbl: Label 'Payment part';
        AccountPayableToLbl: Label 'Account / Payable to';
        ReferenceLbl: Label 'Reference';
        AdditionalInformationLbl: Label 'Additional information';
        CurrencyLbl: Label 'Currency';
        ReceiptLbl: Label 'Receipt';
        AcceptancePointLbl: Label 'Acceptance point';
        PayableByLbl: Label 'Payable by';
        PayableByNameAddressLbl: Label 'Payable by (name/address)';
        SeparateLbl: Label 'Separate before paying in';
        AmountLbl: Label 'Amount';
        //EIN
        LiefNoTxt: Text[50];
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
        DeliveryNoLbl: Label 'Delivery no.';
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
        VRGTotalLbl: Label 'Total %1';
        EANCodeLbl: Label 'EAN-Code';
        VendorItemNoLbl: Label 'Vendor Item No.';
        CustomItemNoLbl: Label 'Cross-Reference No';
        ArticleDescriptionLbl: Label 'Article description';
        YourOrderNumberLbl: Label 'Your order number';
        InclVRGfeeLbl: Label 'incl. VRG fee';
        UStIdNrLbl: Label 'USt-IdNr.';
        ItemNoLbl: Label 'Item No.';
        g_HideQrZahlschein: Boolean;
    //QR-CODE--        

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    local procedure InitializeShipmentLine()
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer";
    begin
        if Line.Type = Line.Type::" " then
            exit;

        if Line."Shipment No." <> '' then
            if SalesShipmentHeader.Get(Line."Shipment No.") then
                exit;

        ShipmentLine.GetLinesForSalesInvoiceLine(Line, Header);

        ShipmentLine.Reset();
        ShipmentLine.SetRange("Line No.", Line."Line No.");
        if ShipmentLine.FindFirst() then begin
            SalesShipmentBuffer2 := ShipmentLine;
            if not DisplayShipmentInformation then
                if ShipmentLine.Next() = 0 then begin
                    ShipmentLine.Get(SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                    ShipmentLine.Delete();
                    exit;
                end;
            ShipmentLine.CalcSums(Quantity);
            if ShipmentLine.Quantity <> Line.Quantity then begin
                ShipmentLine.DeleteAll();
                exit;
            end;
        end;
    end;

    local procedure DocumentCaption(): Text[250]
    var
        DocCaption: Text[250];
    begin
        OnBeforeGetDocumentCaption(Header, DocCaption);
        if DocCaption <> '' then
            exit(DocCaption);
        exit(SalesInvoiceLbl);
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody());
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
                if Header."Prices Including VAT" then
                    ReportTotalsLine.Add(TotalInclVATText, TotalAmountInclVAT, true, false, false)
                else
                    ReportTotalsLine.Add(TotalExclVATText, TotalAmount, true, false, false);
        end;
        if TotalAmountVAT <> 0 then
            ReportTotalsLine.Add(VATAmountLine.VATAmountText(), TotalAmountVAT, false, true, false);
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20])
    var
        LineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist.";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        Customer: Record Customer;
    begin
        TempLineFeeNoteOnReportHist.DeleteAll();
        CustLedgerEntry.SetRange("Document Type", CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SetRange("Document No.", SalesInvoiceHeaderNo);
        if not CustLedgerEntry.FindFirst() then
            exit;

        if not Customer.Get(CustLedgerEntry."Customer No.") then
            exit;

        LineFeeNoteOnReportHist.SetRange("Cust. Ledger Entry No", CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SetRange("Language Code", Customer."Language Code");
        if LineFeeNoteOnReportHist.FindSet() then
            repeat
                TempLineFeeNoteOnReportHist.Init();
                TempLineFeeNoteOnReportHist.Copy(LineFeeNoteOnReportHist);
                TempLineFeeNoteOnReportHist.Insert();
            until LineFeeNoteOnReportHist.Next() = 0
        else begin
            LineFeeNoteOnReportHist.SetRange("Language Code", Language.GetUserLanguageCode());
            if LineFeeNoteOnReportHist.FindSet() then
                repeat
                    TempLineFeeNoteOnReportHist.Init();
                    TempLineFeeNoteOnReportHist.Copy(LineFeeNoteOnReportHist);
                    TempLineFeeNoteOnReportHist.Insert();
                until LineFeeNoteOnReportHist.Next() = 0;
        end;
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

        FillNameValueTable(LeftHeader, PaymentTermsDescLbl, PaymentTerms.Description);
        FillNameValueTable(LeftHeader, Header.FieldCaption("Due Date"), Format(Header."Due Date", 0, 4));
        //FillNameValueTable(LeftHeader, PaymentMethodDescLbl, PaymentMethod.Description);
        //FillNameValueTable(LeftHeader, Header.FieldCaption("Shipping Agent Code"), ShippingAgent.Name);
        //FillNameValueTable(LeftHeader, ShptMethodDescLbl, ShipmentMethod.Description);
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

        OnAfterFillLeftHeader(LeftHeader, Header);
    end;

    local procedure FillRightHeader()
    begin
        RightHeader.DeleteAll();

        FillNameValueTable(RightHeader, BilltoCustomerNoLbl, Header."Bill-to Customer No.");
        if EDIPartnerCodeLayout2 then 
            FillNameValueTable(RightHeader, YourOrderNumberLbl, Header."External Document No.")
        else
            FillNameValueTable(RightHeader, Header.FieldCaption("External Document No."), Header."External Document No.");
        FillNameValueTable(RightHeader, Header.FieldCaption("Order No."), Header."Order No.");
        FillNameValueTable(RightHeader, DeliveryNoLbl, SalesShipmentHdr."No.");
        //FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, 4));
        FillNameValueTable(RightHeader, Header.FieldCaption("Document Date"), Format(Header."Document Date", 0, '<Day>/<Month>/<YEAR>'));
        //FillNameValueTable(RightHeader, Header.FieldCaption("Order Date"), Format(Header."Order Date", 0, 4));
        FillNameValueTable(RightHeader, Header.FieldCaption("Order Date"), Format(Header."Order Date", 0, '<Day>/<Month>/<YEAR>'));
        //FillNameValueTable(RightHeader, PostedShipmentDateLbl, Format(SalesShipmentHdr."Shipment Date",0,4));
        FillNameValueTable(RightHeader, PostedShipmentDateLbl, Format(SalesShipmentHdr."Shipment Date", 0, '<Day>/<Month>/<YEAR>'));

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

    local procedure FormatAddressFields(var SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        FormatAddr.GetCompanyAddr(SalesInvoiceHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesInvBillTo(CustAddr, SalesInvoiceHeader);
        ShowShippingAddr := FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, SalesInvoiceHeader);
    end;

    local procedure FormatDocumentFields(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        FormatDocument.SetTotalLabels(SalesInvoiceHeader.GetCurrencySymbol(), TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesInvoiceHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesInvoiceHeader."Payment Terms Code", SalesInvoiceHeader."Language Code");
        FormatDocument.SetPaymentMethod(PaymentMethod, SalesInvoiceHeader."Payment Method Code", SalesInvoiceHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesInvoiceHeader."Shipment Method Code", SalesInvoiceHeader."Language Code");
    end;

    local procedure GetJobTaskDescription(_JobNo: Code[20]; _JobTaskNo: Code[20]): Text[100]
    var
        JobTask: Record "Job Task";
    begin
        JobTask.SetRange("Job No.", _JobNo);
        JobTask.SetRange("Job Task No.", _JobTaskNo);
        if JobTask.FindFirst() then
            exit(JobTask.Description);

        exit('');
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterLineOnPreDataItem(var SalesInvoiceHeader: Record "Sales Invoice Header"; var SalesInvoiceLine: Record "Sales Invoice Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterFillLeftHeader(var LeftHeader: Record "Name/Value Buffer"; SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeLineOnAfterGetRecord(var SalesInvoiceHeader: Record "Sales Invoice Header"; var SalesInvoiceLine: Record "Sales Invoice Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetDocumentCaption(SalesInvoiceHeader: Record "Sales Invoice Header"; var DocCaption: Text[250])
    begin
    end;

    [IntegrationEvent(TRUE, FALSE)]
    local procedure OnAfterGetSalesHeader(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    local procedure ShowVATClause(VATClauseCode: Code[20]): Boolean
    begin
        if VATClauseCode = '' then
            exit(false);

        exit(true);
    end;

    //QR-CODE++

    local procedure ReportFormatCustomerPartyInfo(Customer: Record Customer) Result: Text
    begin
        SwissQRBillMgt.AddLineIfNotBlanked(Result, CopyStr(Customer.Name, 1, 70));
        SwissQRBillMgt.AddLineIfNotBlanked(Result, CopyStr(Customer.Address + ' ' + Customer."Address 2", 1, 70));
        SwissQRBillMgt.AddLineIfNotBlanked(Result, CopyStr(Customer."Post Code" + ' ' + Customer.City, 1, 70));
    end;

    local procedure ReportAccountPayableToInfo(var SwissQRBillBuffer: Record "Swiss QR-Bill Buffer") Result: Text
    var
        TempCustomer: Record Customer temporary;
    begin
        Result := SwissQRBillMgt.FormatIBAN(SwissQRBillBuffer.IBAN);
        if SwissQRBillBuffer.GetCreditorInfo(TempCustomer) then
            //TempCustomer."Country/Region Code" := 'CH'; //QR Bugfix
            SwissQRBillMgt.AddLine(Result, ReportFormatCustomerPartyInfo(TempCustomer));
    end;

    local procedure ReportAccountPayableByInfo(var SwissQRBillBuffer: Record "Swiss QR-Bill Buffer"): Text
    var
        TempCustomer: Record Customer temporary;
    begin
        if SwissQRBillBuffer.GetUltimateDebitorInfo(TempCustomer) then
            //TempCustomer."Country/Region Code" := 'CH';//QR Bugfix
            exit(ReportFormatCustomerPartyInfo(TempCustomer));
    end;

    local procedure ReportAddInformationInfo(SwissQRBillBuffer: Record "Swiss QR-Bill Buffer") Result: Text
    var
        BillingInfo: Text;
        BillingInfoMsg: Label ' %1';
    begin
        SwissQRBillBuffer.CheckLimitForUnstrAndBillInfoText();
        BillingInfo := SwissQRBillBuffer."Billing Information";
        Result := SwissQRBillBuffer."Unstructured Message";
        if (Result <> '') and (StrLen(BillingInfo) > 45) then
            Result += StrSubstNo(BillingInfoMsg, BillingInfo)
        else
            SwissQRBillMgt.AddLineIfNotBlanked(Result, BillingInfo);
    end;

    local procedure FormatAmount(Amount: Decimal): Text
    begin
        if Amount = 0 then
            exit('');
        exit(Format(Round(Amount, 0.01), 0, '<Sign><Integer Thousand><1000Character, ><Decimals,3><Comma,.><Filler Character,0>'));
    end;

    local procedure HideQR(var _PaymentMethod: Code[10]; Var _CurrencyCode: Code[10]; _RemainingAmount: Decimal) Result: Boolean
    var
        l_PaymentMethod: Record "Payment Method";
    begin
        Result := false;
        // Wenn der Restbetrag = 0 ist
        if _RemainingAmount = 0 then
            Result := true;
        // wenn es eine Fremwährung ist oder keine CHF 
        if GLSetup."LCY Code" = 'CHF' then begin
            if _CurrencyCode <> '' then
                Result := true;
        end else
            if _CurrencyCode <> 'CHF' then
                Result := true;
        // keine Zahlungsmethode, dann wissen wir auch nicht obs QR-fähig eingerichtet ist.
        if _PaymentMethod = '' then
            Result := true;
        if not Result then
            // an der Zahlungsmethode muss das Qr-Layout eingerichtet sein
            if l_PaymentMethod.get(_PaymentMethod) then
                if l_PaymentMethod."Swiss QR-Bill Layout" = '' then
                    Result := true;

        Exit(Result);
    end;

    local procedure DoGetBankInformation(_SalesInvoiceHeader: Record "Sales Invoice Header"; _CompanyInfo: Record "Company Information"; var r_IBAN: Text[100]; var r_SWIFT: Text[100])
    var
        l_PaymentMethod: Record "Payment Method";
        l_BankAccount: Record "Bank Account";
        l_Result: Text[100];
    begin
        clear(L_Result);
        if _SalesInvoiceHeader."Payment Method Code" <> '' then
            if l_PaymentMethod.get(_SalesInvoiceHeader."Payment Method Code") then
                if l_PaymentMethod."Swiss QR-Bill Bank Account No." <> '' then
                    if l_BankAccount.get(l_PaymentMethod."Swiss QR-Bill Bank Account No.") then begin
                        r_IBAN := l_BankAccount.IBAN;
                        r_SWIFT := l_BankAccount."Swift Code";
                        g_BankName := l_BankAccount.Name;
                        g_Account := l_BankAccount."Bank Account No.";
                    end;
        if r_IBAN = '' then begin
            R_IBAN := _CompanyInfo.iban;
            r_SWIFT := _CompanyInfo."Swift Code";
        end;
    end;
    //QR-CODE--

    //EIN++
    procedure FindPostedShipmentDate(): Date
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer";
    begin
        NextEntryNo := 1;

        if Line."Shipment No." <> '' then
            if SalesShipmentHeader.Get(Line."Shipment No.") then
                exit(SalesShipmentHeader."Posting Date");

        case Line.Type of
            Line.Type::Item:
                GenerateBufferFromValueEntry(Line);
            Line.Type::"G/L Account", Line.Type::Resource, Line.Type::"Charge (Item)", Line.Type::"Fixed Asset":
                GenerateBufferFromShipment(Line);
            Line.Type::" ":
                exit(0D);
        end;

        SalesShipmentBuffer.Reset();
        SalesShipmentBuffer.SetRange("Document No.", Line."Document No.");
        SalesShipmentBuffer.SetRange("Line No.", Line."Line No.");
        if SalesShipmentBuffer.FindFirst() then begin
            SalesShipmentBuffer2 := SalesShipmentBuffer;

            if SalesShipmentBuffer.Next() = 0 then
                if SalesShipmentBuffer.Get(SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.") then begin
                    SalesShipmentBuffer.Delete();
                    exit(SalesShipmentBuffer2."Posting Date");
                end;

            SalesShipmentBuffer.CalcSums(Quantity);
            if SalesShipmentBuffer.Quantity <> Line.Quantity then begin
                SalesShipmentBuffer.DeleteAll();
                Exit(Header."Posting Date");
            end;

        end else
            exit(Header."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line")
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2.Quantity;
        ValueEntry.SetCurrentKey("Document No.", "Posting Date");
        ValueEntry.SetRange("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SetRange("Posting Date", Header."Posting Date");
        ValueEntry.SetRange("Item Charge No.", '');
        ValueEntry.SetFilter("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FindSet() THEN
            repeat
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    AddBufferEntry(
                        SalesInvoiceLine2,
                        -ValueEntry."Invoiced Quantity",
                        ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            until (ValueEntry.Next() = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin

        TotalQuantity := 0;
        SalesInvoiceHeader.SetCurrentKey("Order No.");
        SalesInvoiceHeader.SetFilter("No.", '..%1', Header."No.");
        SalesInvoiceHeader.SetRange("Order No.", Header."Order No.");
        if SalesInvoiceHeader.FindSet() then
            Repeat
                SalesInvoiceLine2.SetRange("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SetRange("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SetRange(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SetRange("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SetRange("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                if SalesInvoiceLine2.FindSet() then
                    Repeat
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    until SalesInvoiceLine2.Next() = 0;
            until SalesInvoiceHeader.Next() = 0;

        SalesShipmentLine.SetCurrentKey("Order No.", "Order Line No.");
        SalesShipmentLine.SetRange("Order No.", Header."Order No.");
        SalesShipmentLine.SetRange("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SetRange("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SetRange(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SetRange("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SetRange("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SetFilter(Quantity, '<>%1', 0);
        if SalesShipmentLine.FindSet() then
            repeat
                if Header."Get Shipment Used" then
                    CorrectShipment(SalesShipmentLine);
                if ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) then
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                else begin
                    if ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) then
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                        SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    if SalesShipmentHeader.GET(SalesShipmentLine."Document No.") then
                        AddBufferEntry(
                            SalesInvoiceLine,
                            Quantity,
                            SalesShipmentHeader."Posting Date");
                end;

            until (SalesShipmentLine.Next() = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(SalesShipmentLine: Record "Sales Shipment Line")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin

        SalesInvoiceLine.SetCurrentKey("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SetRange("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SetRange("Shipment Line No.", SalesShipmentLine."Line No.");
        if SalesInvoiceLine.FindSet() then
            repeat
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            until SalesInvoiceLine.Next() = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date)
    var
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        if SalesShipmentBuffer.FIND('-') then begin
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.Modify();
            exit
        end;

        SalesShipmentBuffer."Document No." := SalesInvoiceLine."Document No.";
        SalesShipmentBuffer."Line No." := SalesInvoiceLine."Line No.";
        SalesShipmentBuffer."Entry No." := NextEntryNo;
        SalesShipmentBuffer.Type := SalesInvoiceLine.Type;
        SalesShipmentBuffer."No." := SalesInvoiceLine."No.";
        SalesShipmentBuffer.Quantity := QtyOnShipment;
        SalesShipmentBuffer."Posting Date" := PostingDate;
        SalesShipmentBuffer.Insert();
        NextEntryNo := NextEntryNo + 1;
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
