pageextension 50001 MyExtension extends "Item Card"
{
    layout
    {
        addafter(Type)
        {
            field(Lucky; Rec.Lucky)
            {
                ApplicationArea = All;
            }
        }

        addafter(Description)
        {
            field(Subdis; Rec.Subdis)
            {
                ApplicationArea = all;
            }
        }
        addbefore(Description)
        {
            field(Salery; Rec.Salery)
            {
                ApplicationArea = all;
            }

        }
        addbefore(Blocked)
        {
            field(boole; Rec.boole)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}