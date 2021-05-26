<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADAcceptCourse.aspx.cs" Inherits="Gucera.ADAcceptCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 44px;
            left: 10px;
            z-index: 1;
            height: 25px;
        }
        .auto-style2 {
            position: absolute;
            top: 42px;
            left: 171px;
            z-index: 1;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
                  
    <form id="form1" runat="server">
        <div style="font-size: medium; font-weight: bold; text-decoration: underline; text-transform: uppercase;">
            choose a course you want to accept:<br />
            <br />
            <asp:DropDownList ID="NonAccepted" runat="server"  CssClass="auto-style1">
                <asp:ListItem>Course ID</asp:ListItem>
            </asp:DropDownList>
        <asp:Button ID="accept" runat="server" CssClass="auto-style2"  onClick="nonAcceptedClick" Text="Accept Course" />
        </div>
    </form>
</body>
</html>
