using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        getcourses();
        totalrevenue();
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        string sel = "select * from admin";       
        da = new SqlDataAdapter(sel, conn);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            lbl_admins.Text = ds.Tables[0].Rows.Count.ToString();
         
        }
        string usel = "select * from users";
        da = new SqlDataAdapter(usel, conn);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            lbl_user.Text = ds.Tables[0].Rows.Count.ToString();
         
        }
    }

    public void getcourses()
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        string sel = "select * from courses";
        da = new SqlDataAdapter(sel, conn);
        ds = new DataSet();
        da.Fill(ds);

        lbl_course.Text = ds.Tables[0].Rows.Count.ToString();
    }

    public void totalrevenue()
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        string sel = "select SUM(total) AS Revenue from payment_info";
        da = new SqlDataAdapter(sel, conn);
        ds = new DataSet();
        da.Fill(ds);

        lbl_total.Text = ds.Tables[0].Rows[0][0].ToString();
    }
}