<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Issue_History.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Issue_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container-fluid text-center">
        <h1 class="mb-4 font-weight-bold">Books Issue History</h1>
            <div class="row">
                <div class="col mt-3 mb-4 text-right">
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Book ID" CssClass="form-control w-25 d-inline border-secondary"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" CssClass="ml-2 d-inline btn btn-primary mb-1" Text="Search Book" OnClick="btnSearch_Click"/>
                </div>
            </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" Width="100%" ForeColor="#333333" GridLines="None">
            <alternatingrowstyle backcolor="White" />
            <columns>
                <asp:TemplateField HeaderText="ID">
                    <itemtemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_ID">
                    <itemtemplate>
                        <a href="Books_Handler.aspx?ID=<%# Eval("Book_ID") %>">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_ID") %>'></asp:Label>
                        </a>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User_ID">
                    <itemtemplate>
                        <a href="Users_Handler.aspx?ID=<%# Eval("User_ID") %>">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                        </a>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Issue_Date">
                    <itemtemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Issue_Date") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Return_Date">
                    <itemtemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Return_Date") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Final Return Date">
                    <itemtemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Final_Return_Date") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Late Days">
                    <itemtemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Late_Days") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fine">
                    <itemtemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Fine") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <itemtemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Details">
                    <itemtemplate>
                        <a href="Issue_Handler.aspx?ID=<%# Eval("ID") %>&OP=Edit" id="alink">View Details</a>
                    </itemtemplate>
                </asp:TemplateField>
            </columns>
            <editrowstyle backcolor="#2461BF" />
            <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
            <rowstyle backcolor="#EFF3FB" />
            <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
            <sortedascendingcellstyle backcolor="#F5F7FB" />
            <sortedascendingheaderstyle backcolor="#6D95E1" />
            <sorteddescendingcellstyle backcolor="#E9EBEF" />
            <sorteddescendingheaderstyle backcolor="#4870BE" />
        </asp:GridView>
</asp:Content>

