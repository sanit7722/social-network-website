<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Community, App_Web_mabazu3g" title="community" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .style1
        {
            width: 100%;
            height: 145px;
        }
        .style2
        {
            width: 147px;
        }
        .style3
        {
            width: 103px;
            margin-left: 160px;
        }
        .style6
        {
            width: 147px;
            height: 20px;
        }
        .style7
        {
            height: 20px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 203px;
        }
            .style11
            {
                width: 108px;
                margin-left: 160px;
            }
            .style12
            {
                width: 380px;
            }
            .style13
            {
                width: 228px;
            }
            .style14
            {
                width: 171%;
            }
            .style15
            {
                width: 100%;
            }
            .style16
            {
                width: 62px;
            }
            .style17
            {
                width: 228px;
                height: 49px;
            }
            .style21
            {
                width: 62px;
                height: 24px;
            }
            .style22
            {
                height: 24px;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Image ID="Image1" runat="server" Height="173px" Width="144px" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="lblcmntname"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/edit_community.aspx">Edit Information</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                </td>
                <td class="style13">
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="lkbtninfo" runat="server" onclick="lkbtninfo_Click" >Info</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lkbtnpost" runat="server" onclick="lkbtnpost_Click" >Post</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    
    <asp:Panel ID="info" runat="server">
        <table class="style1">
            <tr>
                <td class="style11">
                    <asp:Label ID="Label2" runat="server" Text="Description :-"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="lblcmntdcpt"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <table class="style8">
            <tr>
                <td class="style9">
                    <asp:Panel ID="postcontent" runat="server">
                        <table class="style14">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtstatus" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Post" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/comments.aspx">other 
                    post</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    
</asp:Content>