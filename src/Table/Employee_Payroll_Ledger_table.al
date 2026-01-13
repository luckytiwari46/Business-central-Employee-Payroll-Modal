table 60050 "Emp Payroll Ledger"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Employee No."; Code[100]) { }
        field(3; "First Name"; Text[100]) { }
        field(4; "Last Name"; Text[100]) { }
        field(5; "Posting Date"; Date) { }
        field(6; "Salary Month"; Text[20]) { }
        field(7; "Gross Salary"; Decimal) { }
        field(8; "Net Salary"; Decimal) { }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
