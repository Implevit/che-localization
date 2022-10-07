#pragma implicitwith disable
pageextension 50101 "AssortOrderSubf Ext_CHE_EHC" extends AssortOrderSubpage_EH303_EHC
{
    layout
    {
        addbefore("Quantity (Base)")
        {
            field("Old Shipped Quantity_CHE"; Rec."Old Shipped Quantity_CHE")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the quantity shipped in the previous system.';
            }
        }
    }
}
#pragma implicitwith restore
