<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Admin.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.Login_Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page - Reader Z</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/form.css" />
    <style>
        body {
            background-image:url("img/login-bg.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
    </style>
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
                            <img src="img/Admin_Icon.png" class="userIcon"/>
                        </div>
                    </div>
                    <div class="form-wrap">
                        <div class="form-item">
                            <label>Username</label>
                            <asp:TextBox ID="txtUname" runat="server" CssClass="ip"></asp:TextBox>
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
                    <br />
                </div>
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
