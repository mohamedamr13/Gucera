<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePromo.aspx.cs" Inherits="Gucera.CreatePromo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 51px;
            left: 98px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 78px;
            z-index: 1;
            width: 175px;
            left: 452px;
        }
        .auto-style3 {
            position: absolute;
            top: 113px;
            left: 490px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 166px;
            left: 150px;
            z-index: 1;
        }
        </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
             
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            Code:<asp:TextBox ID="code" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            Issue Date :*Please write the date in MM/DD/YYYY&nbsp;
            <asp:TextBox ID="IssueDate" runat="server" CssClass="auto-style2" TextMode="DateTime"></asp:TextBox>
            <br />
            <br />
            Expiry Date : *Please write the date in MM/DD/YYYY
            <asp:TextBox ID="expDate" runat="server" CssClass="auto-style3" TextMode="DateTime"></asp:TextBox>
            <br />
            <asp:TextBox ID="discount" runat="server" CssClass="auto-style4" 
                ></asp:TextBox>
            <br />
            Discount :
            <br />
            <asp:Button ID="create" runat="server" CssClass="auto-style5" 
                onClick="CreatePromoCode" Text="Create" Height="35px" 
                style="margin-left: 410px" Width="130px" />
        </div>
    </form>
</body>
</html>
