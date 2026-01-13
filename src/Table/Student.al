table 50010 Student_Table
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Rollno; Code[300])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Class; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; City; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Mobile_no; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Pin_Code; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Fater_Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Mother_name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Adhar_number; Code[12])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Pen_Number; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(12; state; Option)
        {
            OptionMembers = "up","Mp";
        }
        field(13; Gender; Option)
        {
            OptionMembers = "Male","Female","Other";
        }
        field(14; Height_IN_CM; Code[12])
        {
            DataClassification = ToBeClassified;
        }
        field(15; Weight_IN_KG; Code[12])
        {
            DataClassification = ToBeClassified;
        }
        field(16; Disability; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Rollno)
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