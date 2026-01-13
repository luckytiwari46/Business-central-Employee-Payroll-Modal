tableextension 50001 MyExtension extends Item
{
    fields
    {
        field(50003; Lucky; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50005; Subdis; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50006; Salery; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50007; boole; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}