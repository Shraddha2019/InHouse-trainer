<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void WizardStep4_Activate(object sender, System.EventArgs e) {
        Label5.Text = "Your Name: " + TextBox1.Text.ToString() +
                      "<br />City: " + TextBox2.Text.ToString() +
                      "<br />Favorite Color: " + RadioButtonList1.SelectedItem.Text.ToString() +
                      "<br />Favorite Tool: " + RadioButtonList2.SelectedItem.Text.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Wizard Control Simple Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" HeaderText="Simple Example of Wizard Control" HeaderStyle-Font-Size="Larger" HeaderStyle-ForeColor="Crimson" ActiveStepIndex="3">
            <WizardSteps>
                <asp:WizardStep ID="WizadStep1" runat="server" title="Personal Information">
                    <asp:Label ID="Label1" runat="server" Text="Your Name" AssociatedControlID="TextBox1"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="City" AssociatedControlID="TextBox2"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" title="Favorite Color?">
                    <asp:Label ID="Label3" runat="server" Text="Favorite Color?" AssociatedControlID="RadioButtonList1"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True">Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" title="Favorite Tool?">
                    <asp:Label ID="Label4" runat="server" Text="Most Favorite?" AssociatedControlID="RadioButtonList2"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Selected="True">Asp.Net</asp:ListItem>
                        <asp:ListItem>ColdFusion</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Result" OnActivate="WizardStep4_Activate">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="DarkGoldenrod"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>