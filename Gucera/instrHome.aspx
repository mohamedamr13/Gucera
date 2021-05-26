<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instrHome.aspx.cs" Inherits="Gucera.instrHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 234px;
            left: 10px;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
               <p>
                  <asp:Label ID="ID" runat="server" CssClass="auto-style7" Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:Label ID="name" runat="server"  style=' top:28px;position: fixed; right: 32px;'  Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
               </p>
               <asp:Label ID="welcome" runat="server" CssClass="auto-style7" style=' top:20px;position: fixed; left: 480px;' Text="WELCOME TO" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            
                <asp:Label ID="G" runat="server" style='color:gold; top: 50px; position: fixed; left: 545px;font-weight: bold; font-size: large;' Text="G"></asp:Label>
                <asp:Label ID="U" runat="server" style='color:black; top: 50px; position: fixed; left: 560px;font-weight: bold; font-size: large;' Text="U"></asp:Label>
                <asp:Label ID="C" runat="server" style='color:red; top: 50px; position: fixed; left: 575px;font-weight: bold; font-size: large;' Text="C"></asp:Label>
                <asp:Label ID="era" runat="server" style='color:black; top: 50px; position: fixed; left: 590px;font-weight: bold; font-size: large;' Text="era"></asp:Label>


            
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Instructor Dashboard
        </div>
               
        <p>
            Add Course</p>
        <p>
            <asp:Button ID="AddCourse" runat="server" onClick="addCourse" Text="ADD" />
        </p>
        <p>
            View all Courses
        </p>
        <p>
            <asp:Button ID="ViewCourses" runat="server" onClick="viewCourses" Text="VIEW" />
        </p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" 
            style="z-index: 1" onClick="Mobile" Text="Add Mobile Number" />
    </form>
</body>
</html>
