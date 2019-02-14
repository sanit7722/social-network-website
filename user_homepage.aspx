<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="user_homepage, App_Web_mabazu3g" title="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> Home </title>
    <style type="text/css">
        
        .style10
        {
        }
        .style11
        {
            width: 186px;
        }
        .style12
        {
            height: 33px;
        }
        .style13
        {
            width: 186px;
            height: 33px;
        }
    
        *{
	margin:0;
	padding:0;
	font-family: tahoma, sans-serif;
	box-sizzing: border-box;
	} 
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" bgcolor="#66CCFF" >
        <tr>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Update Status" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style11">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                <asp:TextBox ID="txtstatus" runat="server" TextMode="MultiLine" Height="105px" 
                    Width="288px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Upload Photo" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">

    <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer2_Tick">
    </asp:Timer>

            </td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" Text="Post" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style10" colspan="3" valign="top">
                
                <asp:Panel ID="Panel1" runat="server" Height="800px" ScrollBars="Auto" 
                            Width="550px">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" 
                    ondatabinding="UpdatePanel1_DataBinding" UpdateMode="Conditional">
                <Triggers>
                <asp:AsyncPostBackTrigger controlid="Timer2"  />
            </Triggers>

                    <ContentTemplate>
                        
                            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
                                BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="Sql_post" 
                                ForeColor="Black" onselectedindexchanged="DataList1_SelectedIndexChanged1" 
                                Width="500px" Height="2536px" onitemdatabound="DataList1_ItemDataBound">
                                <FooterStyle BackColor="Tan" />
                                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <ItemTemplate>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="post_idLabel" runat="server" Text='<%# Eval("post_id") %>' 
                                                    Visible="False" />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="usernameLabel" runat="server" Font-Bold="True" Font-Size="Large" 
                                                    Text='<%# Eval("username") %>' />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="postLabel" runat="server" Text='<%# Eval("post") %>' />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image3" runat="server" Height="350px" 
                                                    ImageUrl='<%# Eval("post_photo") %>' ondatabinding="Image3_DataBinding" 
                                                    Width="350px" />
                                    <br />
                                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1" 
                                                     CommandName='<%# Eval("post_id")%>'>comment</asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Buttondlt" runat="server" CommandName='<%# Eval("post_id") %>' 
                                                    onclick="Button2_Click" Text="Delete" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="LinkButton2" CommandName='<%# Eval("post_id") %>' runat="server" onclick="LinkButton2_Click">Like</asp:LinkButton>
                                                &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Like1") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="Sql_post" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [community] ORDER BY [post_id] DESC">
                            </asp:SqlDataSource>
                        
                    </ContentTemplate>
                </asp:UpdatePanel>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

