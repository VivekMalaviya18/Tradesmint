using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class user_contact : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string urs = Session["user"].ToString();

        string ins = "insert into contact_info values(@name,@email,@subject,@message)";
        SqlCommand cmd = new SqlCommand(ins,conn);

        cmd.Parameters.AddWithValue("@name",txt_name.Text);
        cmd.Parameters.AddWithValue("@email",urs);
        cmd.Parameters.AddWithValue("@subject",txt_subject.Text);
        cmd.Parameters.AddWithValue("@message",txt_msg.Text);

        int a = cmd.ExecuteNonQuery();

        if(a>0)
        {
            Response.Write("Done");
        }
        else
        {
            Response.Write("Error!!");
        }
    }
}