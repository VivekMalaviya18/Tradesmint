using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class user_download : System.Web.UI.Page
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

        }

    }
    protected void img()
    {
        string user = Session["user"].ToString();
        string str = "SELECT courses.*,payment_info.Id,payment_info.p_id FROM payment_info JOIN courses ON courses.Id = payment_info.p_id WHERE payment_info.email = '" + user + "'";
        da = new SqlDataAdapter(str, conn);
        ds = new DataSet();
        da.Fill(ds);

        rptpurchase.DataSource = ds;
        rptpurchase.DataBind();

    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        string user = Session["user"].ToString();
        string str = "SELECT courses.*,payment_info.Id,payment_info.p_id FROM payment_info JOIN courses ON courses.Id = payment_info.p_id WHERE payment_info.email = '" + user + "'";
        da = new SqlDataAdapter(str, conn);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            string map = ds.Tables[0].Rows[0]["c_file"].ToString();
            Response.Redirect(map);    
            //string filePath = Server.MapPath("~" +map);
            //FileInfo fileinfo = new FileInfo(filePath);
            //if (fileinfo.Exists)
            //{
            //    Response.Clear();
            //    Response.ContentType = "application/octet-stream";
            //    Response.AddHeader("Content-Desposition", "attahchment; filename=" + fileinfo.Name);
            //    Response.AddHeader("Content-Length", fileinfo.Length.ToString());
            //    Response.Write(fileinfo.FullName);
            //    Response.End();
            //}
        }
    }
}