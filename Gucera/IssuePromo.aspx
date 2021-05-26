<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssuePromo.aspx.cs" Inherits="Gucera.IssuePromo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 68px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 147px;
            left: 14px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 183px;
            left: 33px;
            z-index: 1;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
             
    <form id="form1" runat="server">
        <p>
            &nbsp;Promo code ID :</p>
        <asp:TextBox ID="pid" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br />
        <br />
        <br />
        Student ID :<p>
            <asp:TextBox ID="sid" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="issue" runat="server" CssClass="auto-style3" 
                OnClick="issuePromocode" Text="Issue" />
        </p>
    </form>
</body>
</html>
