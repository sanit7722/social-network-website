<%@ page language="C#" autoeventwireup="true" inherits="login, App_Web_qinz3ixq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login </title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 163px;
        }
        .style5
        {
            width: 77px;
        }
        .style6
        {
            width: 5px;
        }
        .style7
        {
            width: 79px;
        }
        .style8
        {
            width: 5px;
            height: 26px;
        }
        .style9
        {
            width: 79px;
            height: 26px;
        }
        .style10
        {
            width: 163px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" 
            style="background-image: url('images/bg3.gif'); background-color: #C0C0C0;" 
            width="1000" bgcolor="#0066FF">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Image ID="Image2" runat="server" Height="55px" 
                        ImageUrl="~/images/cooltext1473300815.jpg" style="margin-bottom: 0px" 
                        Width="466px" />
                </td>
                <td class="style5" rowspan="22">
                    <asp:Image ID="Image3" runat="server" Height="422px" 
                        ImageUrl="~/images/social 1234.png" style="margin-left: 0px; margin-top: 0px" 
                        Width="332px" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Email Id :-" 
                        BackColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtusername" runat="server" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    </td>
                <td class="style9">
                    </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="Password:-" 
                        BackColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="170px" 
                        ontextchanged="txtpassword_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="92px" 
                        onclick="Button1_Click" />
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Create New Account" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    </td>
                <td class="style9">
                    </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/forgot_password.aspx" BackColor="White" Font-Bold="True">Forget 
                    Password</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
