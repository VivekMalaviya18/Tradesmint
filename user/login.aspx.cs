using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login:System.Web.UI.Page
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


    protected void btn_login_Click(object sender, EventArgs e)
    {
        string sel = "select * from users where email='" + txt_email.Text + "' AND password='" + txt_pass.Text + "'";
        da = new SqlDataAdapter(sel, conn);
        ds = new DataSet();
        da.Fill(ds);


        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["uid"] = ds.Tables[0].Rows[0]["Id"].ToString();
            Session["user"] = txt_email.Text;
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            lbl_error.Text = "Email And Password Are Incorrect!!";
        }
    }
}