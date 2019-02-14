<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="message, App_Web_h3t3e0bn" title="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 62px;
        }
        .style33
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style11">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Font-Underline="True" 
                Text="Massage "></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Send 
            new message</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">All 
            messages</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Sent message</asp:LinkButton>
        </td>
        <td>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlm" runat="server" DataSourceID="sds" 
                                DataTextField="name" DataValueField="Friends">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="send" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td title="message">
                            <asp:SqlDataSource ID="sds" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT registration.name, request.sentreq AS Friends FROM request INNER JOIN registration ON request.sentreq = registration.email WHERE (request.recivereq = @name) AND (request.status = 'accepted') UNION SELECT registration_1.name, request_1.recivereq AS Friends FROM request AS request_1 INNER JOIN registration AS registration_1 ON request_1.recivereq = registration_1.email WHERE (request_1.recivereq &lt;&gt; @name) AND (request_1.status = 'accepted') AND (request_1.sentreq = @name)" 
                                >
                                <SelectParameters>
                                    <asp:SessionParameter Name="name" SessionField="username" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
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
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
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
            <asp:Panel ID="rcv" runat="server">
                <table class="style1">
                    <tr>
                        <td class="style33">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style33">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            Received Messages</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                style="margin-right: 0px">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Message" HeaderText="Message" 
                                        SortExpression="Message" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#CCCCFF" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                                Text="Delete" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Open" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT registration.name AS Name, message.msg_content AS Message FROM message INNER JOIN registration ON message.sent_msg = registration.email WHERE (message.recive_msg = @rmsg)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="rmsg" SessionField="username" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        <asp:Panel ID="sent" runat="server" Visible="False">
                                <table class="style1">
                                    <tr>
                                        <td class="style33" ID="sent msg">
                                        </td>
                                        <td class="style33">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td ID="sent msg0">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td ID="sent msg1">
                                            Sent Messages</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td ID="sent msg2">
                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                                DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" 
                                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                                style="margin-right: 0px">
                                                <RowStyle BackColor="#EFF3FB" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#CCCCFF" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="Message" HeaderText="Message" 
                                                        SortExpression="Message" />
                                                    <asp:BoundField DataField="msg_date" HeaderText="msg_date" 
                                                        SortExpression="msg_date" />
                                                    <asp:BoundField DataField="recive_msg" HeaderText="recive_msg" 
                                                        SortExpression="recive_msg" />
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td ID="sent msg3">
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT msg_content AS Message, msg_date, recive_msg FROM message WHERE (sent_msg = @username) ORDER BY msg_id DESC">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="username" SessionField="username" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
        </td>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="msgSqlDataSource1" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="msgSqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT msg_content, msg_date FROM message WHERE (sent_msg = @m) and (recive_msg=@r) order by  msg_date  desc">
                <SelectParameters>
                    <asp:SessionParameter Name="m" SessionField="sent_msg" />
                    <asp:SessionParameter Name="r" SessionField="username" />
                </SelectParameters>
            </asp:SqlDataSource>
            </td>
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
</asp:Content>

