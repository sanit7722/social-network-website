<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_qinz3ixq" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create New Account</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 156px;
        }
        .style3
        {
            width: 168px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1" bgcolor="#66FFFF">
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Font-Size="X-Large" 
                    Text="Create New Account"></asp:Label>
            </td>
            <td class="style3">
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Full Name :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox><asp:FilteredTextBoxExtender
                    ID="FilteredTextBoxExtender1" runat="server" 
                     TargetControlID="txtname"
                    FilterType="Custom"
            FilterMode="InvalidChars"
            InvalidChars="1234567890+=)(*&^%$#@!~_~,.">
                </asp:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Gender :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButtonList ID="rdogender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="rdogender" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Date of Birth :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtdob" runat="server" ToolTip="MM/DD/YYYY"></asp:TextBox><asp:TextBoxWatermarkExtender
                    ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtdob" 
                    WatermarkText="MM/DD/YYYY">
                </asp:TextBoxWatermarkExtender>
                <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                    ImageUrl="~/images/calender.png" onclick="ImageButton1_Click" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdob" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Email id  :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Mobile No. :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtmob" runat="server" MaxLength="10"></asp:TextBox><asp:FilteredTextBoxExtender
                    ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers" 
                    TargetControlID="txtmob">
                </asp:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtmob" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="10 digits" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Password :-</td>
            <td class="style3">
                <asp:TextBox ID="txtpass1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:PasswordStrength
                    ID="PasswordStrength1" runat="server" TargetControlID="txtpass1">
                </asp:PasswordStrength>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpass1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpass1" ControlToValidate="txtpass2" Display="Dynamic" 
                    ErrorMessage="Password not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Re Enter Password  :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtpass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Security Question1 :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Which is your favourite city ?</asp:ListItem>
                    <asp:ListItem>Who is your favourite sportsman ?
                    </asp:ListItem>
                    <asp:ListItem>Who is your best friend ?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" Text="Anwser 1:-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtans1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="Security Question2:-"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Name of favourite teacher</asp:ListItem>
                    <asp:ListItem>First mobile number</asp:ListItem>
                    <asp:ListItem>What is your Father&#39;s middle name ?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" Text="Anwser2 :-"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtans2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" Width="96px" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx">Login</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
