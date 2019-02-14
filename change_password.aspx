<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="change_password, App_Web_mabazu3g" title="Change password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 163px;
        }
        .style10
        {
            width: 117px;
        }
        .style11
        {
            width: 156px;
        }
        .style12
        {
            width: 279px;
            height: 19px;
        }
        .style14
        {
            width: 156px;
            height: 23px;
        }
        .style15
        {
            width: 117px;
            height: 23px;
        }
        .style16
        {
            width: 279px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Change Password" 
                    Font-Underline="True"></asp:Label>
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label2" runat="server" Text="Current Password :-"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcpass" ErrorMessage="Enter current password" 
                    ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label3" runat="server" Text="New Password :-"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnpass" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label4" runat="server" Text="Re-Enter Password :-"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtrpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnpass" ControlToValidate="txtrpass" 
                    ErrorMessage="Password Not Match" ValidationGroup="c"></asp:CompareValidator>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Change Password" 
                    onclick="Button1_Click" ValidationGroup="c" />
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
 </asp:Content>
