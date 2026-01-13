codeunit 50001 Lucky_code
{
    procedure LuckyValidation()
    var
        myInt: Integer;
        newtable: Record "Student_Table";
    begin
        if (StrLen(newtable.Adhar_number) <> 12) then begin
            Error('Addhaar Number must be of 12 digit');
        end;
    end;



    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}