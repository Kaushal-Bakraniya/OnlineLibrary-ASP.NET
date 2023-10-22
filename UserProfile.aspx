<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ReaderZ_LMS.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <!-- User Account Start -->
    <div class="container" style="margin-top: 10%">
        <div class="main-body">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center mt-3">
                                <asp:Image ID="uimg" runat="server" Width="169" Height="169" alt="Admin"
                                    class="rounded-circle p-1 bg-primary" />
                                <div class="mt-5">
                                    <h4>
                                        <asp:Label ID="uname" runat="server" Text="Name"></asp:Label></h4>
                                    <p class="text-secondary mt-4">
                                        <asp:Label ID="uemail" runat="server" Text="Email"></asp:Label>
                                    </p>
                                    <p class="text-secondary mt-4">
                                        <asp:Label ID="uaddress" runat="server" Text="Address"></asp:Label>,
                                        <asp:Label ID="ucity" runat="server" Text="City"></asp:Label>
                                    </p>
                                    <asp:Button ID="btnLogout" CssClass="btn btn-primary mt-3 mb-3" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 fix-details">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Registration ID</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtRegID" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtName" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Gender</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtGender" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtEmail" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Contact No.</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtContact" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">Address</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtAddress" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mt-3">City</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <asp:TextBox ID="txtCity" class="form-control bg-white" runat="server" value="text" ReadOnly="true" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 mt-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="mb-0">
                                <i class="fa fa-cog ml-2"></i>&emsp;<a href="Edit_Profile.aspx"
                                    style="color: black;">Edit Profile</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 mt-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="mb-0">
                                <i class="fa fa-book ml-2"></i>&emsp;<a href="User_IssuedBooks.aspx"
                                    style="color: black;">View Books Issued By You</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col mt-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="mb-0">
                                <i class="fa fa-book ml-2"></i>&emsp;
                                <a href="User_IssueHistory.aspx"
                                    style="color: black;">Book Issue History</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col mt-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="mb-0">
                                <i class="fa fa-cog ml-2"></i>&emsp;
                                <a href="Feedback_Form.aspx"
                                    style="color: black;">Give Your Feedback</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- User Account End -->

</asp:Content>

