<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="massege, App_Web_mabazu3g" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style10">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    msg_content:
                    <asp:Label ID="msg_contentLabel" runat="server" 
                        Text='<%# Eval("msg_content") %>' />
                    <br />
                    msg_date:
                    <asp:Label ID="msg_dateLabel" runat="server" Text='<%# Eval("msg_date") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td>
            <asp:SqlDataSource ID="msgSqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT msg_content, msg_date FROM message WHERE (sent_msg = @m) and (recive_msg=@r) order by  msg_date  desc">
                <SelectParameters>
                    <asp:SessionParameter Name="m" SessionField="sent_msg" />
                    <asp:SessionParameter Name="r" SessionField="username" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
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
</table>
</asp:Content>

