using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_addcourse : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    string path;
    string fpath;

    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(con);
        conn.Open();
        
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {       
        string imgname = file1.FileName.ToString();
        path = Server.MapPath("/uploads/" + imgname);
        file1.SaveAs(path);
        string reffile = "/uploads/" + imgname;

        string filename = fu.FileName.ToString();
        fpath = Server.MapPath("/files/" + filename);
        file1.SaveAs(fpath);
        string fufile = "/files/" + filename;

        String sInsert = "Insert into courses values(@cname,@cprize,@cdisc,@img,@category,@file)";
        SqlCommand cmd = new SqlCommand(sInsert, conn);


        cmd.Parameters.AddWithValue("@cname", txt_course.Text);
        cmd.Parameters.AddWithValue("@cprize", txt_prize.Text);
        cmd.Parameters.AddWithValue("@cdisc", txt_disc.Text);
        cmd.Parameters.AddWithValue("@category", ddl_cat.Text);
        cmd.Parameters.AddWithValue("@img", reffile);
        cmd.Parameters.AddWithValue("@file", fufile);

        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Label1.Text = "Successfully Uploaded!!";
            txt_course.Text = "";
            txt_prize.Text = "";
            txt_disc.Text = "";

        }
        else
        {
            Response.Write("<alert>data not Submitted!!</alert>");
        }


    }

   
    
}