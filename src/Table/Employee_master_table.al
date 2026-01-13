table 60000 Employee_Master
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; NO; Code[100])
        {
            Caption = 'Employee No';
            DataClassification = ToBeClassified;
        }

        field(2; First_name; Text[100]) { }
        field(3; Last_name; Text[100]) { }
        field(4; Depertment; Text[100]) { }

        field(5; Address; Text[100]) { }
        field(6; Address2; Text[100]) { }
        field(7; City; Text[100]) { }

        field(8; state; Option)
        {
            OptionMembers = "UP","MP","Noida","Bihar";
        }

        field(9; Basic_salary; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(10; Traveling_alowance; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(11; Hra; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(12; Bank_account_no; Code[100])
        {
            TableRelation = "Bank Account"."No.";
        }

        field(13; IFSC_code; Code[100])
        {
            trigger OnValidate()
            var
                i: Integer;
                ch: Text[1];
            begin
                if StrLen(IFSC_code) <> 12 then
                    Error('Pen number must be exactly 12 digits.');


            end;
        }

        field(14; Pen_no; Code[100]) { 
            Caption = 'PEN Number';
    DataClassification = CustomerContent;

    trigger OnValidate()
    var
        i: Integer;
            begin
            
                if Pen_no = '' then
                    Error('PEN Number cannot be blank.');

                
                for i := 1 to StrLen(Pen_no) do begin
                    if not (Pen_no[i] in ['0'..'9']) then
                        Error('PEN Number must contain only numbers.');
                end;

            
                if (StrLen(Pen_no) < 10) or (StrLen(Pen_no) > 12) then
                    Error('PEN Number must be between 10 and 12 digits.');
            end;
        }

        field(15; Aadhar_no; Code[100])
        {
            trigger OnValidate()
            var
                i: Integer;
                ch: Text[1];
            begin
                if StrLen(Aadhar_no) <> 12 then
                    Error('Aadhaar number must be exactly 12 digits.');

                for i := 1 to 12 do begin
                    ch := CopyStr(Aadhar_no, i, 1);
                    if not (ch in ['0' .. '9']) then
                        Error('Aadhaar number must contain digits only.');
                end;
            end;
        }

        field(16; Designation; Text[20]) { }
        field(17; "Post Code"; Text[30]) { TableRelation = "Post Code"; }
        field(18; "Country/Region Code"; Text[30]) { TableRelation = "Country/Region"; }

        field(19; "Other Allowance"; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(20; "PF Amount"; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(21; Incentive; Decimal)
        {
            trigger OnValidate()
            begin
                CalculateNetSalary();
            end;
        }

        field(22; "Net Salary"; Decimal)
        {
            Editable = false;
        }

        field(23; "No. Series"; Code[20]) { Editable = false; }
    }

    keys
    {
        key(PK; NO) { Clustered = true; }
    }

    // 🔹 Salary calculation
    local procedure CalculateNetSalary()
    begin
        "Net Salary" :=
            Basic_salary +
            Traveling_alowance +
            "Other Allowance" +
            Hra +
            Incentive -
            "PF Amount";
    end;

    // 🔹 Employee No assignment (FIXED)
    local procedure AssignEmployeeNo()
    var
        EmpSetup: Record Employee_setup;
        NoSeries: Codeunit "No. Series";
    begin
        if NO <> '' then
            exit;

        if not EmpSetup.FindFirst() then
            Error('Employee Setup is not configured.');

        EmpSetup.TestField(Emp_no);

        NO := NoSeries.GetNextNo(EmpSetup.Emp_no, WorkDate(), true);
        "No. Series" := EmpSetup.Emp_no;

        if NO = '' then
            Error('Failed to generate Employee No.');
    end;

    trigger OnInsert()
    begin
        AssignEmployeeNo();
    end;
}
