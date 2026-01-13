codeunit 60030 "Payroll Posting"
{
    procedure PostPayroll(Employee: Record Employee_Master)
    var
        EmpLedger: Record "Emp Payroll Ledger";
        LastEntryNo: Integer;
    begin
        // Mandatory checks
        Employee.TestField(NO);
        Employee.TestField("Net Salary");

        // Get last Entry No
        if EmpLedger.FindLast() then
            LastEntryNo := EmpLedger."Entry No."
        else
            LastEntryNo := 0;

        // Insert Ledger Entry
        EmpLedger.Init();
        EmpLedger."Entry No." := LastEntryNo + 1;
        EmpLedger."Employee No." := Employee.NO;
        EmpLedger."First Name" := Employee.First_name;
        EmpLedger."Last Name" := Employee.Last_name;
        EmpLedger."Posting Date" := WorkDate();
        EmpLedger."salary Month" := Format(Date2DMY(WorkDate(), 2)); // Month
        EmpLedger."Gross Salary" :=
              Employee.Basic_salary
            + Employee.Traveling_alowance
            + Employee."Other Allowance"
            + Employee.Hra
            + Employee.Incentive;
        EmpLedger."Net Salary" := Employee."Net Salary";

        EmpLedger.Insert(true);
    end;
}
