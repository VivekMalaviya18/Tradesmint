using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_deleteCartItem : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        string conn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(conn);
        con.Open();

        string seluser = Session["user"].ToString();
        da = new SqlDataAdapter("select * from users where email='" + seluser + "'", con);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            int cid = Convert.ToInt32(Request.QueryString["cid"]);
            int uid = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
            string strDel = "DELETE FROM cart WHERE c_id = " + cid + " and c_uid = " + uid;
            try
            {
                cmd = new SqlCommand(strDel, con);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Redirect("cart.aspx");
                }
            }
            catch (Exception EX)
            {
                Response.Write(EX);
            }
        }
        else
        {
            Response.Write("error");
        }

    }

}