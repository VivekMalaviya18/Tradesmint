<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="user_cart" %>

<!DOCTYPE html>

<htm xmlns="http://www.w3.org/1999/xhtml">
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
<body style="background-color: #eee;">
    <form id="form1" runat="server">
    <div>
        <section class="h-100" >
  <div class="container h-100 py-5">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-10">

        <div class="d-flex justify-content-between align-items-center mb-4">
          <h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
            
        </div>
          <asp:Repeater runat="server" ID="rptproduct">
              <ItemTemplate>
                 
        <div class="card rounded-3 mb-4">   
          <div class="card-body p-4">
            <div class="row d-flex justify-content-between align-items-center">
              <div class="col-md-2 col-lg-2 col-xl-2">
                <img
                  src='<%#Eval("c_img") %>'
                  class="img-fluid rounded-3" alt="Cotton T-shirt">
              </div>
              <div class="col-md-3 col-lg-3 col-xl-3">
                <p class="lead fw-normal mb-2"><%#Eval("c_name") %></p>
                <p><span class="text-muted">category: </span><%#Eval("c_category") %> </p>
              </div>
              
              <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                <h5 class="mb-0"><i class="fa fa-rupee-sign"></i>   <%#Eval("c_prize") %></h5>
              </div>
              <div class="col-md-1 col-lg-1 col-xl-1 text-end">
              <a href='deleteCartItem.aspx?cid=<%#Eval("Id") %>' class="btn-danger"><i class="fas fa-trash fa-lg"></i></a>
                 
              </div>
            </div>  
          </div>
              <asp:LinkButton runat="server" ID="btn_pay" type="button" OnCommand="btn_pay_Command" CommandArgument='<%#Eval("Id") %>' class="btn btn-warning btn-block btn-outline-light" Text="Proceed to Pay" />
        </div>
            
          </ItemTemplate>

          </asp:Repeater>
        
        <div>
          <div class="card-body">
            
           <asp:Button runat="server" ID="btn_return" OnClick="btn_return_click" class="btn btn-warning btn-block btn-outline-light" Text="Back to Return" />
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
    
    </div>
    </form>
</body>
</htm l>
