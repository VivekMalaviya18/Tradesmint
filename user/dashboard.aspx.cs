using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_dashboard : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();

        if (!IsPostBack)
        {
            img();
            getCate();

        }

    }
    public void img()
    {
        string str = "select * from courses";
        da = new SqlDataAdapter(str, conn);
        ds = new DataSet();
        da.Fill(ds);
        rptimg.DataSource = ds;
        rptimg.DataBind();

    }
    public void getCate()
    {
        string strGet = "SELECT * FROM category";
        da = new SqlDataAdapter(strGet, conn);
        ds = new DataSet();
        da.Fill(ds);
        ddlCate.DataSource = ds;
        ddlCate.DataTextField = "ca_name";
        ddlCate.DataValueField = "Id";
        ddlCate.DataBind();
    }

    protected void ddlCate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCate.SelectedValue != "0")
        {
            string str = "select * from courses where c_category = '" + ddlCate.SelectedItem.Text + "'";
            da = new SqlDataAdapter(str, conn);
            ds = new DataSet();
            da.Fill(ds);
            rptimg.DataSource = ds;
            rptimg.DataBind();
        }
        else
        {
            img();
        }
    }
}