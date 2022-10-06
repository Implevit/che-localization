tableextension 50103 "EIN Tab110-Ext50103" extends "Sales Shipment Header"
{
    fields
    {
        field(50200; "EIN Order Text"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Text';
        }
    }
}