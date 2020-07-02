<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload_profile_photo.aspx.cs" Inherits="upload_profile_photo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 158px;
        }
        .style32
        {
            width: 158px;
            height: 22px;
        }
        .style33
        {
            height: 22px;
        }
        .style34
        {
            width: 158px;
            height: 5px;
        }
        .style35
        {
            height: 5px;
        }
        .style36
        {
            width: 158px;
            height: 23px;
        }
        .style37
        {
            height: 23px;
        }
        .style38
        {
            width: 158px;
            height: 27px;
        }
        .style39
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style36">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Font-Underline="True" 
                    Text="Upload Profile Photo"></asp:Label>
            </td>
            <td class="style37">
                </td>
            <td class="style37">
                </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td class="style35">
                </td>
            <td class="style35">
                </td>
        </tr>
        <tr>
            <td class="style38">
                <asp:Label ID="Label2" runat="server" Text="Select Photo :-"></asp:Label>
            </td>
            <td class="style39">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style33">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
            </td>
            <td class="style33">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

