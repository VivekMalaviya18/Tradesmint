<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register"  EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg mt-5 ">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image">
                        <img src="../img/t2.png" height="500px" width="500px" />
                    </div>
                    <div class="col-lg-7">
                        <div style="margin-top:40px;">
                                  <h2 style="background-color:#4e73df;margin-top:50px; border-top-left-radius:25px;
                                        text-align:center; border-bottom-left-radius:25px; color:whitesmoke"


                                      ><b>Tradesmint.com</b></h2>
                                        
                            </div>
                        <div class="p-5">
                            
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><b>Create an Account!</b></h1>
                            </div>
                            
                            <form class="user">
                                
                                <div class="form-group row">
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                       
                                        <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control form-control-user"
                                             placeholder="First Name" required></asp:TextBox>

                                    </div>
                                    <div class="col-sm-6">
                                            
                                        <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control form-control-user"
                                             placeholder="Last Name" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                   
                                        <asp:TextBox runat="server" ID="txt_email" placeholder="Email"
                                            CssClass="form-control form-control-user" required></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                       
                                         <asp:TextBox runat="server" ID="txt_mobile"  placeholder="Mobile"
                                            CssClass="form-control form-control-user" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        
                                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" CssClass="form-control form-control-user"
                                             placeholder="Password" required></asp:TextBox>
                                    </div>
                                  
                                </div>
                                
                                <asp:Button ID="btn_register" runat="server" Text="Register Account" CssClass="btn btn-primary btn-user btn-block" OnClick="btn_register_Click" /> 

                                <a href="login.aspx" >Already An Account?</a>
                                
                            </form>
                         
                         
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
