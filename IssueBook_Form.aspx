<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="IssueBook_Form.aspx.cs" Inherits="ReaderZ_LMS.IssueBook_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <br /><br /><br />
    <div class="container mb-5 mt-5">
        <div class="main-body">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-7 fix-details">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-12 text-dark">
                                    <h3 class="font-weight-bold ml-1 pb-1">Issue <asp:Label ID="lblBookName" runat="server" Text="Label"></asp:Label></h3>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Book Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox runat="server" class="form-control bg-white" id="txtBookName" readonly/>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">User Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox runat="server" class="form-control bg-white" id="txtUserEmail" readonly/>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Issue Date Date</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="Issue_Date" runat="server" class="form-control" type="date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Return Date</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="Return_Date" runat="server" class="form-control" type="date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mb-0">
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnIssue" runat="server" Text="Issue This Book" class="btn btn-primary mt-3 mr-3" OnClick="btnIssue_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

