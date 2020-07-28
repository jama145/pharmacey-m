<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DefaultLogin.aspx.vb" Inherits="fullprojec.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body style="background-image:url(sawirGadaal.jpg)">

   <div  class="logingBox">
            <img src="sawir.png" class="user"/>

            <h2>Login Here</h2>
          <form runat="server">
               <asp:label Text="User Name" CssClass="lblUserName" runat="server" />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="User Name Is Empty" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:TextBox runat="server"  CssClass="txtuser" placeholder="Enter User" ID="TextBoxUserName" />
               <asp:label Text="Password" CssClass="lblPassword" runat="server" />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password Is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:TextBox runat="server"  CssClass="txtPassword" placeholder="********" ID="TextBoxPassword" />
               <asp:Button Text="Sign in" CssClass="btnSubmit"  runat="server" OnClick="Unnamed5_Click"/>
    </form>
       </div>
</body>
</html>
