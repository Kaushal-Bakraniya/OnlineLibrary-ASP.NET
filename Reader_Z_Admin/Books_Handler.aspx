<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Books_Handler.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Books_Handler" %>

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
                                        <asp:Label ID="lblHeader" runat="server" Text=""></asp:Label></h2>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Book Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtBookname" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Author Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtAuthorname" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Description</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtBookDescription" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">No of Copies</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtNoOfCopies" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Cover Photos</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:FileUpload ID="fileCoverPhoto" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Status</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:DropDownList ID="ddStatus" runat="server" CssClass="form-control">
                                        <asp:ListItem>AVAILABLE</asp:ListItem>
                                        <asp:ListItem>NOT AVAILABLE</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Language</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:DropDownList ID="ddLanguage" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Tags</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtTags" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnSubmit" class="btn btn-primary mt-3 mr-3" runat="server" Text="" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

