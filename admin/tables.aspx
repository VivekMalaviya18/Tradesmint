<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="tables.aspx.cs" Inherits="admin_tables" %>

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
    
    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                
                                <h1 class="animate-character"><b>Admin</b></h1>
                            </div>
                        </div>
                    </div>
                                <div class="grdcls">   
                                <asp:GridView runat="server" CssClass="table table-bordered" ID="grd_admin" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:CommandField DeleteText="  Delete" HeaderText="Operations" ControlStyle-CssClass="btn btn-facebook" ShowEditButton="True" />
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>        
                     
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [admin] ([firstname], [lastname], [email], [mobile], [password]) VALUES (@firstname, @lastname, @email, @mobile, @password)" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE [admin] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [mobile] = @mobile, [password] = @password WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="firstname" Type="String" />
                                        <asp:Parameter Name="lastname" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="mobile" Type="String" />
                                        <asp:Parameter Name="password" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="firstname" Type="String" />
                                        <asp:Parameter Name="lastname" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="mobile" Type="String" />
                                        <asp:Parameter Name="password" Type="String" />
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                     
                            </div>


     <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                
                                <h1 class="animate-character"><b>Users</b></h1>
                            </div>
                        </div>
                    </div>
                                <div class="grdcls">   
                                <asp:GridView runat="server" ID="grd_user" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:CommandField EditText="Edit" HeaderText="Operataions" ControlStyle-CssClass="btn btn-facebook" ShowEditButton="True" >                                 
<ControlStyle CssClass="btn btn-facebook"></ControlStyle>
                                        </asp:CommandField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server"  CommandName="Delete">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    </asp:GridView>
                     
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([firstname], [lastname], [email], [mobile], [password]) VALUES (@firstname, @lastname, @email, @mobile, @password)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [mobile] = @mobile, [password] = @password WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="firstname" Type="String" />
                                            <asp:Parameter Name="lastname" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="mobile" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="firstname" Type="String" />
                                            <asp:Parameter Name="lastname" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="mobile" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                     
                            </div>
</asp:Content>

