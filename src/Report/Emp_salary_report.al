report 60010 "Employee Master Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Employee Master Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'Employee_Master_Report.rdl';

    dataset
    {
        dataitem(Employee; Employee_Master)
        {
            RequestFilterFields = NO, Depertment, Designation;

            column(EmployeeNo; NO) { }
            column(FirstName; First_name) { }
            column(LastName; Last_name) { }
            column(Department; Depertment) { }
            column(Designation; Designation) { }

            column(Address1; Address) { }
            column(Address2; Address2) { }
            column(City; City) { }
            column(State; Format(state)) { }
            column(PostCode; "Post Code") { }
            column(CountryCode; "Country/Region Code") { }

            column(BankAccountNo; Bank_account_no) { }
            column(IFSCCode; IFSC_code) { }

            column(PANNo; Pen_no) { }
            column(AadhaarNo; Aadhar_no) { }

            column(BasicSalary; Basic_salary) { }
            column(HRA; Hra) { }
            column(TravellingAllowance; Traveling_alowance) { }
            column(OtherAllowance; "Other Allowance") { }
            column(Incentive; Incentive) { }
            column(PFAmount; "PF Amount") { }
            column(NetSalary; "Net Salary") { }
        }
        
    }

    requestpage
    {
        AboutTitle = 'Employee Master Report';
        AboutText = 'This report displays complete employee personal, address, bank and salary information.';
    }
}
