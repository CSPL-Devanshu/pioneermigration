// xmlport 60000 "Upload E-Invoicing Data"
// {
//     Direction = Import;
//     FieldSeparator = '<TAB>';
//     Format = VariableText;
//     Permissions = TableData 112 = rimd,
//                   TableData 114 = rimd,
//                   TableData 124 = rimd,
//                   TableData 5744 = rimd;

//     schema
//     {
//         textelement(Root)
//         {
//             tableelement("E-Invoicing Excel Data"; "E-Invoicing Excel Data")
//             {
//                 XmlName = 'Table';
//                 textelement(a)
//                 {
//                     XmlName = 'a';
//                 }
//                 fieldelement(b; "E-Invoicing Excel Data"."IRN Code")
//                 {
//                 }
//                 fieldelement(c; "E-Invoicing Excel Data"."Acknowledgement No.")
//                 {
//                 }
//                 textelement(d)
//                 {

//                     trigger OnAfterAssignVariable()
//                     begin
//                         "E-Invoicing Excel Data"."Acknowledgment Date" := GetDateTime(d);
//                     end;
//                 }
//                 fieldelement(e; "E-Invoicing Excel Data"."Document No.")
//                 {
//                 }
//                 fieldelement(f; "E-Invoicing Excel Data"."Document Type")
//                 {
//                 }
//                 fieldelement(g; "E-Invoicing Excel Data"."Document Date")
//                 {
//                 }
//                 fieldelement(h; "E-Invoicing Excel Data"."Invoice Value")
//                 {
//                 }
//                 fieldelement(i; "E-Invoicing Excel Data"."Recipient GSTIN")
//                 {
//                 }
//                 fieldelement(j; "E-Invoicing Excel Data".Status)
//                 {
//                 }
//                 textelement(k)
//                 {
//                     XmlName = 'k';

//                     trigger OnAfterAssignVariable()
//                     begin
//                         // TempBlob.Blob := "E-Invoicing Excel Data"."Signed QR Code";
//                         // TempBlob.WriteAsText(k, TEXTENCODING::Windows);
//                         // "E-Invoicing Excel Data"."Signed QR Code" := TempBlob.Blob;
//                     end;
//                 }
//                 fieldelement(l; "E-Invoicing Excel Data"."EWB No./ERROR")
//                 {
//                 }

//                 trigger OnAfterInitRecord()
//                 begin
//                     IF FirstLine THEN BEGIN
//                         FirstLine := FALSE;
//                         currXMLport.SKIP;
//                     END;
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

