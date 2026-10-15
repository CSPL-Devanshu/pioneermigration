table 60002 "Sales Order Approval"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            OptionCaption = ' ,Order';
            OptionMembers = " ","Order";
        }
        field(2; "No."; Code[20])
        {
        }
        field(3; "Line No"; Integer)
        {
        }
        field(5; "Customer No."; Code[20])
        {
        }
        field(6; "Customer Name"; Text[50])
        {
        }
        field(7; "Amout to Customer"; Decimal)
        {
        }
        field(8; Status; Option)
        {
            OptionCaption = 'Open,Released,Pending Approval,Pending Prepayment,Pending For Over Due Approval,Pending For Credit Limit,Pending For Advance Payment,Rejected';
            OptionMembers = Open,Released,"Pending Approval","Pending Prepayment","Pending For Over Due Approval","Pending For Credit Limit","Pending For Advance Payment",Rejected;
        }
        field(9; "Credit Limit"; Boolean)
        {
        }
        field(10; "Over Due"; Boolean)
        {
        }
        field(11; "Advance Payment"; Boolean)
        {
        }
        field(12; "Sender ID"; Code[50])
        {
        }
        field(13; "Approve / Rejeted By"; Code[50])
        {
        }
        field(15; "Date Time Sent for Approval"; DateTime)
        {
        }
        field(16; "Date Time When App / Rej."; DateTime)
        {
        }
        field(20; "Posting Date"; Date)
        {
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Line No")
        {
            Clustered = true;
        }
        key(Key2; "Line No")
        {
        }
    }

    fieldgroups
    {
    }
}

