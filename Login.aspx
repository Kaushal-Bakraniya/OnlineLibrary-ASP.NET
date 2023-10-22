<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReaderZ_LMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page - Reader Z</title>
    <link rel="stylesheet" type="text/css" href="assets/css/form.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper login">
            <div class="form-container">
                <div class="form">
                    <div class="heading">
                        <h2>Login Form - Reader Z</h2>
                    </div>
                    <div class="form-wrap fit">
                        <div class="form-item ">
                            <img src="assets/images/Form/Icon.png" class="userIcon"/>
                        </div>
                    </div>
                    <div class="form-wrap">
                        <div class="form-item">
                            <label>Email Address</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="ip"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-wrap">
                        <div class="form-item">
                            <label>Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="ip" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="btn">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="ip" Text="Log In" OnClick="btnSubmit_Click" />
                    </div>
                </div>
                <p>Dont have a account ? <a href="SignUp.aspx">Create Account</a></p>
            </div>
        </div>
        <footer>
            <p class="cc">Copyright &copy;
                <script>document.write(new Date().getFullYear())</script>
                - Reader Z Foundation</p>
        </footer>
    </form>
</body>
</html>
