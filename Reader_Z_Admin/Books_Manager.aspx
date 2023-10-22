<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Books_Manager.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Books_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container-fluid text-center pt-2">

        <h1 class="mb-4 font-weight-bold">Books Manager</h1>

               <div class="row">
                <div class="col mt-3 mb-4 text-right">
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Book Name" CssClass="form-control w-25 d-inline border-secondary"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" CssClass="ml-2 d-inline btn btn-primary mb-1" Text="Search Book" OnClick="btnSearch_Click"/>
                </div>
            </div>
     

        <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" ID="GridView1" OnRowCommand="GridView1_RowCommand" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <alternatingrowstyle backcolor="White" />
            <columns>
                <asp:TemplateField HeaderText="ID">
                    <itemtemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_Name">
                    <itemtemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_Name") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author_Name">
                    <itemtemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No_of_Copies">
                    <itemtemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("No_of_Copies") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cover_Photo">
                    <itemtemplate>
                        <img ID="Image1" src='../<%# Eval("Cover_Photo") %>' style="height:100px;width:100px" />
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <itemtemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <itemtemplate>
                        <a href="Books_Handler.aspx?ID=<%# Eval("ID") %>">Edit</a>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <itemtemplate>
                        <asp:LinkButton ID="cmd_delete" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
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
    </div>
</asp:Content>

