<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="EBooks_Manager.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.EBooks_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container-fluid text-center pt-2">

        <h1 class="mb-4 font-weight-bold">E-Books Manager</h1>

               <div class="row">
                <div class="col mt-3 mb-4 text-right">
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter E-Book Name" CssClass="form-control w-25 d-inline border-secondary"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" CssClass="ml-2 d-inline btn btn-primary mb-1" Text="Search Book" OnClick="btnSearch_Click"/>
                </div>
            </div>
     

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" Width="100%" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AudioBook_Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("EBook_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author_Name">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No_of_Pages">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("No_of_Pages") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Downloads">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Downloads") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Audio_File">
                    <ItemTemplate>
                        <a href="../<%# Eval("PDF_File") %>">View <%# Eval("EBook_Name") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cover_Photo">
                    <ItemTemplate>
                        <img ID="Image1" src='../<%# Eval("Cover_Photo") %>' style="height:100px;width:100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <a href="EBooks_Handler.aspx?ID=<%# Eval("ID") %>">Edit</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="cmd_delete" runat="server" CommandName="cmd_delete" CommandArgument='<%# Eval("ID") %>'>Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
</asp:Content>

