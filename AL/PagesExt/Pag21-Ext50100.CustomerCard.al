pageextension 50100 "EIN Pag21-Ext50100" extends "Customer Card"
{
    layout
    {
        addafter("Last Date Modified")
        {
            field("EIN Print Tariff No.on Invoice"; Rec."EIN Print Tariff No.on Invoice")
            {
                ApplicationArea = All;
            }
        }

        addafter("Bill-to Customer No.")
        {

            field("Credit-to Customer No._CHE_EHC"; Rec."EIN Credit-to Customer No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Credit-to Customer No. field.';
            }
        }
    }
}
