using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_MasterPage : System.Web.UI.MasterPage
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

            string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            conn = new SqlConnection(con);

            string str = "select * from users where email='" + Session["user"] + "'";
            da = new SqlDataAdapter(str, conn);
            ds = new DataSet();
            da.Fill(ds);

            lbluser.Text = Session["user"].ToString();

            string uid = ds.Tables[0].Rows[0]["Id"].ToString();
            string strr = "select * from cart where c_uid='" + uid + "'";
            da = new SqlDataAdapter(strr, conn);
            ds = new DataSet();
            da.Fill(ds);
        }
        else
        {
            Response.Redirect("login.aspx");
        }

       

    
        
    }
    
}
