<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="admin_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--button-->
      <div style="margin-left:50px;"> <div>


          <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                
                                <h2 class="animate-character"><u>COURSES</u></h2>
                            </div>
                        </div>
                    </div>
     
      <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" Width="1000px" BorderWidth="1px"   >
      <FooterStyle BackColor="White" ForeColor="#000066" />
      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
      <RowStyle ForeColor="#000066" />
      
       <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="P_Id" />
           <asp:BoundField DataField="c_name" HeaderText="Name" 
                SortExpression="P_Name" />


            <asp:ImageField DataImageUrlField="c_img" HeaderText="Image" controlStyle-Height="100px" ControlStyle-Width="100px" >


<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>


            <asp:BoundField DataField="c_disc" HeaderText="Discription" 
                SortExpression="P_discription" />
            <asp:BoundField DataField="c_prize" HeaderText="Price" 
                SortExpression="P_Price" />
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" HeaderText="Delete" 
                ShowDeleteButton="True"  >

<ControlStyle CssClass="btn btn-danger"></ControlStyle>
            </asp:CommandField>

           <asp:CommandField ButtonType="Button" HeaderText="Update" ControlStyle-CssClass="btn btn-info" ShowEditButton="True" >


<ControlStyle CssClass="btn btn-info"></ControlStyle>
            </asp:CommandField>


        </Columns>

    


      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
      <SortedAscendingCellStyle BackColor="#F1F1F1" />
      <SortedAscendingHeaderStyle BackColor="#007DBB" />
      <SortedDescendingCellStyle BackColor="#CAC9C9" />
      <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
          SelectCommand="SELECT * FROM [courses]" DeleteCommand="DELETE FROM [courses] WHERE [Id] = @Id" InsertCommand="INSERT INTO [courses] ([c_name], [c_prize], [c_disc], [c_img], [c_category], [c_file]) VALUES (@c_name, @c_prize, @c_disc, @c_img, @c_category, @c_file)" UpdateCommand="UPDATE [courses] SET [c_name] = @c_name, [c_prize] = @c_prize, [c_disc] = @c_disc, [c_img] = @c_img, [c_category] = @c_category, [c_file] = @c_file WHERE [Id] = @Id">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="c_name" Type="String" />
              <asp:Parameter Name="c_prize" Type="String" />
              <asp:Parameter Name="c_disc" Type="String" />
              <asp:Parameter Name="c_img" Type="String" />
              <asp:Parameter Name="c_category" Type="String" />
              <asp:Parameter Name="c_file" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="c_name" Type="String" />
              <asp:Parameter Name="c_prize" Type="String" />
              <asp:Parameter Name="c_disc" Type="String" />
              <asp:Parameter Name="c_img" Type="String" />
              <asp:Parameter Name="c_category" Type="String" />
              <asp:Parameter Name="c_file" Type="String" />
              <asp:Parameter Name="Id" Type="Int32" />
          </UpdateParameters>
          
          
      </asp:SqlDataSource>
     </div>
     </div>
     </div>
</asp:Content>

