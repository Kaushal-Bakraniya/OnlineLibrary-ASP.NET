<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Feedback_Form.aspx.cs" Inherits="ReaderZ_LMS.Feedback_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <br />
    <br />
    <br />
    <div class="container mb-5 mt-5">
        <div class="main-body">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-7 fix-details">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-12 text-dark">
                                    <h3 class="font-weight-bold ml-1 pb-1">Give Your Feedback</h3>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">User Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox runat="server" class="form-control bg-white" ID="txtUserName" ReadOnly/>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">User Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox runat="server" class="form-control bg-white" ID="txtUserEmail" ReadOnly />
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Feedback</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox runat="server" class="form-control bg-white" ID="txtFeedback"/>
                                </div>
                            </div>
                            <div class="row mb-0">
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnSend" runat="server" Text="Send Feedback" class="btn btn-primary mt-3 mr-3" OnClick="btnSend_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

