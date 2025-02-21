<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="addcatagory.aspx.cs" Inherits="admin_addcatagory" %>

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
    <body>
          <div class="row justify-content-center">
                            
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"><b>Add Catagory</b></h1>
                                    </div>
                                    <div class="user">
                                        <div class="form-group">
                                           
                                            <asp:TextBox runat="server" CssClass="form-control form-control-user"
                                                ID="txt_catagory" placeholder="Add Catagory"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                           

                                            <asp:TextBox runat="server" CssClass="form-control form-control-user"
                                                ID="txt_subcatagory" placeholder="Enter Subcatagory" ></asp:TextBox>
                                        </div>
                                     
                                     
                                        <asp:Button runat="server" ID="btn_submit" CssClass="btn btn-primary btn-user btn-block" Text="submit" OnClick="btn_submit_Click1"  /> 
                                        
                                        
                                       
                                    </div>
                                    <hr>
                                    <div style="text-align: center;display: inherit;">
                                    <asp:Label runat="server" ForeColor="green" Font-Bold ID="lbl_message" ></asp:Label>
                                    <asp:Label runat="server" ForeColor="Red" Font-Bold ID="lbl_error" ></asp:Label>
                                </div>
                                    </div>
                            </div>
                        </div>
        <asp:GridView runat="server" CssClass="table table-bordered"   ID="grdcatagory" AutoGenerateColumns="False" DataKeyNames="Id"  DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ca_name" HeaderText="catagory" SortExpression="ca_name" />
                <asp:BoundField DataField="ca_subcatagory" HeaderText="subcatagory" SortExpression="ca_subcatagory" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [category] WHERE [Id] = @Id" InsertCommand="INSERT INTO [category] ([ca_name], [ca_subcatagory]) VALUES (@ca_name, @ca_subcatagory)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [ca_name] = @ca_name, [ca_subcatagory] = @ca_subcatagory WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ca_name" Type="String" />
                <asp:Parameter Name="ca_subcatagory" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ca_name" Type="String" />
                <asp:Parameter Name="ca_subcatagory" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <div class="container" style="margin-top:25px;">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                      
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

    </body>
</asp:Content>

