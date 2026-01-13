table 60051 "Employee Payroll Ledger"
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



// table 60020 "Employee Ledger Entry "
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Entry No."; Integer) { 
//             AutoIncrement=true;
//             DataClassification=ToBeClassified;
//         }
//         field(2; "Employee No."; Code[100]) { DataClassification=ToBeClassified; }
//         field(3; "First Name"; Code[50]) { DataClassification=ToBeClassified; }
//         field(4; "Last Name"; code[50]) { DataClassification=ToBeClassified; }
//         field(5;"Posting Date";date){ DataClassification=ToBeClassified;}

//         field(6;"salary Month";code[50]){ DataClassification=ToBeClassified;}
//         field(7; "Gross Salary"; Decimal) { DataClassification=ToBeClassified; }


//         field(8; "Net Salary"; Decimal) { DataClassification=ToBeClassified; }
//         field(9;"Deduction";Decimal){ DataClassification=ToBeClassified;}

//     }

//     keys
//     {
//         key(PK; "Entry No.")
//         {
//             Clustered = true;
//         }
//     }
// }
