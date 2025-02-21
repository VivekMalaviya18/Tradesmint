<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="user_payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body style="background-color:lightblue;">
    <form id="form1" runat="server">
    <div>
    <section class="p-4 p-md-5">
  <div class="row d-flex justify-content-center">
    <div class="col-md-10 col-lg-8 col-xl-5">
      <div class="card rounded-3">
        <div class="card-body p-4">
          <div class="text-center mb-4">
            
            <h1>Payment</h1>
          </div>
          <form action="">
            

            <div class="d-flex flex-row align-items-center mb-4 pb-1">
              <img class="img-fluid" src="https://img.icons8.com/color/48/000000/mastercard-logo.png" />
              <div class="flex-fill mx-3">
                <div class="form-outline">
                  <asp:TextBox runat="server"  ID="txt_card" class="form-control form-control-lg"
                    placeholder="**** **** **** 3193" TextMode="Number" required />
                  <label class="form-label" for="formControlLgXc"><b>Card Number</b></label>
                </div>
              </div>          
            </div>

            

            <div class="form-outline mb-4">
              <asp:TextBox runat="server" ID="txt_name" class="form-control form-control-lg"
                placeholder="Anna Doe" required />
              <label class="form-label" for="formControlLgXsd"><b>Cardholder's Name</b></label>
            </div>

            <div class="row mb-4">
              
              <div class="col-3">
                <div class="form-outline">
                  <asp:TextBox runat="server" type="password" ID="txt_date" class="form-control form-control-lg"
                    placeholder="MM/YYYY" textmode="date" required />
                  <label class="form-label" for="formControlLgExpk"><b>Expire</b></label>
                </div>
              </div>
              <div class="col-3">
                <div class="form-outline">
                  <asp:TextBox runat="server" type="password" ID="txt_cvv" class="form-control form-control-lg"
                    placeholder="Cvv" required />
                  <label class="form-label" for="formControlLgcvv"><b>Cvv</b></label>
                </div>
              </div>
            </div>

            <asp:Button OnClick="btn_countinue_Click" runat="server" ID="btn_countinue" class="btn btn-success btn-lg btn-block" Text="Continue"></asp:Button>
           
          
         <b style="margin-left:60px;">Total:</b> <asp:Label ID="lbl_price" runat="server" for="formControlLgcvv"></asp:Label>
              
          </form>
        </div>
      </div>
        </section>
    </div>
  </div>

    </div>
        
    </form>
</body>
</html>
