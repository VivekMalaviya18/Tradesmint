using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

      string admin = Session["admin"].ToString();
      string sel = "select * from admin where email='" + admin + "'";
      da = new SqlDataAdapter(sel, conn);
      ds = new DataSet();
      da.Fill(ds);

      lbl_admin.Text = admin;
     
            
       

    }

}
