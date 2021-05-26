<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreditCard.aspx.cs" Inherits="Gucera.CreditCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 52px;
            left: 238px;
            z-index: 1;
            height: 25px;
        }
        .auto-style3 {
            position: absolute;
            top: 113px;
            left: 196px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 185px;
            left: 195px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 258px;
            left: 211px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 323px;
            left: 10px;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
        <div>
            Add CreditCard Details :<br />
            <br />
            ExpiryDate:<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            Number:<br />
            <asp:TextBox ID="num" runat="server" CssClass="auto-style3"></asp:TextBox>
            <br />
            <br />
            CardHolderName:<br />
            <asp:TextBox ID="holdername" runat="server" CssClass="auto-style4"></asp:TextBox>
            <br />
            <br />
            <br />
            CVV:<br />
            <br />
            <asp:TextBox ID="cvv" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick ="Add" CssClass="auto-style6" style="z-index: 1" Text="add" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
