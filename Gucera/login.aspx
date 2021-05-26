<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Gucera.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/Style.css" rel="stylesheet" />
        <link href="style.css" rel="stylesheet" />

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
<body class="auto-style8" style=" background-image: url('imgs/login2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size:cover; text-align: justify;">
           
    <form id="form1" runat="server">

<asp:Image ID="Image1" runat="server"  ImageUrl="imgs/gucera.png"/>
        <div class ="loginform"> 
       <div class ="inputs" >
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping"></span>
  </div>
            <asp:TextBox ID="username" placeholder="ID" runat="server" CssClass="input-group-text"></asp:TextBox>

</div>

        <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping"></span>
  </div>
              <asp:TextBox ID="password" runat="server"  CssClass="input-group-text" TextMode="Password"></asp:TextBox>

</div>
           </div>



        <div>
            
            
            <p>
                    &nbsp;</p>
        <p>
            &nbsp;</p>
             <p>
            <asp:Button ID="submit" runat="server" CssClass="btn btn-info" onClick="Login" Text="Log in" />
        </p>

        <p>
            
            <asp:Button ID="register" runat="server" CssClass="btn btn-outline-dark" onClick="UserRegister" Text="Create An Account" />
            
        </p>
       
            </div>
        
            </div>
    </form>
</body>
</html>
