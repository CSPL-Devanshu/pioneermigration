// xmlport 60026 "GL Dump TDS"
// {
//     Direction = Export;
//     FieldDelimiter = '<None>';
//     FieldSeparator = '<TAB>';
//     Format = VariableText;
//     UseRequestPage = false;

//     schema
//     {
//         textelement(GLDump)
//         {
//             tableelement(Integer; Integer)
//             {
//                 XmlName = 'ContractHeader';
//                 SourceTableView = WHERE(Number = CONST(1));
//                 textelement(entryname)
//                 {
//                     XmlName = 'a';
//                 }
//                 textelement(postingname)
//                 {
//                     XmlName = 'b';
//                 }
//                 textelement(documenttypename)
//                 {
//                     XmlName = 'c';
//                 }
//                 textelement(documentnoname)
//                 {
//                     XmlName = 'd';
//                 }
//                 textelement(glaccountnoname)
//                 {
//                     XmlName = 'e';
//                 }
//                 textelement(glname)
//                 {
//                     XmlName = 'f';
//                 }
//                 textelement(ddatename)
//                 {
//                     XmlName = 'g';
//                 }
//                 textelement(edname)
//                 {
//                     XmlName = 'h';
//                 }
//                 textelement(sourcetypename)
//                 {
//                     XmlName = 'i';
//                 }
//                 textelement(sourcenoname)
//                 {
//                     XmlName = 'J';
//                 }
//                 textelement(sourcenamename)
//                 {
//                     XmlName = 'k';
//                 }
//                 textelement(pannoname)
//                 {
//                     XmlName = 'l';
//                 }
//                 textelement(tdsnatofdename)
//                 {
//                     XmlName = 'm';
//                 }
//                 textelement(tdsbaseamountname)
//                 {
//                     XmlName = 'n';
//                 }
//                 textelement(tdspecenname)
//                 {
//                     XmlName = 'o';
//                 }
//                 textelement(debitamountname)
//                 {
//                     XmlName = 'p';
//                 }
//                 textelement(creditamountname)
//                 {
//                     XmlName = 'q';
//                 }
//                 textelement(amountname)
//                 {
//                     XmlName = 'r';
//                 }
//                 textelement(locationcodename)
//                 {
//                     XmlName = 's';
//                 }
//                 textelement(useridname)
//                 {
//                     XmlName = 't';
//                 }
//                 textelement(narrationname)
//                 {
//                     XmlName = 'Narration';
//                 }

//                 trigger OnAfterGetRecord()
//                 begin
//                     Entryname := 'Entry No.';
//                     PostingName := 'Posting Date';
//                     DocumentTypeName := 'Document Type';
//                     DocumentNoName := 'Document No.';
//                     GLAccountNoName := 'GL Account No.';
//                     GLName := 'GL Account Name';
//                     DDateName := 'Document Date';
//                     EDName := 'External Document No.';
//                     SourceTypeName := 'Source Type';
//                     SourceNoName := 'Source No.';
//                     SourceNameName := 'Source Name';
//                     PanNoName := 'PAN No.';
//                     TdsNatofDeName := 'TDS Section';
//                     TdsBaseAmountNAme := 'TDS Base Amount';
//                     TdsPecenName := 'TDS %';
//                     DebitAmountName := 'Debit Amount';
//                     CreditAmountName := 'Credit Amount';
//                     AmountName := 'Amount';
//                     LocationCodeName := 'Location Code';
//                     UserIDName := 'User ID';
//                     NarrationName := 'Narration';

