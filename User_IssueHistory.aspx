<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="User_IssueHistory.aspx.cs" Inherits="ReaderZ_LMS.User_IssueHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <h1 style="margin-top: 10%" class="text-center text-secondary mb-5 font-weight-bold">Books Issue History</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" Width="95%" ForeColor="#333333" GridLines="None" CssClass="m-4">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_ID">
                <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_ID">
                <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Final Return Date">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Final_Return_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Late Days">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Late_Days") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fine">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Fine") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
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

