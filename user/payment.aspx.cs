using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_payment : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        getcourseinfo();
        getcourseinfo1();
       
    }

    public void getcourseinfo()
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        
        string ins = "SELECT * FROM courses where Id=" + Request.QueryString["pid"].ToString();
        da = new SqlDataAdapter(ins, conn);
        ds = new DataSet();
        da.Fill(ds);

        lbl_price.Text = ds.Tables[0].Rows[0]["c_prize"].ToString();
        
       

    }

    public void getcourseinfo1()
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);

        string ins = "SELECT * FROM courses where Id=" + Request.QueryString["pid"].ToString();
        da = new SqlDataAdapter(ins, conn);
        ds = new DataSet();
        da.Fill(ds);

        lbl_price.Text = ds.Tables[0].Rows[0]["c_prize"].ToString();



    }

    protected void btn_countinue_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        string usr = Session["user"].ToString();
        string ins = "SELECT * FROM courses where Id=" + Request.QueryString["pid"].ToString();
        da = new SqlDataAdapter(ins, conn);
        ds = new DataSet();
        da.Fill(ds);
        string pid = ds.Tables[0].Rows[0]["Id"].ToString();
        string total = ds.Tables[0].Rows[0]["c_prize"].ToString();

        string pay = "insert into payment_info values(@email,@pid,@c_number,@c_name,@cvv,@date,@total)";
        cmd = new SqlCommand(pay, conn);

        cmd.Parameters.AddWithValue("@email", usr);
        cmd.Parameters.AddWithValue("@pid", pid);
        cmd.Parameters.AddWithValue("@c_number", txt_card.Text);
        cmd.Parameters.AddWithValue("@c_name", txt_name.Text);
        cmd.Parameters.AddWithValue("@cvv", txt_cvv.Text);
        cmd.Parameters.AddWithValue("@date", txt_date.Text);
        cmd.Parameters.AddWithValue("@total", total);

        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("<script>alert('Your Payment was Succeeded!')</script>");
            Response.Redirect("download.aspx");
        }
    }
}