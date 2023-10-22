<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="ReaderZ_LMS.Edit_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- User Account Start -->
    <div class="container mb-5 mt-5 pt-5">
        <div class="main-body mt-5">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 fix-details">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-12 text-dark">
                                    <h2 class="font-weight-bold ml-1 pb-1">Account Settings</h2>
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Registration ID</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtRegID" class="form-control " runat="server" />
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtName" class="form-control " runat="server" />
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Gender</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:DropDownList ID="ddGender" runat="server" CssClass="form-control">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Phone</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtContact" class="form-control " runat="server" />
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtEmail" class="form-control " runat="server" />
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Address</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtAddress" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">City</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:DropDownList ID="ddCity" runat="server" CssClass="form-select"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Password</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server"/>
                                </div>
                            </div>
                            <div class="row mb-2 mt-4">
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary mt-3 mr-3" Text="Save Details" OnClick="btnEdit_Click" CausesValidation="False" />
                                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger mt-3 mr-3" Text="Permenantly Delete Account" OnClick="btnDelete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- User Account End -->
</asp:Content>

