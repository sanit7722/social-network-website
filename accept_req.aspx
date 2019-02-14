<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="accept_req, App_Web_mabazu3g" title="accept request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 115px;
        }
        .style11
        {
            width: 86px;
        }
        .style17
        {
            width: 115px;
            height: 3px;
        }
        .style18
        {
            width: 86px;
            height: 3px;
        }
        .style19
        {
            height: 3px;
        }
        .style20
        {
            width: 115px;
            height: 43px;
        }
        .style21
        {
            width: 86px;
            height: 43px;
        }
        .style22
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style10">
                <asp:Label ID="Label1" runat="server" Text="Accept Request"></asp:Label>
            </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                </td>
            <td class="style21">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="sentreq" 
                    DataValueField="req_id">
                </asp:DropDownList>
            </td>
            <td class="style22">
                </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style18">
                </td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Accept" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT req_id, sentreq FROM request WHERE (recivereq = @recivereq) AND (status = 'Not accepted')" 
                    onselecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="recivereq" SessionField="username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

