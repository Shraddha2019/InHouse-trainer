<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="assignment1_19_06_2019.login1" %>
  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Login Form</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
<tr>
<td>
Username:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick= "Button2_Click" />
</td>
</tr>
</table>
</div>
    <p>if not Registered User<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register1">click here</asp:HyperLink>
    </p>
</form>
</body>
</html>