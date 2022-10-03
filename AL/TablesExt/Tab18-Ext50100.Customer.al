tableextension 50100 "EIN Tab18-Ext50100" extends Customer
{
    fields
    {
        field(50100; "EIN Print Tariff No.on Invoice"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Print Tariff No. on Invoice';
        }
    }
}