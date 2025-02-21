using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_addcartitem : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        int id = Convert.ToInt32(Request.QueryString["cid"]);
        string seluser=Session["user"].ToString();
        da=new SqlDataAdapter("select * from users where email='"+seluser+"'",con);
        ds=new DataSet();
        da.Fill(ds);
        string InCart = "INSERT INTO cart VALUES (" + id + ","+ds.Tables[0].Rows[0]["Id"].ToString()+")";
        SqlCommand cmd = new SqlCommand(InCart, conn);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}
