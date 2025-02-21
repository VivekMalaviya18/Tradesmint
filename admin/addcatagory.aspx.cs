using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_addcatagory : System.Web.UI.Page
{
    SqlConnection conn;   
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();
       
        
    }
  
    protected void btn_submit_Click1(object sender, EventArgs e)
    {
        String sInsert = "Insert into category values(@catname,@subcatname)";
        SqlCommand cmd = new SqlCommand(sInsert, conn);


        cmd.Parameters.AddWithValue("@catname", txt_catagory.Text);
        cmd.Parameters.AddWithValue("@subcatname", txt_subcatagory.Text);

   
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            
            lbl_message.Text = "Catagory has been added Successfully!!";
            txt_catagory.Text = "";
            txt_subcatagory.Text = "";

           
            
            
        }
        else
        {
            lbl_error.Text = "Something Went Wrong!!";
        }
    }
}