<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courseenroll.aspx.cs" Inherits="Gucera.courseenroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 95px;
            left: 317px;
            z-index: 1;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            please Enter the id of the instructor:
            <asp:TextBox ID="Inst" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
