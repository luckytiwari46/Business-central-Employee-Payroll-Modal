page 60004 "Empolyee  Master List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Employee_Master;
    CardPageId = 60001 ;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(NO; Rec.NO) { 
                    ApplicationArea=all;
                }
                field(First_name;Rec.First_name){
                    ApplicationArea=all;
                }
                field(Last_name;Rec.Last_name){
                    ApplicationArea=all;
                }
                field(Depertment;Rec.Depertment){
                    ApplicationArea=all;
                }
                field(Designation;Rec.Designation){
                    ApplicationArea=all;
                }
                field(City;Rec.City){
                    ApplicationArea=all;
                }
                field(state;Rec.state){
                    ApplicationArea=all;

                }
                field(Basic_salary;Rec.Basic_salary){
                    ApplicationArea=all;

                }
                field("Net Salary";Rec."Net Salary"){
                    ApplicationArea=all;
                }
                field(Pen_no;Rec.Pen_no){
                    ApplicationArea=all;
                }
                field(Aadhar_no;Rec.Aadhar_no){
                    ApplicationArea=all;
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