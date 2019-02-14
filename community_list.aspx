<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="community_list, App_Web_mabazu3g" title="community list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="cm_id" HeaderText="cm_id" 
                        SortExpression="cm_id" />
                    <asp:BoundField DataField="cm_name" HeaderText="cm_name" 
                        SortExpression="cm_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [cm_id], [cm_name] FROM [about_community]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink9" runat="server" 
                NavigateUrl="~/Create_community.aspx">Create community</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

