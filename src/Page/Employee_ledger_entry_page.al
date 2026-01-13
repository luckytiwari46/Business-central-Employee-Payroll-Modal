page 60051 "Emp Payroll Ledger Entries"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Emp Payroll Ledger";
    UsageCategory = Lists;
    Caption = 'Employee Payroll Ledger';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.") { 
                    ApplicationArea = All;
                    
                    }
                field("Employee No."; Rec."Employee No.") { 
                    ApplicationArea = All;
                    
                    }
                field("First Name"; Rec."First Name") { 
                    ApplicationArea = All;
                    
                    }
                field("Last Name"; Rec."Last Name") { 
                    ApplicationArea = All;
                    
                    }
                field("Posting Date"; Rec."Posting Date") { 
                    ApplicationArea = All;
                    
                    }
                field("Salary Month"; Rec."Salary Month") { 
                    ApplicationArea = All;
                    
                    }
                field("Gross Salary"; Rec."Gross Salary") { 
                    ApplicationArea = All;
                    
                    }
                field("Net Salary"; Rec."Net Salary") { 
                    ApplicationArea = All;
                    
                    }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PrintReport)
            {
                Caption = 'Print Employee Report';
                Image = Print;
                Promoted = true;
                PromotedCategory = Report;
                ApplicationArea = All;

                trigger OnAction()
                var
                    Emp: Record Employee_Master;
                begin
                    Emp.SetRange(NO, Rec."Employee No.");
                    Report.RunModal(60010, true, true, Emp);
                end;
            }
        }
    }
}
