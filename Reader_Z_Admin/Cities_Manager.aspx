<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Cities_Manager.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Cities_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container mb-5 fix-container fix-2">
        <div class="main-body">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 fix-details">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-12 text-dark">
                                    <h2 class="font-weight-bold ml-1 pb-1">
                                        <asp:Label ID="lblHeader" runat="server" Text="Manage Cities"></asp:Label>
                                    </h2>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Enter City Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtCity" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-3">
                                    <asp:Button ID="btnSubmit" class="btn btn-primary mt-3 mr-3" runat="server" Text="Add New City" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="p-5">
            <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" ID="GridView1" Width="100%" CssClass="text-center" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="cmd_edit">Edit </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
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
    </div>
</asp:Content>

