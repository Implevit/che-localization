pageextension 50103 "EIN Pag42-Ext50103" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("Order Text"; Rec."EIN Order Text")
            {
                ApplicationArea = All;
            }
        }
    }
}
