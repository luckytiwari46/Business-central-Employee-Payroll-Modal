page 60003 "Employee Setup "
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee_setup;

    layout
    {
        area(Content)
        {
            group("Employee Setup")
            {
                field(Emp_no; Rec.Emp_no)
                {
                    TableRelation = "No. Series";
                }
                field("Payroll Journal Template"; Rec."Payroll Journal Template")
                {
                    TableRelation = "Gen. Journal Template" ;

                }
                field("Payroll Expense Account";Rec."Payroll Expense Account"){}
                // field("Payroll Expence Account"; Rec."Payroll Expence Account")
                // {
                //     // TableRelation = "G/L Account"."No.";
                // }
                field("Payroll Journal Batch"; Rec."Payroll Journal Batch")
                {
                    TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Payroll Journal Template"));
                }

                field("Salary Payable Account"; Rec."Salary Payable Account")
                {
                    TableRelation = "G/L Account"."No.";

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}