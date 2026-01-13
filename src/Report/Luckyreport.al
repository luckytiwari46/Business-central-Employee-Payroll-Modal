report 50001 "Lucky Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'lucky.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }
            column(Pay_to_Name; "Pay-to Name")
            {

            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemTableView = sorting("No.", Type);
                DataItemLink = "Document No." = field("No.");
                column(No_1; "No.") { }
                column(Description; Description) { }
            }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }



    var
        myInt: Integer;
}