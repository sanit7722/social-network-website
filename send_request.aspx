<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="send_request, App_Web_mabazu3g" title=" Request " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 120px;
        }
        .style17
        {
            width: 120px;
            height: 54px;
        }
        .style18
        {
            height: 54px;
        }
        .style22
        {
            width: 120px;
            height: 1px;
        }
        .style23
        {
            height: 1px;
        }
        .style24
        {
            width: 120px;
            height: 26px;
        }
        .style25
        {
            height: 26px;
        }
        .style26
        {
            width: 120px;
            height: 21px;
        }
        .style27
        {
            height: 21px;
        }
        .style30
        {
            width: 120px;
            height: 4px;
        }
        .style31
        {
            height: 4px;
        }
        .style32
        {
            width: 120px;
            height: 11px;
        }
        .style33
        {
            height: 11px;
        }
        .style34
        {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="width: 98%">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label1" runat="server" Text="Select user  name :-"></asp:Label>
            </td>
            <td class="style18">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="email">
                </asp:DropDownList>
            </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Send request" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style23">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style24">
                </td>
            <td class="style25">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    
                    
                    SelectCommand="SELECT name, email FROM registration WHERE (user_id &lt;&gt; @user_id) AND (name NOT IN (SELECT recivereq FROM request WHERE (sentreq = @email))) AND (name NOT IN (SELECT name FROM registration AS registration_1 WHERE (user_type = 'admin')))" 
                    onselecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int32" />
                        <asp:SessionParameter Name="email" SessionField="username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style25">
                </td>
        </tr>
        <tr>
            <td class="style26">
                </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style27">
                </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/accept_req.aspx">All 
                friend request</asp:HyperLink>
            </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style30">
                </td>
            <td class="style31">
                </td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style33">
                </td>
            <td class="style33">
                </td>
        </tr>
    </table>
</asp:Content>

