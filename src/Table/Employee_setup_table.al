table 60002 Employee_setup
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Setup';

    fields
    {
        field(1; "Primary Key"; Code[10]) { 
            DataClassification=ToBeClassified;
        }
        field(2; Emp_no; Code[100])
        {
            Caption = 'Employee no. series';
            // AutoIncrement = True;
            DataClassification = ToBeClassified;
            TableRelation="No. Series";

        }
        field(3; "Payroll Expense Account"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation="G/L Account"."No.";

        }
        field(4; "Payroll Journal Template"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation="Gen. Journal Template";
        }
        field(5; "Salary Payable Account"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account"."No.";
        }
        field(6; "Payroll Journal Batch"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Payroll journal Template"));

        }

    }

    keys
    {
        key(Key1; Emp_no)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}