//                 end;
//             }
//             tableelement("G/L Entry"; "G/L Entry")
//             {
//                 RequestFilterFields = "Posting Date";
//                 XmlName = 'GLDumpExport';
//                 SourceTableView = SORTING("G/L Account No.", "Posting Date")
//                                   ORDER(Ascending);
//                 fieldelement(a; "G/L Entry"."Entry No.")
//                 {
//                 }
//                 fieldelement(b; "G/L Entry"."Posting Date")
//                 {
//                 }
//                 fieldelement(c; "G/L Entry"."Document Type")
//                 {
//                 }
//                 fieldelement(d; "G/L Entry"."Document No.")
//                 {
//                 }
//                 fieldelement(e; "G/L Entry"."G/L Account No.")
//                 {
//                 }
//                 fieldelement(f; "G/L Entry"."G/L Account Name")
//                 {
//                 }
//                 fieldelement(g; "G/L Entry"."Document Date")
//                 {
//                 }
//                 fieldelement(h; "G/L Entry"."External Document No.")
//                 {
//                 }
//                 textelement(sourcetype)
//                 {
//                     XmlName = 'i';
//                 }
//                 textelement(sourceno)
//                 {
//                     XmlName = 'J';
//                 }
//                 textelement(sourcename)
//                 {
//                     XmlName = 'k';
//                 }
//                 textelement(panno)
//                 {
//                     XmlName = 'l';
//                 }
//                 textelement(tdsnatofde)
//                 {
//                     XmlName = 'm';
//                 }
//                 textelement(tdsbaseamount)
//                 {
//                     XmlName = 'n';
//                 }
//                 textelement(tdspecen)
//                 {
//                     XmlName = 'o';
//                 }
//                 fieldelement(p; "G/L Entry"."Debit Amount")
//                 {
//                 }
//                 fieldelement(q; "G/L Entry"."Credit Amount")
//                 {
//                 }
//                 fieldelement(r; "G/L Entry".Amount)
//                 {
//                 }
//                 textelement(locationcode)
//                 {
//                     XmlName = 's';
//                 }
//                 fieldelement(t; "G/L Entry"."User ID")
//                 {
//                 }
//                 textelement(narration)
//                 {
//                     XmlName = 'u';
//                 }

//                 trigger OnAfterGetRecord()
//                 begin
//                     SourceType := '';
//                     SourceNo := '';
//                     PanNo := '';
//                     TdsNatofDe := '';
//                     TdsPecen := '';
//                     TdsBaseAmount := '';
//                     SourceName := '';
//                     TDSEntry.RESET;
//                     TDSEntry.SETRANGE(TDSEntry."Document No.", "G/L Entry"."Document No.");
//                     TDSEntry.SETRANGE(TDSEntry."Posting Date", "G/L Entry"."Posting Date");
//                     TDSEntry.SETRANGE(TDSEntry."Transaction No.", "G/L Entry"."Transaction No.");
//                     IF TDSEntry.FIND('-') THEN BEGIN
//                         SourceType := FORMAT(TDSEntry."Party Type");
//                         SourceNo := TDSEntry."Party Code";
//                         IF VRec.GET(TDSEntry."Party Code") THEN;
//                         SourceName := VRec.Name;
//                         PanNo := TDSEntry."Party P.A.N. No.";
//                         TdsNatofDe := FORMAT(TDSEntry.Section);
//                         TdsPecen := FORMAT(TDSEntry."TDS %");
//                         TdsBaseAmount := FORMAT(TDSEntry."TDS Base Amount");
//                     END ELSE BEGIN
//                         IF "G/L Entry"."Source Type" = "G/L Entry"."Source Type"::Vendor THEN BEGIN
//                             VLERec.RESET;
//                             VLERec.SETRANGE(VLERec."Document No.", "G/L Entry"."Document No.");
//                             VLERec.SETRANGE(VLERec."Posting Date", "G/L Entry"."Posting Date");
//                             VLERec.SETRANGE(VLERec."Transaction No.", "G/L Entry"."Transaction No.");
//                             IF VLERec.FIND('-') THEN BEGIN


//                                 IF VRec.GET(VLERec."Vendor No.") THEN;
//                                 SourceType := FORMAT("G/L Entry"."Source Type");
//                                 SourceNo := "G/L Entry"."Source No.";
//                                 SourceName := VRec.Name;
//                                 PanNo := VRec."P.A.N. No.";
//                             END;
//                         END ELSE BEGIN

//                             IF "G/L Entry"."Source Type" = "G/L Entry"."Source Type"::Customer THEN BEGIN
//                                 IF CRec.GET("G/L Entry"."Source No.") THEN;
//                                 SourceType := FORMAT("G/L Entry"."Source Type");
//                                 SourceNo := "G/L Entry"."Source No.";
//                                 SourceName := CRec.Name;
//                                 PanNo := CRec."P.A.N. No.";
//                             END ELSE BEGIN

