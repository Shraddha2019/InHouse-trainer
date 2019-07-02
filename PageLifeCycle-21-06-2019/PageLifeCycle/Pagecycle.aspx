<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagecycle.aspx.cs" Inherits="PageLifeCycle.Pagecycle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 233px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table>
            <tr>
                <td>
        <p>
            <asp:Label ID="lblName" runat="server" style="z-index: 1; left: 94px; top: 91px; position: absolute; width: 26px;" Text="Test"></asp:Label>
        </p>
             </td>
                </tr>
            <td>

            <td></td>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="position: relative; top: 32px; left: 81px" Text="Button" />
    </td>
    </tr>                
                </form>
        </table>
       </body>
</html>