//     trigger OnPostXmlPort()
//     begin
//         EInvoicingExcelData.RESET;
//         EInvoicingExcelData.SETRANGE("E-Invoice Data Update", FALSE);
//         IF EInvoicingExcelData.FINDSET THEN BEGIN
//             REPEAT
//                 EInvoicingExcelData.CALCFIELDS("Signed QR Code");
//                 SalesInvoiceHeader.RESET;
//                 SalesInvoiceHeader.SETRANGE("No.", EInvoicingExcelData."Document No.");
//                 IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
//                     SalesInvoiceHeader."IRN Hash" := EInvoicingExcelData."IRN Code";
//                     SalesInvoiceHeader."Acknowledgement No." := EInvoicingExcelData."Acknowledgement No.";
//                     SalesInvoiceHeader."Acknowledgement Date" := EInvoicingExcelData."Acknowledgment Date";
//                     IF STRLEN(EInvoicingExcelData."EWB No./ERROR") < 50 THEN
//                         SalesInvoiceHeader."E-Way Bill No." := EInvoicingExcelData."EWB No./ERROR";
//                     SalesInvoiceHeader.IsJSONImported := TRUE;
//                     SalesInvoiceHeader.MODIFY;
//                     CLEAR(Instr);
//                     CLEAR(bIGtEXTdATA);
//                     EInvoicingExcelData."Signed QR Code".CREATEINSTREAM(Instr);
//                     bIGtEXTdATA.READ(Instr);
//                     CLEAR(EInvforManualProcessSI);
//                     CLEAR(RecRef);
//                     // CLEAR(eInvoiceCreateExcelBuffer);
//                     RecRef.GETTABLE(SalesInvoiceHeader);
//                     //EInvforManualProcessSI.GenrateQRCode(FORMAT(bIGtEXTdATA),RecRef);
//                     // eInvoiceCreateExcelBuffer.GenrateQRCode(FORMAT(bIGtEXTdATA), RecRef);
//                     EInvoicingExcelData."E-Invoice Data Update" := TRUE;
//                     EInvoicingExcelData.MODIFY;
//                 END;
//                 SalesCrMemoHeader.RESET;
//                 SalesCrMemoHeader.SETRANGE("No.", EInvoicingExcelData."Document No.");
//                 IF SalesCrMemoHeader.FINDFIRST THEN BEGIN
//                     SalesCrMemoHeader."IRN Hash" := EInvoicingExcelData."IRN Code";
//                     SalesCrMemoHeader."Acknowledgement No." := EInvoicingExcelData."Acknowledgement No.";
//                     SalesCrMemoHeader."Acknowledgement Date" := EInvoicingExcelData."Acknowledgment Date";
//                     IF STRLEN(EInvoicingExcelData."EWB No./ERROR") < 50 THEN
//                         SalesCrMemoHeader."E-Way Bill No." := EInvoicingExcelData."EWB No./ERROR";
//                     SalesCrMemoHeader.IsJSONImported := TRUE;
//                     SalesCrMemoHeader.MODIFY;
//                     CLEAR(Instr);
//                     CLEAR(bIGtEXTdATA);
//                     EInvoicingExcelData."Signed QR Code".CREATEINSTREAM(Instr);
//                     bIGtEXTdATA.READ(Instr);
//                     CLEAR(EInvforManualProcessSCM);
//                     CLEAR(RecRef);
//                     // CLEAR(eInvoiceCreateExcelBuffer);
//                     RecRef.GETTABLE(SalesCrMemoHeader);
//                     //EInvforManualProcessSI.GenrateQRCode(FORMAT(bIGtEXTdATA),RecRef);
//                     // eInvoiceCreateExcelBuffer.GenrateQRCode(FORMAT(bIGtEXTdATA), RecRef);
//                     EInvoicingExcelData."E-Invoice Data Update" := TRUE;
//                     EInvoicingExcelData.MODIFY;
//                 END;
//                 TransferShipmentHeader.RESET;
//                 TransferShipmentHeader.SETRANGE("No.", EInvoicingExcelData."Document No.");
//                 IF TransferShipmentHeader.FINDFIRST THEN BEGIN
//                     TransferShipmentHeader."IRN Hash1" := EInvoicingExcelData."IRN Code";
//                     TransferShipmentHeader."Acknowledgement No.1" := EInvoicingExcelData."Acknowledgement No.";
//                     TransferShipmentHeader."Acknowledgement Date1" := EInvoicingExcelData."Acknowledgment Date";
//                     TransferShipmentHeader.IsJSONImported1 := TRUE;
//                     TransferShipmentHeader.MODIFY;
//                     CLEAR(Instr);
//                     CLEAR(bIGtEXTdATA);
//                     EInvoicingExcelData."Signed QR Code".CREATEINSTREAM(Instr);
//                     bIGtEXTdATA.READ(Instr);
//                     CLEAR(EInvforManualProcessTSH);
//                     CLEAR(RecRef);
//                     // CLEAR(eInvoiceCreateExcelBuffer);
//                     RecRef.GETTABLE(TransferShipmentHeader);
//                     //EInvforManualProcessSI.GenrateQRCode(FORMAT(bIGtEXTdATA),RecRef);
//                     // eInvoiceCreateExcelBuffer.GenrateQRCoderTransfer(FORMAT(bIGtEXTdATA), RecRef);
//                     EInvoicingExcelData."E-Invoice Data Update" := TRUE;
//                     EInvoicingExcelData.MODIFY;
//                 END;
//             UNTIL EInvoicingExcelData.NEXT = 0;
//         END;
//         MESSAGE('E-Invoice Data Import Successfully.');
//     end;

//     trigger OnPreXmlPort()
//     begin
//         FirstLine := TRUE;
//     end;

//     var
//         EInvoicingExcelData: Record "E-Invoicing Excel Data";
//         SalesInvoiceHeader: Record 112;
//         bIGtEXTdATA: BigText;
//         Instr: InStream;
//         RecRef: RecordRef;
//         FirstLine: Boolean;
//         //TempBlob: Record 99008535 temporary;
//         SalesCrMemoHeader: Record 114;
//         TransferShipmentHeader: Record 5744;
//         EInvforManualProcessSI: Report 50094;
//         EInvforManualProcessSCM: Report 50069;
//         EInvforManualProcessTSH: Report 50083;
//     //eInvoiceCreateExcelBuffer: Codeunit 16511;

//     local procedure GetDateTime(CellValue: Text): DateTime
//     var
//         Year: Integer;
//         Month: Integer;
//         Day: Integer;
//         TheTime: Time;
//     begin
//         CellValue := DELCHR(CellValue, '=', '-');
//         EVALUATE(Year, COPYSTR(CellValue, 1, 4));
//         CellValue := DELSTR(CellValue, 1, 4);
//         EVALUATE(Month, COPYSTR(CellValue, 1, 2));
//         CellValue := DELSTR(CellValue, 1, 2);
//         EVALUATE(Day, COPYSTR(CellValue, 1, 2));
//         CellValue := DELSTR(CellValue, 1, 3);
//         EVALUATE(TheTime, COPYSTR(CellValue, 1, STRLEN(CellValue)));

//         EXIT(CREATEDATETIME(DMY2DATE(Day, Month, Year), TheTime));
//     end;
// }

