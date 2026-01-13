page 60001 "Employee Master Card"
{
    Caption = 'Employee Master Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee_Master;

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                field(NO; Rec.NO)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Importance = Promoted;
                }
                field(First_name; Rec.First_name) { ApplicationArea = All; }
                field(Last_name; Rec.Last_name) { ApplicationArea = All; }
                field(Depertment; Rec.Depertment) { ApplicationArea = All; }
                field(Designation; Rec.Designation) { ApplicationArea = All; }
            }



            group("Employee Address ")
            {
                field(Address; Rec.Address) { ApplicationArea = All; }
                field(Address2; Rec.Address2) { ApplicationArea = All; }
                field(City; Rec.City) { ApplicationArea = All; }
                field(state; Rec.state) { ApplicationArea = All; }
                field("Post Code"; Rec."Post Code") { ApplicationArea = All; }
                field("Country/Region Code"; Rec."Country/Region Code") { ApplicationArea = All; }
            }
            group("Employee Salary")
            {
                field(Basic_salary; Rec.Basic_salary) { ApplicationArea = All; }
                field(Hra; Rec.Hra) { ApplicationArea = All; }
                field("Other Allowance"; Rec."Other Allowance") { ApplicationArea = All; }
                field(Traveling_alowance; Rec.Traveling_alowance) { ApplicationArea = All; }
                field(Incentive; Rec.Incentive) { ApplicationArea = All; }
                field("PF Amount"; Rec."PF Amount") { ApplicationArea = All; }

                field("Net Salary"; Rec."Net Salary")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Style = Strong;
                }
            }

            group("Bank Details")
            {
                field(Bank_account_no; Rec.Bank_account_no) { ApplicationArea = All; }
                field(IFSC_code; Rec.IFSC_code) { ApplicationArea = All; }
            }
            group("Tax Information")
            {
                field(Pen_no; Rec.Pen_no) { ApplicationArea = all; }
                field(Aadhar_no; Rec.Aadhar_no) { ApplicationArea = all; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PostPayroll)
{
    Caption = 'Post Payroll';
    Image = PostOrder;
    Promoted = true;
    PromotedCategory = Process;
    ApplicationArea = All;

    trigger OnAction()
    var
        PayrollPost: Codeunit "Payroll Posting";
        Emp: Record Employee_Master;
        EmpLedger: Record "Emp Payroll Ledger";
    begin
        if Rec.NO = '' then
            Rec.Insert(true)
        else
            Rec.Modify(true);

        Emp.Get(Rec.NO);

        EmpLedger.Reset();
        EmpLedger.SetRange("Employee No.", Emp.NO);

        if EmpLedger.FindFirst() then begin
            Message('Payroll already posted for this employee.');
            exit;
        end;

        if not Confirm(
            'Do you want to post payroll for Employee %1?',
            false,
            Emp.NO)
        then
            exit;

        PayrollPost.PostPayroll(Emp);

        Message('Payroll posted successfully.');
    end;
}


            action(OpenLedger)
            {
                ApplicationArea = All;
                Caption = 'View Ledger';
                Image = ViewDetails;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Open the employee payroll ledger entries.';

                trigger OnAction()
                var
                    EmpLedger: Record "Emp Payroll Ledger";
                begin
                    EmpLedger.Reset();
                    EmpLedger.SetRange("Employee No.", Rec.NO);
                    Page.Run(Page::"Emp Payroll Ledger Entries", EmpLedger);
                end;
            }
        }
    }
}
