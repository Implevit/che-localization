tableextension 50101 "Ass. Promo Line_Ext_CHE_EHC" extends "Assortment Promo Line_EHC"
{
    fields
    {
        field(50100; "Old Shipped Quantity_CHE"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Old Shipped Quantity (NAV)';
        }
    }
}