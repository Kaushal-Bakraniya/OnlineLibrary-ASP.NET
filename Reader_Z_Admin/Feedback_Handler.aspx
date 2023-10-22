<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="Feedback_Handler.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Feedback_Handler" %>

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
                                        <asp:Label ID="lblHeader" runat="server" Text="Review Feedbacks"></asp:Label>
                                    </h2>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">User_Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtUserEmail" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Feedback</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtFeedback" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-3">
                                    <asp:Button ID="btnSubmit" class="btn btn-primary mt-3 mr-3" runat="server" Text="Mark As Reviewed" OnClick="btnSubmit_Click" />
                                </div>
                                <div class="col-sm-5">
                                    <asp:Button ID="btnDelete" class="btn btn-danger mt-3 mr-3" runat="server" Text="Delete Review" OnClick="btnDelete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

