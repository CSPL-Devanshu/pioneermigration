xmlport 60025 "GL Dump"
{
    Direction = Export;
    FieldDelimiter = '<None>';
    FieldSeparator = '<TAB>';
    Format = VariableText;
    UseRequestPage = false;
    schema
    {
        textelement(GLDump)
        {
            tableelement("G/L Entry"; "G/L Entry")
            {
                RequestFilterFields = "Posting Date";
                XmlName = 'GLDumpExport';
                SourceTableView = SORTING("G/L Account No.", "Posting Date")
                                  ORDER(Ascending);
                fieldelement(a; "G/L Entry"."Entry No.")
                {
                }
                fieldelement(b; "G/L Entry"."G/L Account No.")
                {
                }
                fieldelement(c; "G/L Entry"."Posting Date")
                {
                }
                fieldelement(d; "G/L Entry"."Document Type")
                {
                }
                fieldelement(e; "G/L Entry"."Document No.")
                {
                }
                fieldelement(f; "G/L Entry".Description)
                {
                }
                fieldelement(g; "G/L Entry".Amount)
                {
                }
                fieldelement(h; "G/L Entry"."Global Dimension 1 Code")
                {
                }
                fieldelement(i; "G/L Entry"."Global Dimension 2 Code")
                {
                }
                fieldelement(j; "G/L Entry"."User ID")
                {
                }
                fieldelement(k; "G/L Entry"."Debit Amount")
                {
                }
                fieldelement(l; "G/L Entry"."Credit Amount")
                {
                }
                fieldelement(m; "G/L Entry"."Document Date")
                {
                }
                fieldelement(n; "G/L Entry"."External Document No.")
                {
                }
                fieldelement(o; "G/L Entry"."Source Code")
                {
                }
                fieldelement(p; "G/L Entry"."Source Type")
                {
                }
                fieldelement(q; "G/L Entry"."Source No.")
                {
                }

                trigger OnPreXmlItem()
                begin
                    IF cdAccountNo <> '' THEN
                        "G/L Entry".SETFILTER("G/L Account No.", cdAccountNo);
                    "G/L Entry".SETRANGE("Posting Date", dtFromDate, dtToDate);
                    IF DSourceCode <> '' THEN
                        "G/L Entry".SETFILTER("G/L Entry"."Source Code", DSourceCode);
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    var
        dtFromDate: Date;
        dtToDate: Date;
        cdAccountNo: Code[1020];
        DSourceCode: Code[20];

    procedure SetDateFilter(AccountNo: Code[1020]; FromDate: Date; ToDate: Date; SourceCode: Code[20])
    begin
        cdAccountNo := AccountNo;
        dtFromDate := FromDate;
        dtToDate := ToDate;
        DSourceCode := SourceCode;
    end;
}

