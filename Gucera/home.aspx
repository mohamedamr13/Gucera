<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="GUCera.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body class="auto-style8" style=" background-image: url('imgs/home7.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           <form id="form1" runat="server">
        <p>
<asp:Label ID="welcome" runat="server" CssClass="auto-style7" style=' top:20px;position: fixed; left: 480px;' Text="WELCOME TO" Font-Bold="True" Font-Size="X-Large"></asp:Label>
             <asp:Label ID="G" runat="server" style='color:gold; top: 50px; position: fixed; left: 545px;font-weight: bold; font-size: large;' Text="G"></asp:Label>
              <asp:Label ID="U" runat="server" style='color:black; top: 50px; position: fixed; left: 560px;font-weight: bold; font-size: large;' Text="U"></asp:Label>
              <asp:Label ID="C" runat="server" style='color:red; top: 50px; position: fixed; left: 575px;font-weight: bold; font-size: large;' Text="C"></asp:Label>
               <asp:Label ID="era" runat="server" style='color:black; top: 50px; position: fixed; left: 590px;font-weight: bold; font-size: large;' Text="era"></asp:Label>        <p> 
                   <asp:Label ID="ID" runat="server" CssClass="auto-style7" Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:Label ID="name" runat="server"  style=' top:28px;position: fixed; right: 32px;'  Text="Label" BackColor="#999999" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;</p>
        <p>
            view your details:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Button ID="prof" runat="server" OnClick ="View" Text="View my profile" Width="196px" style="margin-left: 131px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            View your Promocodes:</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Promos" Text="view all promocodes" style="margin-left: 130px" Width="201px" />
        </p>
        <p>
            Add a new Mobile Number:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="mob" runat="server" OnClick="Mobile" Text="AddMob" style="margin-left: 106px" Width="206px" />
        </p>
        <p>
            Click here to view available Courses :</p>
        <p>
            <asp:Button ID="course" runat ="server" OnClick="Courses" Text="View Courses" style="margin-left: 129px" Width="200px" />
            <br />
        </p>
        <p>
            Click here to Add a Credit Card:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Card" Text="Add CreditCard Details" Width="222px" />

        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            Click Here to Add Feedback:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick ="Feedback" Text="Add Feedback" Width="196px" style="margin-left: 131px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Click Here to view your Certificates:</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Viewcert" Text="view Certificates" style="margin-left: 130px" Width="201px" />
        </p>
        <p>
            Submit Assignment:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button5" runat="server" OnClick="submitass" Text="Submit Assignment" style="margin-left: 106px" Width="206px" />
        </p>
        <p>
            Click here to view Assignment Content :</p>
        <p>
            <asp:Button ID="Button6" runat ="server" OnClick="ViewassContent" Text="View Assignment Content" style="margin-left: 129px" Width="200px" />
            <br />
        </p>
        <p>
            Click here to view your Assignment's grade:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" OnClick="Showgrade" Text="view Assignment Grade" Width="222px" />

        </p>
    </form>
</body>
</html>
