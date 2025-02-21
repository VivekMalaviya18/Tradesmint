<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="admin_addcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Trades Mint</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-center"><b>Add Course</b></h1>
  <div class="container">

        <div class="card o-hidden border-0 shadow-lg ">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image " >
                        <img src="../img/t1.png" height="500px" />
                    </div>

                    <div class="col-lg-7" style="background-color:white;">
                        <div style="margin-top:20px;">
                                 
                            </div>
                        <div class="pr-5">
                        
                            <div class="user">
                                
                                <div class="form-group row">
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                       <%--<label style="margin-left:100px;"><b>Course Name</b></label>--%>
                                        <asp:TextBox ID="txt_course" runat="server" CssClass="form-control form-control-user"
                                             placeholder="Course Name" required></asp:TextBox>

                                    </div>
                                    <div class="col-sm-6">
                                         <%--<label style="margin-left:100px;"><b>Prize</b></label>    --%>
                                        <asp:TextBox ID="txt_prize" runat="server" CssClass="form-control form-control-user"
                                             placeholder="Prize" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row" >
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                   
                                        <asp:TextBox runat="server" ID="txt_disc" placeholder="Discription"
                                            CssClass="form-control" Font-Size="Smaller" TextMode="MultiLine" required></asp:TextBox>
                                        
                                    </div>

                                     <div class="col-sm-6" style="border:solid 2px; border-radius:15px 0px 15px 0px;">
                                        
                                         <span><b>Choose Image</b></span>
                                        <asp:FileUpload runat="server" ID="file1" CssClass="mt-3" required></asp:FileUpload>
                                    </div>
                                    <div class="col-sm-6" style="border:solid 2px;
                                                         border-radius:0px 15px 0px 15px;margin-left:5px;">
                                                          
                                        <span><b>Choose ZIP File</b></span>                     
                                        <asp:FileUpload runat="server" ID="fu" CssClass="mt-3" required></asp:FileUpload>

                                    </div>
                                   
                                </div>
                                <div class="form-group row" style="margin-left:2px;">
                                      <asp:DropDownList ID="ddl_cat" runat="server" DataSourceID="SqlDataSource1" DataTextField="ca_name" DataValueField="ca_name" required></asp:DropDownList>
                                   
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [ca_name] FROM [category]" ></asp:SqlDataSource>
                                   
                                </div>
                                
                                <div style="margin-left:270px; margin-top:40px;">
                                 <asp:Button runat="server" ID="btn_submit" CssClass="btn-primary" Text="submit" OnClick="btn_submit_Click" style="border:ridge black 2px; height:30px; width:100px;"/>
                               </div>
                            </div> 
                                  
                      </div>
                                
                              <asp:Label runat="server" ID="Label1" style="color:green"></asp:Label>
                            </div> 
                </div>
                         
            </div>
     
        </div>

    </div>

</asp:Content>

