﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gradeAss.aspx.cs" Inherits="Gucera.gradeAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" onClick ="dash" Text="Back to Course Manager" Width="223px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Grade Assignment
            <br />
            <br />
            </div>
        <p>
            Student ID</p>
        <p>
            <asp:TextBox ID="sid" runat="server"></asp:TextBox>
        </p>
        <p>
            Assigment Number</p>
        <p>
            <asp:TextBox ID="number" runat="server"></asp:TextBox>
        </p>
        <p>
            Assignment Type</p>
        <p>
            <asp:TextBox ID="type" runat="server"></asp:TextBox>
        </p>
        <p>
            Grade
        </p>
        <p>
            <asp:TextBox ID="grade" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="sub" runat="server" OnClick ="gradeAssign" Text="Submit Grade" />
    </form>
</body>
</html>
