<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ReaderZ_LMS.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SignUp Page - Reader Z</title>
    <link rel="stylesheet" type="text/css" href="assets/css/form.css" />
</head>
<body>
    <form action="#" method="post" enctype="multipart/form-data" runat="server">
    <div class="wrapper">
        <div class="form-container">
            <div class="form">
                <div class="heading">
                    <h2>Registration Form</h2>
                </div>
                <div class="form-wrap fullname">
                    <div class="form-item">
                        <label>Enter Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                    <div class="form-item">
                        <label>Contact No.</label>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                </div>
                <div class="form-wrap">
                    <div class="form-item">
                        <label>Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                </div>
                <div class="form-wrap select-box">
                    <div class="form-item">
                        <label>Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                    <div class="form-item">
                        <label>City</label>
                        <asp:DropDownList ID="ddCity" runat="server" CssClass="ip"></asp:DropDownList>
                    </div>
                </div>
                <div class="form-wrap select-box">
                    <div class="form-item">
                        <label>Gender</label>
                        <asp:DropDownList ID="ddGender" runat="server" CssClass="ip">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-item">
                        <label>Profile Picture</label>
                        <asp:FileUpload ID="fileProfilePic" runat="server" CssClass="ip" />
                    </div>
                </div>
                <div class="form-wrap fullname">
                    <div class="form-item">
                        <label>Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                    <div class="form-item">
                        <label>Confirm Password</label>
                        <asp:TextBox ID="txtConfPassword" runat="server" CssClass="ip"></asp:TextBox>
                    </div>
                </div>
                <div class="btn">
                    <asp:Button ID="btnSubmit" runat="server" Text="Get Started" CssClass="ip" OnClick="btnSubmit_Click" />
                </div>
            </div>
            <p>Already have a account ? <a href="Login.aspx">Login Here</a></p>
        </div>
    </div>
    <footer>
        <p class="cc">
            Copyright &copy;
            <script>document.write(new Date().getFullYear())</script>
            - Reader Z Foundation
        </p>
    </footer>
    </form>
</body>
</html>
