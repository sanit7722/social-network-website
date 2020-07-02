<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="deleteuseraccount.aspx.cs" Inherits="Admin_deleteuseraccount" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="user_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" 
                        SortExpression="gender" />
                    <asp:BoundField DataField="birthdate" HeaderText="birthdate" 
                        SortExpression="birthdate" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                        SortExpression="email" />
                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [registration] WHERE [email] = @original_email AND [user_id] = @original_user_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([birthdate] = @original_birthdate) OR ([birthdate] IS NULL AND @original_birthdate IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))" 
                InsertCommand="INSERT INTO [registration] ([name], [gender], [birthdate], [email], [photo]) VALUES (@name, @gender, @birthdate, @email, @photo)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [user_id], [name], [gender], [birthdate], [email], [photo] FROM [registration]" 
                UpdateCommand="UPDATE [registration] SET [user_id] = @user_id, [name] = @name, [gender] = @gender, [birthdate] = @birthdate, [photo] = @photo WHERE [email] = @original_email AND [user_id] = @original_user_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([birthdate] = @original_birthdate) OR ([birthdate] IS NULL AND @original_birthdate IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_user_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_birthdate" Type="String" />
                    <asp:Parameter Name="original_photo" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="birthdate" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_user_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_birthdate" Type="String" />
                    <asp:Parameter Name="original_photo" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="birthdate" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

