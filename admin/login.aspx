    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TradesMint Admin</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>
<form runat="server">
<body class="bg-gradient-primary">

    <div class="container" style="margin-top:25px;">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image">
                           <img src="../img/t6.jpg" height="500px" />
                            </div>
                            <div class="col-lg-6">
                                 <h2 style="background-color:#4e73df;margin-top:50px; border-top-left-radius:25px;
                                        text-align:center; border-bottom-left-radius:25px; color:whitesmoke"
                                      ><b>Welcome Back!</b></h2> 
                                <div class="p-5">
                                    <div class="text-center></div>
                                    <form class="user">
                                        <div class="form-group">
                                           
                                            <asp:TextBox runat="server" CssClass="form-control form-control-user"
                                                ID="txt_email" placeholder="Enter Email Address..." required></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                           

                                            <asp:TextBox runat="server" CssClass="form-control form-control-user"
                                                ID="txt_pass" placeholder="Password" TextMode="Password" required></asp:TextBox>
                                        </div>
                                     
                                     
                                        <asp:Button runat="server" ID="btn_login" CssClass="btn btn-primary btn-user btn-block" Text="Login" OnClick="btn_login_Click" /> 
                                        
                                        
                                        <a href="register.aspx">Register Here!!</a>
                                    </form>
                                    <hr>
                                    <div style="text-align: center;display: inherit;">
                                    <asp:Label runat="server" ForeColor="Red" Font-Bold ID="lbl_error" ></asp:Label>
                                </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>
    
    </form>
    </body>
</html>
