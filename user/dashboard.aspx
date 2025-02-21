<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="user_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TradesMint</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Header-->
       <header class="bg-dark">
          
               <div class="img d-flex justify-content-center align-items-center">
                  <div class="text-center">
                    <h1 class="display-4 fw-bolder">DARE TO TRADE</h1>
                </div>
               </div>
           
            <div class="container">
                
            </div>
        </header>
    <div class="drpmenu col-md-3 p-2 mb-5">
        <asp:DropDownList ID="ddlCate" runat="server" AutoPostBack="true" AppendDataBoundItems="true" CssClass="dropdown form-select m-2" OnSelectedIndexChanged="ddlCate_SelectedIndexChanged">
            <asp:ListItem Value="0">--Select Category--</asp:ListItem>
        </asp:DropDownList>
    </div>
     <!-- Section-->
        <section class="py">
            <div class="container px-4 px-lg-5 mt-5">                
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <asp:Repeater ID="rptimg" runat="server">
                        <ItemTemplate>                       
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                             <img src='<%#Eval("c_img") %>' class="card-img-top" height="180"/>
                            <!-- Product details-->
                            <div class="card-body">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%#Eval("c_name") %></h5>
                                    <!-- Product price-->
                                    <i class="fa fa-rupee-sign" style="color:coral;"></i> <b style="color:coral;"><%#Eval("c_prize") %></b>
                                    <br />
                                    <br /> 
                                    <b style="color:coral;"><%#Eval("c_category") %></b>
                                    
                                </div>
                                <hr />
                               <p><%#Eval("c_disc") %></p>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div>
                                    <a class="btn btn-success btn-outline-dark mt-auto"  href='buyitem.aspx?pid=<%#Eval("Id") %>' style="margin-left:10px;"><i class="fa fa-shopping-bag"></i>  Buy</a>
                                    <a class="btn btn-warning btn-outline-dark mt-auto" href='addcartitem.aspx?cid=<%#Eval("Id")%>' style="margin-left:10px;"><i class="fa fa-cart-plus"></i>   Cart</a>

                                </div>
                            </div>
                        </div>                    
                    </div>                       
                    </ItemTemplate>
                    </asp:Repeater>
                                                        
                </div>

            </div>     
                         
        </section>          
     
    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../js/demo/chart-area-demo.js"></script>
    <script src="../js/demo/chart-pie-demo.js"></script>
  
</asp:Content>

