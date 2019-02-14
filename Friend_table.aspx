<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="Friend_table, App_Web_mabazu3g" title="Friends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 93px;
        }
        .style32
        {
            width: 93px;
            height: 42px;
        }
        .style33
        {
            height: 42px;
        }
        .style34
        {
            width: 93px;
            height: 26px;
        }
        .style35
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style10">
                <asp:Label ID="Label1" runat="server" Text="Friend List"></asp:Label>
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
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style33">
                &nbsp;</td>
            <td class="style33">
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
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="View profile      ." />
                        <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" 
                            SortExpression="name" />
                        <asp:BoundField DataField="Friends" HeaderText="Friends" 
                            SortExpression="Friends" ReadOnly="True" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT registration.name, request.sentreq AS Friends FROM request INNER JOIN registration ON request.sentreq = registration.email WHERE (request.recivereq = @name) AND (request.status = 'accepted') UNION SELECT registration_1.name, request_1.recivereq AS Friends FROM request AS request_1 INNER JOIN registration AS registration_1 ON request_1.recivereq = registration_1.email WHERE (request_1.recivereq &lt;&gt; @name) AND (request_1.status = 'accepted') AND (request_1.sentreq = @name)" 
                    onselecting="SqlDataSource2_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="name" SessionField="username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td title="Friend list">
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

