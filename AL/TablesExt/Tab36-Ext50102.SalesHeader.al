tableextension 50102 "EIN Tab36-Ext50102" extends "Sales Header"
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