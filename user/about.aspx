<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="user_about" %>

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
          <link href="../css/ab.css" rel="stylesheet" />
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <section class="section ">
        <div class="container shadow">
                        <div class="product">
                            <div class="container">
                                  <div class="image">
                                  <asp:Image ID="img_prod" runat="server" CssClass="d-block m-lg-4" Height="500px" Width="650px" ImageUrl="../img/t5.jpg" />   
                                </div>
                                <div class="text">
	<h5><b>Hello,there it's team of TradesMint and we provide our customers to trading courses for them to gain trading knowledge an make some money from diffrent markets. We provide best and deeply analysed courses to our customer and make knowledgable about the differnt markets. We are passionate to helping people to make more good and thrilled courses for them.</b>
	<i class="fa fa-location-arrow" aria-hidden="true">&nbsp; &nbsp; Amreli, GJ 365601, INDIA</i></h5>
</div>

</div>
						</div>
                        </div>
    </section>


</asp:Content>

