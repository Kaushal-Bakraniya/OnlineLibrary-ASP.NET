<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Issue_Handler.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Issue_Handler" %>

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
                                        <asp:Label ID="lblHeader" runat="server" Text="Edit Record"></asp:Label>
                                    </h2>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Book Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtBookName" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">User Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtUserName" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Issue Date</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtIssueDate" runat="server" class="form-control" type="date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Return Date</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtReturnDate" runat="server" class="form-control" type="date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Final Return Date</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtFinalDate" runat="server" class="form-control" type="date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Late Days</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtLateDays" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Fine</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtFine" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Status</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:DropDownList ID="ddStatus" CssClass="form-control" runat="server">
                                        <asp:ListItem>REQUESTED</asp:ListItem>
                                        <asp:ListItem>ISSUED</asp:ListItem>
                                        <asp:ListItem>RETURNED</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnSubmit" class="btn btn-primary mt-3 mr-3" runat="server" OnClick="btnSubmit_Click" Text="Edit Record"/>
                                    <asp:Button ID="btnDelete" class="btn btn-danger mt-3 mr-4" runat="server" Text="Delete" OnClick="btnDelete_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

