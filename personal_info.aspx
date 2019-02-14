<%@ page language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="personal_info, App_Web_mabazu3g" title="Edit information" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style11
        {
            width: 237px;
        }
        .style18
        {
            width: 237px;
            height: 23px;
        }
        .style19
        {
            height: 23px;
        }
        .style20
        {
            width: 163px;
            height: 40px;
            margin-left: 80px;
        }
        .style22
        {
            height: 40px;
        }
        .style23
        {
            width: 163px;
            height: 19px;
            margin-left: 80px;
        }
        .style24
        {
            width: 237px;
            height: 19px;
        }
        .style25
        {
            height: 19px;
        }
        .style26
        {
            width: 163px;
            height: 13px;
            margin-left: 80px;
        }
        .style28
        {
            height: 13px;
        }
        .style34
        {
            width: 163px;
            height: 12px;
            margin-left: 80px;
        }
        .style35
        {
            width: 237px;
            height: 12px;
        }
        .style36
        {
            height: 12px;
        }
        .style37
        {
            width: 163px;
            height: 54px;
            margin-left: 80px;
        }
        .style38
        {
            width: 237px;
            height: 54px;
        }
        .style39
        {
            height: 54px;
        }
        .style40
        {
            width: 163px;
            height: 70px;
            margin-left: 80px;
        }
        .style41
        {
            width: 163px;
            height: 22px;
            margin-left: 80px;
        }
        .style42
        {
            width: 237px;
            height: 22px;
        }
        .style43
        {
            height: 22px;
        }
        .style44
        {
            width: 163px;
            height: 9px;
            margin-left: 80px;
        }
        .style45
        {
            width: 237px;
            height: 9px;
        }
        .style46
        {
            height: 9px;
        }
        .style48
        {
            width: 237px;
            height: 33px;
        }
        .style49
        {
            height: 33px;
        }
        .style50
        {
            width: 163px;
            height: 18px;
            margin-left: 80px;
        }
        .style51
        {
            width: 237px;
            height: 18px;
        }
        .style52
        {
            height: 18px;
        }
        .style53
        {
            width: 163px;
            height: 29px;
            margin-left: 80px;
        }
        .style54
        {
            width: 237px;
            height: 29px;
        }
        .style55
        {
            height: 29px;
        }
        .style56
        {
            width: 163px;
            height: 11px;
            margin-left: 80px;
        }
        .style57
        {
            width: 237px;
            height: 11px;
        }
        .style58
        {
            height: 11px;
        }
        .style59
        {
            width: 163px;
            height: 20px;
            margin-left: 80px;
        }
        .style60
        {
            width: 237px;
            height: 20px;
        }
        .style61
        {
            height: 20px;
        }
        .style62
        {
            width: 163px;
            height: 24px;
            margin-left: 80px;
        }
        .style63
        {
            width: 237px;
            height: 24px;
        }
        .style64
        {
            height: 24px;
        }
        .style65
        {
            width: 163px;
            margin-left: 80px;
        }
        .style67
        {
            width: 163px;
            height: 26px;
            margin-left: 80px;
        }
        .style68
        {
            width: 237px;
            height: 26px;
        }
        .style69
        {
            height: 26px;
        }
        .style70
        {
            width: 163px;
            height: 32px;
            margin-left: 80px;
        }
        .style71
        {
            width: 237px;
            height: 32px;
        }
        .style72
        {
            height: 32px;
        }
        .style74
        {
            width: 237px;
            height: 14px;
        }
        .style75
        {
            height: 14px;
        }
        .style76
        {
            width: 163px;
            height: 38px;
            margin-left: 80px;
        }
        .style77
        {
            width: 237px;
            height: 38px;
        }
        .style78
        {
            width: 163px;
            height: 33px;
            margin-left: 80px;
        }
        .style79
        {
            width: 163px;
            height: 14px;
            margin-left: 80px;
        }
        .style81
        {
            height: 19px;
        }
        .style82
        {
            width: 237px;
            height: 40px;
        }
        .style83
        {
            width: 237px;
            height: 6px;
        }
        .style84
        {
            width: 237px;
            height: 3px;
        }
        </style>
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table class="style1">
            <tr>
                <td class="style40">
                    <asp:Label runat="server" Font-Size="Large" Font-Underline="True" 
                        Text="Personal Info"></asp:Label>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style78">
                    </td>
                <td class="style18">
                    </td>
                <td class="style19">
                    </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label1" runat="server" Text="Name  :-"></asp:Label>
                </td>
                <td class="style82">
                    <asp:TextBox ID="txtprname" runat="server" 
                        ontextchanged="txtprname_TextChanged"></asp:TextBox>
                </td>
                <td class="style22">
                    </td>
            </tr>
            <tr>
                <td class="style23">
                    </td>
                <td class="style24">
                    </td>
                <td class="style25">
                    </td>
            </tr>
            <tr>
                <td class="style40">
                    <asp:Label ID="Label2" runat="server" Text="Gender :-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:RadioButtonList ID="rdogender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="rdogender" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    </td>
                <td class="style83">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style79">
                    <asp:Label ID="Label3" runat="server" Text="Birthdate :-"></asp:Label>
                </td>
                <td class="style84">
                    <asp:TextBox ID="txtprbirth" runat="server" 
                        ></asp:TextBox><asp:TextBoxWatermarkExtender
                            ID="TextBoxWatermarkExtender1" runat="server" 
                        TargetControlID="txtprbirth" WatermarkText="MM/DD/YYYY">
                        </asp:TextBoxWatermarkExtender>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtprbirth" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    </td>
                <td class="style83">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label4" runat="server" Text="Relationship :-"></asp:Label>
                </td>
                <td class="style24">
                    <asp:DropDownList ID="ddlrelation" runat="server">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>In relationship</asp:ListItem>
                        <asp:ListItem>Engged</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style81">
                    <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlrelation" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34">
                    </td>
                <td class="style35">
                    <br />
                </td>
                <td class="style36">
                    </td>
            </tr>
            <tr>
                <td class="style37">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Font-Underline="True" 
                        Text="Contact Info :-"></asp:Label>
                </td>
                <td class="style38">
                    </td>
                <td class="style39">
                    </td>
            </tr>
            <tr>
                <td class="style26">
                    </td>
                <td class="style83">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style41">
                    <asp:Label ID="Label6" runat="server" Text="Email :-"></asp:Label>
                </td>
                <td class="style42">
                    <asp:TextBox ID="txtcoemail" runat="server" ReadOnly="True" Enabled="False"></asp:TextBox>
                </td>
                <td class="style43">
                    </td>
            </tr>
            <tr>
                <td class="style41">
                    </td>
                <td class="style42">
                    </td>
                <td class="style43">
                    </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label7" runat="server" Text="Mobile No. :-"></asp:Label>
                </td>
                <td class="style82">
                    <asp:TextBox ID="txtcomob" runat="server"></asp:TextBox>
                </td>
                <td class="style22">
                    </td>
            </tr>
            <tr>
                <td class="style44">
                    </td>
                <td class="style45">
                    </td>
                <td class="style46">
                    </td>
            </tr>
            <tr>
                <td class="style78">
                    <asp:Label ID="Label8" runat="server" Text="Current City :-"></asp:Label>
                </td>
                <td class="style48">
                    <asp:TextBox ID="txtccity" runat="server"></asp:TextBox>
                </td>
                <td class="style49">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style50">
                    </td>
                <td class="style51">
                    </td>
                <td class="style52">
                    </td>
            </tr>
            <tr>
                <td class="style53">
                    <asp:Label ID="Label9" runat="server" Text="Hometown :-"></asp:Label>
                </td>
                <td class="style54">
                    <asp:TextBox ID="txthcity" runat="server"></asp:TextBox>
                </td>
                <td class="style55">
                    </td>
            </tr>
            <tr>
                <td class="style56">
                    </td>
                <td class="style57">
                    </td>
                <td class="style58">
                    </td>
            </tr>
            <tr>
                <td class="style59">
                    </td>
                <td class="style60">
                </td>
                <td class="style61">
                    </td>
            </tr>
            <tr>
                <td class="style23">
                    </td>
                <td class="style24">
                    </td>
                <td class="style25">
                    </td>
            </tr>
            <tr>
                <td class="style40">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Font-Underline="True" 
                        Text="Work and Educational Info :-"></asp:Label>
                </td>
                <td class="style11">
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style62">
                    </td>
                <td class="style63">
                    </td>
                <td class="style64">
                    </td>
            </tr>
            <tr>
                <td class="style67">
                    <asp:Label ID="Label11" runat="server" Text="School :-"></asp:Label>
                </td>
                <td class="style68">
                    <asp:TextBox ID="txtschool" runat="server"></asp:TextBox>
                </td>
                <td class="style69">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    </td>
                <td class="style24">
                    </td>
                <td class="style25">
                    </td>
            </tr>
            <tr>
                <td class="style65">
                    <asp:Label ID="Label12" runat="server" Text="College :-"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtcollege" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style50">
                    </td>
                <td class="style51">
                    </td>
                <td class="style52">
                    </td>
            </tr>
            <tr>
                <td class="style70">
                    <asp:Label ID="Label13" runat="server" Text="University :-"></asp:Label>
                </td>
                <td class="style71">
                    <asp:TextBox ID="txtuni" runat="server"></asp:TextBox>
                </td>
                <td class="style72">
                    </td>
            </tr>
            <tr>
                <td class="style79">
                    </td>
                <td class="style74">
                    </td>
                <td class="style75">
                    </td>
            </tr>
            <tr>
                <td class="style76">
                    <asp:Label ID="Label14" runat="server" Text="Company :-"></asp:Label>
                </td>
                <td class="style77">
                    <asp:TextBox ID="txtcompany" runat="server">ccc</asp:TextBox>
                </td>
                <td class="style15">
                    </td>
            </tr>
            <tr>
                <td class="style79">
                    </td>
                <td class="style74">
                    </td>
                <td class="style75">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style40">
                    &nbsp;</td>
                <td class="style11">
                    <asp:Button ID="Button3" runat="server" Text="Submit" Width="99px" 
                        onclick="Button3_Click" ValidationGroup="s" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
