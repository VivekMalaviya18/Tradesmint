using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_buyitem : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
    
        buypage();

    }

    public void buypage()
    {
        int id = Convert.ToInt32(Request.QueryString["pid"]);
        string str = "select * from courses where Id="+id;
        da = new SqlDataAdapter(str, conn);
        ds = new DataSet();
        da.Fill(ds);

        rpt_imgs.DataSource = ds;
        rpt_imgs.DataBind();

    }
   
    protected void btn_bid_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["pid"]);
        Response.Redirect("payment.aspx?pid="+id);
    }
}