<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Gucera.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 28px;
            left: 4px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 144px;
            left: 21px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 103px;
            left: 3px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 229px;
            left: 345px;
            z-index: 1;
        }
        .auto-style8 {
            width: 1634px;
            height: 2182px;
        }
    </style>
</head>
<body class="auto-style8" style=" background-image: url('imgs/login.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="username" runat="server" CssClass="auto-style1"></asp:TextBox>
            
            
            ID:<p>
                    &nbsp;</p>
        <p>
            &nbsp;Password:</p>
        <p>
            <asp:TextBox ID="password" runat="server"  CssClass="auto-style5" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="register" runat="server" CssClass="auto-style7" onClick="UserRegister" Text="Click Here To Register" />
            
        </p>
        <p>
            <asp:Button ID="submit" runat="server" CssClass="auto-style3" onClick="Login" Text="Log in" />
        </p>
        
            </div>
    </form>
</body>
</html>
