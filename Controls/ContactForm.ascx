<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        height: 26px;
    }
</style>

<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneWork = document.getElementById('<%= PhoneWork.ClientID %>');
        if (phoneHome.value != '' || phoneWork.value != '')
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">
            <h1>Enter Yo Details, Marshmallows!</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Name:</td>
        <td class="auto-style2">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Please enter your Name" SetFocusOnError="True" ToolTip="Enter Your Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Email Address</td>
        <td class="auto-style4">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter a Valid Email Address" ControlToValidate="EmailAddress">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="This doesn't look like an Email Address..." ControlToValidate="EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">!</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Email</td>
        <td>
            <asp:TextBox ID="ConfirmEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="FOrgot the second email" ControlToValidate="ConfirmEmail">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="EMails don't match!" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmail">!=</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Phone (Home)</td>
        <td>
            <asp:TextBox ID="PhoneHome" runat="server" ClientIDMode="Static"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="PLease Enter yat least one phone number." OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Phone (Wox rk)</td>
        <td>
            <asp:TextBox ID="PhoneWork" runat="server" ClientIDMode="Static"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Comments</td>
        <td>
            <asp:TextBox ID="Comments" runat="server" Height="72px" TextMode="MultiLine" Width="373px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please send us some comments!" ControlToValidate="Comments"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="SendButton" runat="server" Text="SUBMIT TO BEELZEBUB" OnClick="SendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
        </td>
    </tr>
</table>
<asp:Label ID ="Message" runat="server" Text="Message Sent!" Visible="false"></asp:Label>
</ContentTemplate>
    </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait, Dawg!
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>

