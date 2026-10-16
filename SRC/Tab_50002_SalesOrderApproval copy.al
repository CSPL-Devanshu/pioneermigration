permissionset 50000 "Sales Order Approval Perm"
{
    Permissions = table "Sales Order Approval" = X,
        tabledata "Sales Order Approval" = RIMD,
        xmlport "GL Dump" = X,
        page "Sales Return Order List (serv)" = X;
}