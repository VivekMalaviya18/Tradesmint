<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="user_contact" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

           <title>Contact V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="css/styles.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt d-flex justify-content-center align-items-center">
				<img src="../../img/i1.png" alt="IMG">
			</div>

			<form class="contact1-form validate-form">
				<span class="contact1-form-title">
					Get in touch
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Name is required">
					<asp:TextBox runat="server" ID="txt_name" class="input1" placeholder="Name"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<asp:TextBox runat="server" ID="txt_subject"  class="input1" placeholder="Subject"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<asp:TextBox  Height="100px" runat="server" ID="txt_msg" class="input1" name="message" placeholder="Message"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
                      <i class="fa fa-long-arrow-right" aria-hidden="true">
					<asp:button runat="server" ID="btn_submit" Text="submit"  class="contact1-form-btn" OnClick="btn_submit_Click">
							
					</asp:button>
                  </i>
				</div>
			</form>
		</div>
	</div>
</asp:Content>

