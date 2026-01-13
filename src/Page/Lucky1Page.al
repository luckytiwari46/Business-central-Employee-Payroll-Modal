page 50001 Text_page1
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Test_Table;

    layout
    {

        area(Content)
        {

            group(GroupName)
            {

                field(Roll_; Rec.Entry_No)
                {
                    Caption = 'Entry  Roll number';
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Enter Name';
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