<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="user_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">                
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <asp:Repeater ID="rptpurchase" runat="server">
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
                                    
                                </div>
                                <hr />
                               <p><%#Eval("c_disc") %></p>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div>
                                    <asp:Button ID="btnDownload" runat="server" CssClass="btn btn-success btn-outline-dark mt-auto" style="margin-left:30px;" Text="Download" OnClick="btnDownload_Click" />                                    
                                </div>
                            </div>
                        </div>                    
                    </div>                       
                    </ItemTemplate>
                    </asp:Repeater>
                                                        
                </div>

            </div>     
                         
        </section>          

</asp:Content>


