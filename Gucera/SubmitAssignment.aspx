﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmitAssignment.aspx.cs" Inherits="Gucera.SubmitAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 12px;
            left: 139px;
            z-index: 1;
            height: 18px;
        }
        .auto-style4 {
            position: absolute;
            top: 69px;
            left: 145px;
            z-index: 1;
            height: 14px;
        }
        .auto-style8 {
            position: absolute;
            top: 159px;
            left: 94px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 121px;
            left: 290px;
            z-index: 1;
        }
        </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
        <div>
            Assignment Type</div>
        <asp:TextBox ID="AssignType" runat="server" CssClass="auto-style2"></asp:TextBox>
        <p>
            <br />
            Assignment Number</p>
        <asp:TextBox ID="AssignNum" runat="server" CssClass="auto-style4"></asp:TextBox>
        <br />
        <br />
        <br />
        Course ID<br />
        
        <asp:TextBox ID="cid" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:Button ID="enter" runat="server" CssClass="auto-style9" OnClick="SubmitAssign" Text="Submit" />
        <p>
            <asp:Literal ID="err" runat="server"></asp:Literal>
        </p>
    </form>
</body>
</html>