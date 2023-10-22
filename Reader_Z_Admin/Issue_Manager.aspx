<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Issue_Manager.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Issue_Requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container-fluid text-center">

        <h1 class="mb-4 font-weight-bold">Books Issue Manager</h1>

            <div class="row">
                <div class="col-lg-2  mt-3 mb-4 pb-1">
                    <asp:DropDownList ID="ddStatus" runat="server" CssClass="h-100 w-100 p-2" AutoPostBack="True" OnSelectedIndexChanged="ddStatus_SelectedIndexChanged">
                        <asp:ListItem>ALL BOOKS</asp:ListItem>
                        <asp:ListItem>REQUESTED</asp:ListItem>
                        <asp:ListItem>ISSUED</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-10 mt-3 mb-4 text-right">
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control w-25 d-inline border-secondary" placeholder="Enter Book ID"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" CssClass="ml-2 d-inline btn btn-primary mb-1" Text="Search Book" OnClick="btnSearch_Click"/>
                </div>
            </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" Width="100%" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_ID">
                    <ItemTemplate>
                        <a href="Books_Handler.aspx?ID=<%# Eval("Book_ID") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_ID") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User_ID">
                    <ItemTemplate>
                        <a href="Users_Handler.aspx?ID=<%# Eval("User_ID") %>"><asp:Label ID="Label3" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Issue_Date">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Issue_Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Return_Date">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Return_Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                        <a href="Issue_Handler.aspx?ID=<%# Eval("ID") %>&OP=Manage">View Details</a>
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

