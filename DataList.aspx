<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="ReaderZ_LMS.DataList" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <a href="Books_Details.aspx?ID=<%# Eval("ID") %>">
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Cover_Photo") %>' Width="100px" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Book_Name") %>'></asp:Label>
                    <br />
                    <br />
                    <br />
                        </a>
                </ItemTemplate>
            </asp:DataList>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Book_NameLabel" runat="server" Text='<%# Eval("Book_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Author_NameLabel" runat="server" Text='<%# Eval("Author_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="No_of_CopiesLabel" runat="server" Text='<%# Eval("No_of_Copies") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Cover_PhotoLabel" runat="server" Text='<%# Eval("Cover_Photo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LanguageLabel" runat="server" Text='<%# Eval("Language") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Book_NameTextBox" runat="server" Text='<%# Bind("Book_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Author_NameTextBox" runat="server" Text='<%# Bind("Author_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="No_of_CopiesTextBox" runat="server" Text='<%# Bind("No_of_Copies") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Cover_PhotoTextBox" runat="server" Text='<%# Bind("Cover_Photo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LanguageTextBox" runat="server" Text='<%# Bind("Language") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="Book_NameTextBox" runat="server" Text='<%# Bind("Book_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Author_NameTextBox" runat="server" Text='<%# Bind("Author_Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="No_of_CopiesTextBox" runat="server" Text='<%# Bind("No_of_Copies") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Cover_PhotoTextBox" runat="server" Text='<%# Bind("Cover_Photo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LanguageTextBox" runat="server" Text='<%# Bind("Language") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Book_NameLabel" runat="server" Text='<%# Eval("Book_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Author_NameLabel" runat="server" Text='<%# Eval("Author_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="No_of_CopiesLabel" runat="server" Text='<%# Eval("No_of_Copies") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Cover_PhotoLabel" runat="server" Text='<%# Eval("Cover_Photo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LanguageLabel" runat="server" Text='<%# Eval("Language") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">ID</th>
                                        <th runat="server">Book_Name</th>
                                        <th runat="server">Author_Name</th>
                                        <th runat="server">Description</th>
                                        <th runat="server">No_of_Copies</th>
                                        <th runat="server">Cover_Photo</th>
                                        <th runat="server">Status</th>
                                        <th runat="server">Language</th>
                                        <th runat="server">Tags</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Book_NameLabel" runat="server" Text='<%# Eval("Book_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Author_NameLabel" runat="server" Text='<%# Eval("Author_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="No_of_CopiesLabel" runat="server" Text='<%# Eval("No_of_Copies") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Cover_PhotoLabel" runat="server" Text='<%# Eval("Cover_Photo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LanguageLabel" runat="server" Text='<%# Eval("Language") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_books]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
