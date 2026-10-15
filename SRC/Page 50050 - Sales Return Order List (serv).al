page 60050 "Sales Return Order List (serv)"
{
    // version Service Sales

    CaptionML = ENU = 'Sales Return Order List (serv)',
                ENN = 'Sales Return Order List (serv)';
    // CardPageID = "Sales Invoice List (Serv)";
    Editable = false;
    PageType = List;
    SourceTable = "Sales Header";
    // SourceTableView = WHERE("Document Type" = CONST("Return Order"),
    //                         "Order Type" = CONST("Service Order"));

    ApplicationArea = all;
    UsageCategory = Lists;
    // layout
    // {
    //     area(content)
    //     {
    //         repeater(Group)
    //         {
    //             field("No."; Rec."No.")
    //             {
    //             }
    //             field("Sell-to Customer No."; Rec."Sell-to Customer No.")
    //             {
    //             }
    //             field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
    //             {
    //             }
    //             field("External Document No."; Rec."External Document No.")
    //             {
    //             }
    //             field("Sell-to Post Code"; Rec."Sell-to Post Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Sell-to Contact"; Rec."Sell-to Contact")
    //             {
    //                 Visible = false;
    //             }
    //             field("Bill-to Customer No."; Rec."Bill-to Customer No.")
    //             {
    //                 Visible = false;
    //             }
    //             field("Bill-to Name"; Rec."Bill-to Name")
    //             {
    //                 Visible = false;
    //             }
    //             field("Bill-to Post Code"; Rec."Bill-to Post Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Bill-to Contact"; Rec."Bill-to Contact")
    //             {
    //                 Visible = false;
    //             }
    //             field("Ship-to Code"; Rec."Ship-to Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Ship-to Name"; Rec."Ship-to Name")
    //             {
    //                 Visible = false;
    //             }
    //             field("Ship-to Post Code"; Rec."Ship-to Post Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Ship-to Contact"; Rec."Ship-to Contact")
    //             {
    //                 Visible = false;
    //             }
    //             field("Posting Date"; Rec."Posting Date")
    //             {
    //                 Visible = false;
    //             }
    //             field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Location Code"; Rec."Location Code")
    //             {
    //                 Visible = true;
    //             }
    //             field("Salesperson Code"; Rec."Salesperson Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Assigned User ID"; Rec."Assigned User ID")
    //             {
    //             }
    //             field("Currency Code"; Rec."Currency Code")
    //             {
    //                 Visible = false;
    //             }
    //             field("Document Date"; Rec."Document Date")
    //             {
    //                 Visible = false;
    //             }
    //             field("Campaign No."; Rec."Campaign No.")
    //             {
    //                 Visible = false;
    //             }
    //             field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
    //             {
    //                 Visible = false;
    //             }
    //             field("Shipment Date"; Rec."Shipment Date")
    //             {
    //                 Visible = false;
    //             }
    //             field("Job Queue Status"; Rec."Job Queue Status")
    //             {
    //                 Visible = JobQueueActive;
    //             }
    //         }
    //     }
    //     area(factboxes)
    //     {
    //         part("Customer Statistics FactBox"; "Customer Statistics FactBox")
    //         {
    //             SubPageLink = "No." = FIELD("Bill-to Customer No."),
    //                           "Date Filter" = FIELD("Date Filter");
    //             Visible = true;
    //         }
    //         part("Customer Details FactBox"; "Customer Details FactBox")
    //         {
    //             SubPageLink = "No." = FIELD("Bill-to Customer No."),
    //                           "Date Filter" = FIELD("Date Filter");
    //             Visible = true;
    //         }
    //         systempart(Links; Links)
    //         {
    //             Visible = false;
    //         }
    //         systempart(Notes; Notes)
    //         {
    //             Visible = false;
    //         }
    //     }
    // }

    // actions
    // {
    //     area(navigation)
    //     {
    //         group("&Return Order")
    //         {
    //             CaptionML = ENU = '&Return Order',
    //                         ENN = '&Return Order';
    //             Image = Return;
    //             action(Statistics)
    //             {
    //                 CaptionML = ENU = 'Statistics',
    //                             ENN = 'Statistics';
    //                 Image = Statistics;
    //                 Promoted = true;
    //                 PromotedCategory = Process;
    //                 PromotedIsBig = true;
    //                 ShortCutKey = 'F7';

    //                 trigger OnAction();
    //                 begin
    //                     // Rec.OpenSalesOrderStatistics;
    //                 end;
    //             }
    //             action(Dimensions)
    //             {
    //                 AccessByPermission = TableData Dimension = R;
    //                 CaptionML = ENU = 'Dimensions',
    //                             ENN = 'Dimensions';
    //                 Image = Dimensions;
    //                 Promoted = false;
    //                 //The property __MASK_9__ can only be set if the property __MASK_10__ is set to __MASK_11__
    //                 //PromotedIsBig = false;
    //                 ShortCutKey = 'Shift+Ctrl+D';

    //                 trigger OnAction();
    //                 begin
    //                     Rec.ShowDocDim;
    //                 end;
    //             }
    //             action(Approvals)
    //             {
    //                 CaptionML = ENU = 'Approvals',
    //                             ENN = 'Approvals';
    //                 Image = Approvals;
    //                 Promoted = false;
    //                 //The property __MASK_15__ can only be set if the property __MASK_16__ is set to __MASK_17__
    //                 //PromotedIsBig = false;

    //                 // trigger OnAction();
    //                 // var
    //                 //     ApprovalEntries: Page "Approval Entries";
    //                 // begin
    //                 //     ApprovalEntries.Setfilters(DATABASE::"Sales Header", Rec."Document Type", Rec."No.");
    //                 //     ApprovalEntries.RUN;
    //                 // end;
    //                 trigger OnAction()
    //                 var
    //                     ApprovalEntries: Page "Approval Entries";
    //                     ApprovalEntry: Record "Approval Entry";
    //                 begin
    //                     ApprovalEntry.SetRange("Table ID", Database::"Sales Header");
    //                     ApprovalEntry.SetRange("Document Type", Rec."Document Type");
    //                     ApprovalEntry.SetRange("Document No.", Rec."No.");

    //                     ApprovalEntries.SetTableView(ApprovalEntry);
    //                     ApprovalEntries.Run();
    //                 end;
    //             }
    //             action("Co&mments")
    //             {
    //                 CaptionML = ENU = 'Co&mments',
    //                             ENN = 'Co&mments';
    //                 Image = ViewComments;
    //                 Promoted = false;
    //                 //The property __MASK_20__ can only be set if the property __MASK_21__ is set to __MASK_22__
    //                 //PromotedIsBig = false;
    //                 RunObject = Page "Sales Comment Sheet";
    //                 RunPageLink = "Document Type" = CONST("Return Order"),
    //                               "No." = FIELD("No."),
    //                               "Document Line No." = CONST(0);
    //             }
    //         }
    //         group(Documents)
    //         {
    //             CaptionML = ENU = 'Documents',
    //                         ENN = 'Documents';
    //             Image = Documents;
    //             action("Return Receipts")
    //             {
    //                 CaptionML = ENU = 'Return Receipts',
    //                             ENN = 'Return Receipts';
    //                 Image = ReturnReceipt;
    //                 RunObject = Page "Posted Return Receipts";
    //                 RunPageLink = "Return Order No." = FIELD("No.");
    //                 RunPageView = SORTING("Return Order No.");
    //             }
    //             action("Cred&it Memos")
    //             {
    //                 CaptionML = ENU = 'Cred&it Memos',
    //                             ENN = 'Cred&it Memos';
    //                 Image = CreditMemo;
    //                 RunObject = Page "Posted Sales Credit Memos";
    //                 RunPageLink = "Return Order No." = FIELD("No.");
    //                 RunPageView = SORTING("Return Order No.");
    //             }
    //         }
    //         group(Warehouse)
    //         {
    //             CaptionML = ENU = 'Warehouse',
    //                         ENN = 'Warehouse';
    //             Image = Warehouse;
    //             action("In&vt. Put-away/Pick Lines")
    //             {
    //                 CaptionML = ENU = 'In&vt. Put-away/Pick Lines',
    //                             ENN = 'In&vt. Put-away/Pick Lines';
    //                 Image = PickLines;
    //                 RunObject = Page "Warehouse Activity List";
    //                 RunPageLink = "Source Document" = CONST("Sales Return Order"),
    //                               "Source No." = FIELD("No.");
    //                 RunPageView = SORTING("Source Document", "Source No.", "Location Code");
    //             }
    //             action("Whse. Receipt Lines")
    //             {
    //                 CaptionML = ENU = 'Whse. Receipt Lines',
    //                             ENN = 'Whse. Receipt Lines';
    //                 Image = ReceiptLines;
    //                 RunObject = Page "Whse. Receipt Lines";
    //                 // RunPageLink = "Source Type" = CONST(37),
    //                 //               "Source Subtype" = FIELD("Document Type"),
    //                 //               "Source No." = FIELD("No.");
    //                 RunPageView = SORTING("Source Type", "Source Subtype", "Source No.", "Source Line No.");
    //             }
    //         }
    //     }
    //     area(processing)
    //     {
    //         action("&Print")
    //         {
    //             CaptionML = ENU = '&Print',
    //                         ENN = '&Print';
    //             Ellipsis = true;
    //             Image = Print;
    //             Promoted = true;
    //             PromotedCategory = Process;

    //             trigger OnAction();
    //             begin
    //                 DocPrint.PrintSalesHeader(Rec);
    //             end;
    //         }
    //         group(Release1)
    //         {
    //             CaptionML = ENU = 'Release',
    //                         ENN = 'Release';
    //             Image = ReleaseDoc;
    //             action(Release)
    //             {
    //                 CaptionML = ENU = 'Re&lease',
    //                             ENN = 'Re&lease';
    //                 Image = ReleaseDoc;
    //                 ShortCutKey = 'Ctrl+F9';

    //                 trigger OnAction();
    //                 var
    //                     ReleaseSalesDoc: Codeunit "Release Sales Document";
    //                 begin
    //                     ReleaseSalesDoc.PerformManualRelease(Rec);
    //                 end;
    //             }
    //             action(Reopen)
    //             {
    //                 CaptionML = ENU = 'Re&open',
    //                             ENN = 'Re&open';
    //                 Image = ReOpen;

    //                 trigger OnAction();
    //                 var
    //                     ReleaseSalesDoc: Codeunit "Release Sales Document";
    //                 begin
    //                     ReleaseSalesDoc.PerformManualReopen(Rec);
    //                 end;
    //             }
    //         }
    //         group("F&unctions")
    //         {
    //             CaptionML = ENU = 'F&unctions',
    //                         ENN = 'F&unctions';
    //             Image = "Action";
    //             action("Get Posted Doc&ument Lines to Reverse")
    //             {
    //                 CaptionML = ENU = 'Get Posted Doc&ument Lines to Reverse',
    //                             ENN = 'Get Posted Doc&ument Lines to Reverse';
    //                 Ellipsis = true;
    //                 Image = ReverseLines;

    //                 trigger OnAction();
    //                 begin
    //                     // GetPstdDocLinesToRevere;
    //                 end;
    //             }
    //             // separator()
    //             // {
    //             // }
    //             action("Send IC Return Order Cnfmn.")
    //             {
    //                 AccessByPermission = TableData 410 = R;
    //                 CaptionML = ENU = 'Send IC Return Order Cnfmn.',
    //                             ENN = 'Send IC Return Order Cnfmn.';
    //                 Image = IntercompanyOrder;

    //                 trigger OnAction();
    //                 var
    //                     ICInboxOutboxMgt: Codeunit "ICInboxOutboxMgt";
    //                     ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    //                 begin
    //                     IF ApprovalsMgmt.PrePostApprovalCheckSales(Rec) THEN
    //                         ICInboxOutboxMgt.SendSalesDoc(Rec, FALSE);
    //                 end;
    //             }
    //         }
    //         group("Request Approval")
    //         {
    //             CaptionML = ENU = 'Request Approval',
    //                         ENN = 'Request Approval';
    //             action(SendApprovalRequest)
    //             {
    //                 CaptionML = ENU = 'Send A&pproval Request',
    //                             ENN = 'Send A&pproval Request';
    //                 Enabled = NOT OpenApprovalEntriesExist;
    //                 Image = SendApprovalRequest;

    //                 trigger OnAction();
    //                 var
    //                     ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    //                 begin
    //                     // IF ApprovalsMgmt.CheckSalesApprovalsWorkflowEnabled(Rec) THEN
    //                     // ApprovalsMgmt.OnSendSalesDocForApproval(Rec);
    //                 end;
    //             }
    //             action(CancelApprovalRequest)
    //             {
    //                 CaptionML = ENU = 'Cancel Approval Re&quest',
    //                             ENN = 'Cancel Approval Re&quest';
    //                 Enabled = OpenApprovalEntriesExist;
    //                 Image = Cancel;

    //                 trigger OnAction();
    //                 var
    //                     ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    //                 begin
    //                     ApprovalsMgmt.OnCancelSalesApprovalRequest(Rec);
    //                 end;
    //             }
    //         }
    //         group(Warehouse1)
    //         {
    //             CaptionML = ENU = 'Warehouse',
    //                         ENN = 'Warehouse';
    //             Image = Warehouse;
    //             action("Create Inventor&y Put-away/Pick")
    //             {
    //                 AccessByPermission = TableData 7340 = R;
    //                 CaptionML = ENU = 'Create Inventor&y Put-away/Pick',
    //                             ENN = 'Create Inventor&y Put-away/Pick';
    //                 Ellipsis = true;
    //                 Image = CreatePutawayPick;

    //                 trigger OnAction();
    //                 begin
    //                     Rec.CreateInvtPutAwayPick;
    //                 end;
    //             }
    //             action("Create &Whse. Receipt")
    //             {
    //                 AccessByPermission = TableData 7316 = R;
    //                 CaptionML = ENU = 'Create &Whse. Receipt',
    //                             ENN = 'Create &Whse. Receipt';
    //                 Image = NewReceipt;

    //                 trigger OnAction();
    //                 var
    //                     GetSourceDocInbound: Codeunit "Get Source Doc. Inbound";
    //                 begin
    //                     GetSourceDocInbound.CreateFromSalesReturnOrder(Rec);
    //                 end;
    //             }
    //         }
    //         group("P&osting")
    //         {
    //             CaptionML = ENU = 'P&osting',
    //                         ENN = 'P&osting';
    //             Image = Post;
    //             action("Test Report")
    //             {
    //                 CaptionML = ENU = 'Test Report',
    //                             ENN = 'Test Report';
    //                 Ellipsis = true;
    //                 Image = TestReport;

    //                 trigger OnAction();
    //                 begin
    //                     ReportPrint.PrintSalesHeader(Rec);
    //                 end;
    //             }
    //             action(Post)
    //             {
    //                 CaptionML = ENU = 'P&ost',
    //                             ENN = 'P&ost';
    //                 Ellipsis = true;
    //                 Image = PostOrder;
    //                 Promoted = true;
    //                 PromotedCategory = Process;
    //                 PromotedIsBig = true;
    //                 ShortCutKey = 'F9';

    //                 trigger OnAction();
    //                 begin
    //                     Rec.SendToPosting(CODEUNIT::"Sales-Post (Yes/No)");
    //                 end;
    //             }
    //             action("Preview Posting")
    //             {
    //                 CaptionML = ENU = 'Preview Posting',
    //                             ENN = 'Preview Posting';
    //                 Image = ViewPostedOrder;

    //                 trigger OnAction();
    //                 var
    //                     SalesPostYesNo: Codeunit "Sales-Post (Yes/No)";
    //                 begin
    //                     SalesPostYesNo.Preview(Rec);
    //                 end;
    //             }
    //             action("Post and &Print")
    //             {
    //                 CaptionML = ENU = 'Post and &Print',
    //                             ENN = 'Post and &Print';
    //                 Ellipsis = true;
    //                 Image = PostPrint;
    //                 Promoted = true;
    //                 PromotedCategory = Process;
    //                 PromotedIsBig = true;
    //                 ShortCutKey = 'Shift+F9';

    //                 trigger OnAction();
    //                 begin
    //                     Rec.SendToPosting(CODEUNIT::"Sales-Post + Print");
    //                 end;
    //             }
    //             action("Post and Email")
    //             {
    //                 CaptionML = ENU = 'Post and Email',
    //                             ENN = 'Post and Email';
    //                 Ellipsis = true;
    //                 Image = PostMail;

    //                 trigger OnAction();
    //                 var
    //                     SalesPostPrint: Codeunit "Sales-Post + Print";
    //                 begin
    //                     SalesPostPrint.PostAndEmail(Rec);
    //                 end;
    //             }
    //             action("Post &Batch")
    //             {
    //                 CaptionML = ENU = 'Post &Batch',
    //                             ENN = 'Post &Batch';
    //                 Ellipsis = true;
    //                 Image = PostBatch;
    //                 Promoted = true;
    //                 PromotedCategory = Process;

    //                 trigger OnAction();
    //                 begin
    //                     REPORT.RUNMODAL(REPORT::"Batch Post Sales Return Orders", TRUE, TRUE, Rec);
    //                     CurrPage.UPDATE(FALSE);
    //                 end;
    //             }
    //             action("Remove From Job Queue")
    //             {
    //                 CaptionML = ENU = 'Remove From Job Queue',
    //                             ENN = 'Remove From Job Queue';
    //                 Image = RemoveLine;
    //                 Visible = JobQueueActive;

    //                 trigger OnAction();
    //                 begin
    //                     Rec.CancelBackgroundPosting;
    //                 end;
    //             }
    //         }
    //     }
    // }

    // trigger OnAfterGetCurrRecord();
    // begin
    //     SetControlAppearance;
    // end;

    // trigger OnOpenPage();
    // var
    //     SalesSetup: Record "Sales & Receivables Setup";
    // begin
    //     Rec.SetSecurityFilterOnRespCenter;

    //     JobQueueActive := SalesSetup.JobQueueActive;
    // end;

    // var
    //     ReportPrint: Codeunit "Test Report-Print";
    //     DocPrint: Codeunit "Document-Print";

    //     JobQueueActive: Boolean;
    //     OpenApprovalEntriesExist: Boolean;

    // local procedure SetControlAppearance();
    // var
    //     ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    // begin
    //     OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);
    // end;
}

