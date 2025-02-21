<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="coursepage.aspx.cs" Inherits="admin_coursepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h2 class="animate-character"><underline>Payment info</underline></h2>
                            </div>
                        </div>
                    </div>


    <asp:GridView ID="grdcoursepage" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="p_id" HeaderText="p_id" SortExpression="p_id" />
            <asp:BoundField DataField="c_number" HeaderText="c_number" SortExpression="c_number" />
            <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
            <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="Delete" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [payment_info] WHERE [Id] = @Id" InsertCommand="INSERT INTO [payment_info] ([email], [p_id], [c_number], [c_name], [cvv], [date], [total]) VALUES (@email, @p_id, @c_number, @c_name, @cvv, @date, @total)" SelectCommand="SELECT * FROM [payment_info]" UpdateCommand="UPDATE [payment_info] SET [email] = @email, [p_id] = @p_id, [c_number] = @c_number, [c_name] = @c_name, [cvv] = @cvv, [date] = @date, [total] = @total WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="p_id" Type="String" />
        <asp:Parameter Name="c_number" Type="String" />
        <asp:Parameter Name="c_name" Type="String" />
        <asp:Parameter Name="cvv" Type="String" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="total" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="p_id" Type="String" />
        <asp:Parameter Name="c_number" Type="String" />
        <asp:Parameter Name="c_name" Type="String" />
        <asp:Parameter Name="cvv" Type="String" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="total" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

