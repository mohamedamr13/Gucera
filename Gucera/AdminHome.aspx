<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Gucera.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 66px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 119px;
            left: 14px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 174px;
            left: 10px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 226px;
            left: 14px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 277px;
            left: 12px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 321px;
            left: 8px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 32px;
            left: 28px;
            z-index: 1;
        }
        .auto-style8 {
            width: 1634px;
            height: 2182px;
        }
        </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
                  
    <form id="form1" runat="server">
        <div>
           
            <asp:Label ID="ID" runat="server" CssClass="auto-style7" Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:Label ID="name" runat="server"  style=' top:28px;position: fixed; right: 32px;'  Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:Label ID="welcome" runat="server" CssClass="auto-style7" style=' top:20px;position: fixed; left: 480px;' Text="WELCOME TO" Font-Bold="True" Font-Size="X-Large"></asp:Label>
             <asp:Label ID="G" runat="server" style='color:gold; top: 50px; position: fixed; left: 545px;font-weight: bold; font-size: large;' Text="G"></asp:Label>
              <asp:Label ID="U" runat="server" style='color:black; top: 50px; position: fixed; left: 560px;font-weight: bold; font-size: large;' Text="U"></asp:Label>
              <asp:Label ID="C" runat="server" style='color:red; top: 50px; position: fixed; left: 575px;font-weight: bold; font-size: large;' Text="C"></asp:Label>
               <asp:Label ID="era" runat="server" style='color:black; top: 50px; position: fixed; left: 590px;font-weight: bold; font-size: large;' Text="era"></asp:Label>
            <br />
            <br />
            <br />
            <br />

            <asp:Button ID="mobile" runat="server" CssClass="auto-style1" OnClick="addMob" Text="Add a mobile Number" />
            <br />
            <br />
            <asp:Button ID="viewC" runat="server" CssClass="auto-style2" OnClick="viewCourses" Text="View All Courses" />
            <br />
            <br />
            <asp:Button ID="viewNAC" runat="server" CssClass="auto-style3" OnClick="viewNonAccepted" Text="View Non Accepted Courses" />
            <br />
            <br />
            <asp:Button ID="accept" runat="server" CssClass="auto-style4" OnClick="acceptCourse" Text="Accept a Course" />
            <br />
            <br />
            <asp:Button ID="create" runat="server" CssClass="auto-style5" OnClick="createPromocode" Text="Create Promocode" />
            <br />
            <br />
            <asp:Button ID="issue" runat="server" CssClass="auto-style6" OnClick="issuePromocode" Text="Issue a Promocode for a student" />
        </div>
    </form>
</body>
</html>
