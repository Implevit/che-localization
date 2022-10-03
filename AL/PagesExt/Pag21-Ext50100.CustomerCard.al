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
    }
}
