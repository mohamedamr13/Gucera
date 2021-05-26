<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADViewNACourses.aspx.cs" Inherits="Gucera.ADViewNACourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 15px;
            left: 10px;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
                  
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="NAcourseTable" runat="server" CssClass="auto-style1" style="z-index: 1" ShowHeaderWhenEmpty="True" BackColor="#999999">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
