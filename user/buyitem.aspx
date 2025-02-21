<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="buyitem.aspx.cs" Inherits="user_buyitem" %>

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
        <link href="style.css" rel="stylesheet" />
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section ">
        <div class="container shadow">
            <div class="row p-3">
                <div class="col-lg-7">
                    <div class="product-details">
                        <div class="product">
                            <div>  
                                   <div>
                                        <asp:Repeater ID="rpt_imgs" runat="server">
                                            <ItemTemplate>
                                                <div>
                                                    <asp:Image ID="img_prod" runat="server" CssClass="d-block m-lg-4" Height="300px" Width="500px" ImageUrl='<%#Eval("c_img") %>'/>
                                                </div>
                                           
                                    </div>
                                
                            </div>
                            <div class="tab-content" id="pills-tabContent">
							<div class="mt-5 ">
								<h5 class="tab-title">Product Description</h5>
								<p><%#Eval("c_disc") %></p>
							</div>
							
						</div>
                        </div>
                        <!-- product slider -->
                    </div>
                </div>
                <div class="col-lg-5" style="align-items:center;">
                    <div class="widget user" style="margin-top:20px;">
                        <h3 class="product-title">
                            <asp:Label ID="lbl_auc_name" runat="server"><%#Eval("c_name") %></asp:Label></h3>
                       
                        <div class="card p-3 mt-3">
                            
                                <div class="mt-2">
                                    <p class="p-0 m-0">Price</p>
                                    <h5>₹<asp:Label ID="lbl_current_bid" runat="server"><%#Eval("c_prize") %></asp:Label></h5>
                                </div>
                           
                            <div class="mt-3">
                               <p class="p-0 m-0">Category:   <%#Eval("c_category") %></p>
                              <p class="p-0 m-0"></p>
                            </div>
                            <div class="mt-3"> 
                                <asp:Button ID="btn_bid" runat="server" Text="Place Order"  CssClass="btn btn-dark" OnClick="btn_bid_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         </ItemTemplate>
         </asp:Repeater>

        <!-- Container End -->
    </section>
</asp:Content>

