page 50002 Test_page
{
    PageType = List; //Card
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Test_Table;
    // CardPageId=Card_Page;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Entry_No; Rec.Entry_No)
                {
                    Caption = 'Entry No';
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'name ';

                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Messaage)
            {

                trigger OnAction()
                begin
                    Message('Hello  from Lucky Page');
                end;
            }
        }
    }

    var
        myInt: Integer;
}