using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class register : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        String sInsert = "Insert into users values(@fname,@lname,@email,@mobile,@pass)";
        SqlCommand cmd = new SqlCommand(sInsert, conn);


        cmd.Parameters.AddWithValue("@fname", txt_fname.Text);
        cmd.Parameters.AddWithValue("@lname", txt_lname.Text);
        cmd.Parameters.AddWithValue("@email", txt_email.Text);
        cmd.Parameters.AddWithValue("@pass", txt_pass.Text);
        cmd.Parameters.AddWithValue("@mobile", txt_mobile.Text);


        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<alert>data not Submitted!!</alert>");
        }


    }
}