//                                 IF "G/L Entry"."Source Type" = "G/L Entry"."Source Type"::"Bank Account" THEN BEGIN
//                                     IF BRec.GET("G/L Entry"."Source No.") THEN;
//                                     SourceType := FORMAT("G/L Entry"."Source Type");
//                                     SourceNo := "G/L Entry"."Source No.";
//                                     SourceName := BRec.Name;
//                                     //PanNo:=CRec."P.A.N. No.";
//                                 END ELSE BEGIN

//                                     IF "G/L Entry"."Source Type" = "G/L Entry"."Source Type"::"Fixed Asset" THEN BEGIN
//                                         IF FRec.GET("G/L Entry"."Source No.") THEN;
//                                         SourceType := FORMAT("G/L Entry"."Source Type");
//                                         SourceNo := "G/L Entry"."Source No.";
//                                         SourceName := FRec.Description;
//                                         //PanNo:=CRec."P.A.N. No.";
//                                     END;
//                                 END;
//                             END;
//                         END;
//                     END;


//                     Narration := '';
//                     LocationCode := '';
//                     PurchaseCommentRec.RESET;
//                     //PurchaseCommentRec.SETFILTER(PurchaseCommentRec."Document Type",'%1',PurchaseCommentRec."Document Type"::"Posted Invoice");
//                     PurchaseCommentRec.SETRANGE(PurchaseCommentRec."Document No.", "G/L Entry"."Document No.");
//                     IF PurchaseCommentRec.FIND('-') THEN BEGIN

//                         //Narration := 'Narration :-';
//                         REPEAT
//                             IF PurchaseCommentRec."Location Code" <> '' THEN
//                                 LocationCode := PurchaseCommentRec."Location Code";
//                             IF PurchaseCommentRec.Comments <> '' THEN BEGIN
//                                 IF STRLEN(Narration) + STRLEN(PurchaseCommentRec.Comments + ' ') < 1024 THEN
//                                     Narration += PurchaseCommentRec.Comments + ' ';
//                             END;
//                         UNTIL PurchaseCommentRec.NEXT = 0;
//                     END ELSE BEGIN
//                         PostedNarration.RESET;
//                         PostedNarration.SETRANGE(PostedNarration."Document No.", "G/L Entry"."Document No.");
//                         PostedNarration.SETRANGE(PostedNarration."Posting Date", "G/L Entry"."Posting Date");
//                         PostedNarration.SETRANGE(PostedNarration."Transaction No.", "G/L Entry"."Transaction No.");
//                         IF PostedNarration.FIND('-') THEN BEGIN
//                             Narration := 'Narration :-';
//                             REPEAT

//                                 IF STRLEN(Narration) + STRLEN(PostedNarration.Narration + ' ') < 1024 THEN
//                                     Narration += PostedNarration.Narration + ' ';
//                             UNTIL PostedNarration.NEXT = 0;
//                         END;
//                     END;
//                 end;

//                 trigger OnPreXmlItem()
//                 begin
//                     IF cdAccountNo <> '' THEN
//                         "G/L Entry".SETFILTER("G/L Account No.", cdAccountNo);
//                     "G/L Entry".SETRANGE("Posting Date", dtFromDate, dtToDate);
//                     IF DSourceCode <> '' THEN
//                         "G/L Entry".SETFILTER("G/L Entry"."Source Code", DSourceCode);
//                 end;
//             }
//         }
//     }

//     requestpage
//     {

//         layout
//         {
//         }

//         actions
//         {
//         }
//     }

//     var
//         dtFromDate: Date;
//         dtToDate: Date;
//         cdAccountNo: Code[1020];
//         DSourceCode: Code[20];
//         VLERec: Record 25;
//         TDSEntry: Record "TDS Entry";
//         VRec: Record 23;
//         PurchaseCommentRec: Record 123;
//         PostedNarration: Record "Posted Narration";
//         CRec: Record 23;
//         BRec: Record 270;
//         FRec: Record 5600;


//     procedure SetDateFilter(AccountNo: Code[1020]; FromDate: Date; ToDate: Date; SourceCode: Code[20])
//     begin
//         cdAccountNo := AccountNo;
//         dtFromDate := FromDate;
//         dtToDate := ToDate;
//         DSourceCode := SourceCode;
//     end;
// }

