﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="assignment1_19_06_2019.Login" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                
                <tr>  
                    <td>Gmail</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html>  