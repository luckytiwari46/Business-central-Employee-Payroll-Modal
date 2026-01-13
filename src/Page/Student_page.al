page 50010 Student_Page
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student_Table;
    CardPageId = 50011;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Rollno; Rec.Rollno)
                {
                    Caption = 'Enter Roll number';
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Enter Name';

                    ApplicationArea = all;
                }
                field(Class; Rec.Class)
                {
                    Caption = 'Enter Class';

                    ApplicationArea = all;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Enter Address';

                    ApplicationArea = all;
                }
                field(City; Rec.City)
                {
                    Caption = 'Enter City';

                    ApplicationArea = all;
                }
                field(Mobile_no; Rec.Mobile_no)
                {
                    Caption = 'Enter Mobile_no';

                    ApplicationArea = all;
                }
                field(Pin_Code; Rec.Pin_Code)
                {
                    Caption = 'Enter Pin_Code';

                    ApplicationArea = all;
                }
                field(Fater_Name; Rec.Fater_Name)
                {
                    Caption = 'Enter Fater_Name';

                    ApplicationArea = all;
                }
                field(Mother_name; Rec.Mother_name)
                {
                    Caption = 'Enter Mother_name';

                    ApplicationArea = all;
                }
                field(Adhar_number; Rec.Adhar_number)
                {
                    Caption = 'Enter Adhar_number';

                    ApplicationArea = all;
                }
                field(Pen_Number; Rec.Pen_Number)
                {
                    Caption = 'Enter Pen_Number';

                    ApplicationArea = all;
                }
                field(state; Rec.state)
                {
                    Caption = 'Enter state';

                    ApplicationArea = all;
                }
                field(Gender; Rec.Gender)
                {
                    Caption = 'Enter Gender';

                    ApplicationArea = all;
                }
                field(Height_IN_CM; Rec.Height_IN_CM)
                {
                    Caption = 'Enter Height_IN_CM';

                    ApplicationArea = all;
                }
                field(Weight_IN_KG; Rec.Weight_IN_KG)
                {
                    Caption = 'Enter Weight_IN_KG';

                    ApplicationArea = all;
                }
                field(Disability; Rec.Disability)
                {
                    Caption = 'Enter Disability';

                    ApplicationArea = all;
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