<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Feedback_Manager.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Feedback_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <div class="d-sm-flex align-items-center justify-content-between">
        <h1 class="h3 m-3 text-gray-800 font-weight-bold ml-4">Feedbacks</h1>
    </div>

    <div class="row px-4">
        <div class="col-lg-3  mt-3 mb-4 pb-1">
            <asp:DropDownList ID="ddStatus" runat="server" CssClass="h-100 w-100 p-2" AutoPostBack="True" OnSelectedIndexChanged="ddStatus_SelectedIndexChanged">
                <asp:ListItem>NOT REVIEWED</asp:ListItem>
                <asp:ListItem>REVIEWED</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-lg-9 mt-3 mb-4 text-right">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control w-25 d-inline border-secondary" placeholder="Enter User Email"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CssClass="ml-2 d-inline btn btn-primary mb-1" Text="Search Book" OnClick="btnSearch_Click"/>
        </div>
    </div>


    <div class="p-4">
        <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" ID="GridView1" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User_ID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("UID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Feedback">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Feedback").ToString().Substring(0,10) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                        <a href="Feedback_Handler.aspx?ID=<%# Eval("ID") %>">View Details</a>
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
    </div>
</asp:Content>

