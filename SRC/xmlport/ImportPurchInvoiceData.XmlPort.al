// xmlport 60001 "Import Purch. Invoice Data"
// {
//     Direction = Import;
//     Format = VariableText;

//     schema
//     {
//         textelement(Root)
//         {
//             tableelement("Purchase Invoice  Details"; "Purchase Invoice  Details")
//             {
//                 XmlName = 'BillDetails';
//                 fieldelement(No; "Purchase Invoice  Details"."No.")
//                 {
//                 }
//                 fieldelement(PostingDate; "Purchase Invoice  Details"."Posting Date")
//                 {
//                 }
//                 fieldelement(VendorNo; "Purchase Invoice  Details"."Vendor No.")
//                 {
//                 }
//                 fieldelement("VendorInvoiceNo."; "Purchase Invoice  Details"."Vendor Invoice No.")
//                 {
//                 }
//                 fieldelement(DocumentDate; "Purchase Invoice  Details"."Document Date")
//                 {
//                 }
//                 fieldelement(LocationCode; "Purchase Invoice  Details"."Location Code")
//                 {
//                 }
//                 fieldelement(LQuantity; "Purchase Invoice  Details".Quantity)
//                 {
//                 }
//                 fieldelement(UnitPrice; "Purchase Invoice  Details"."Direct Unit Cost")
//                 {
//                 }
//                 fieldelement(GSTGroupCode; "Purchase Invoice  Details"."GST Group Code")
//                 {
//                 }
//                 fieldelement(HSN_HSC; "Purchase Invoice  Details"."HSN/SAC")
//                 {
//                 }
//                 fieldelement(Narration; "Purchase Invoice  Details".Narration)
//                 {
//                 }
//                 fieldelement(ProjectCode; "Purchase Invoice  Details"."Shortcut Dimension 7 Code")
//                 {
//                 }
//                 fieldelement(Divisioncode; "Purchase Invoice  Details"."Shortcut Dimension 3 Code")
//                 {
//                 }
//                 fieldelement(Employeecode; "Purchase Invoice  Details"."Shortcut Dimension 4 Code")
//                 {
//                 }
//                 fieldelement(AssSourcetype; "Purchase Invoice  Details"."Assg. Source Type")
//                 {
//                 }
//                 fieldelement(AssSourceNo; "Purchase Invoice  Details"."Assg. Source No.")
//                 {
//                 }
//                 fieldelement(GSTCredit; "Purchase Invoice  Details"."GST Credit")
//                 {
//                 }
//                 fieldelement(Structure; "Purchase Invoice  Details".Structure)
//                 {
//                 }
//                 fieldelement(LType; "Purchase Invoice  Details".Type)
//                 {
//                 }
//                 fieldelement(GenProdPostingGrp; "Purchase Invoice  Details"."Gen. Prod. Posting Group")
//                 {
//                 }
//                 fieldelement(TDSNatureofded; "Purchase Invoice  Details"."TDS Nature Of Deduction")
//                 {
//                 }
//                 fieldelement(ActApplicable; "Purchase Invoice  Details"."Act Applicable 1")
//                 {
//                 }
//                 fieldelement(GSTReverse; "Purchase Invoice  Details"."GST Reverse")
//                 {
//                 }
//                 fieldelement(Businesssegment; "Purchase Invoice  Details"."Shortcut Dimension 1 Code")
//                 {
//                 }

//                 trigger OnAfterInitRecord()
//                 begin
//                     CountVar := CountVar + 1;
//                     IF (CountVar = 1) THEN
//                         currXMLport.SKIP;

//                     "Purchase Invoice  Details".RESET;
//                     IF "Purchase Invoice  Details".FINDLAST THEN
//                         EntryNo := "Purchase Invoice  Details"."Entry No." + 1
//                     ELSE
//                         EntryNo := 1;

//                     "Purchase Invoice  Details"."Entry No." := EntryNo;
//                     "Purchase Invoice  Details".Picked := FALSE;
//                 end;

//                 trigger OnBeforeInsertRecord()
//                 begin
//                     VendLedgEntry.RESET;
//                     VendLedgEntry.SETCURRENTKEY("External Document No.");
//                     VendLedgEntry.SETRANGE("Document Type", VendLedgEntry."Document Type"::Invoice);
//                     VendLedgEntry.SETRANGE("External Document No.", "Purchase Invoice  Details"."Vendor Invoice No.");
//                     VendLedgEntry.SETRANGE("Vendor No.", "Purchase Invoice  Details"."Vendor No.");
//                     VendLedgEntry.SETRANGE(Reversed, FALSE);
//                     IF VendLedgEntry.FINDFIRST THEN
//                         ERROR(
//                           Text001,
//                           "Purchase Invoice  Details"."Vendor Invoice No.", "Purchase Invoice  Details"."Vendor No.");
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
//         MESSAGE('Details Uploaded Successfully!');
//     end;

//     var
//         EntryNo: Integer;
//         CaptionRow: Boolean;
//         CountVar: Integer;
//         CaptionRow2: Boolean;
//         Text001: Label 'Vendor Invoice No. %1 already exists for the vendor %2';
//         VendLedgEntry: Record 25;
// }

