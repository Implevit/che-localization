pageextension 50104 "EIN Pag42-Ext50104" extends "Posted Sales Shipment"
{
    layout
    {
        addafter("Order No.")
        {
            field("Order Text"; Rec."EIN Order Text")
            {
                ApplicationArea = All;
            }
        }
    }
}