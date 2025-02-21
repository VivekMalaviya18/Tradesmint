    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data.SqlClient;
    using System.Data;
    using System.Configuration;

    public partial class user_cart : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            conn = new SqlConnection(con);
            if (!IsPostBack)
            {           
             cart();                    
            }        

        }
        public void cart()
        {
            getuser();
            string uid = ds.Tables[0].Rows[0]["Id"].ToString();
            string getCo = "select * from courses c left join cart crt on c.Id=crt.c_id where c_uid='" + uid + "'";
            da = new SqlDataAdapter(getCo, conn);
            da.Fill(ds);
            ds.Tables[0].Rows[0].Delete();
            if (ds.Tables[0].Rows.Count > 1 && rptproduct.Items != null)
            {
                rptproduct.DataSource = ds;
                rptproduct.DataBind();
            
            }
         

        }
        public void getuser()
        {
            string seluser = Session["user"].ToString();
            da = new SqlDataAdapter("select * from users where email='" + seluser + "'", conn);
            ds = new DataSet();
            da.Fill(ds);
        }

        protected void dltbtn_Command(object sender, CommandEventArgs e)
        {     
            string id = e.CommandArgument.ToString();
            int uid = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
            string strDel = "DELETE FROM cart WHERE Id=" + id + " and c_uid = " + uid;
            cmd = new SqlCommand(strDel, conn);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Redirect("cart.aspx");
            }
        }
      
        protected void btn_return_click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void btn_pay_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("payment.aspx?pid="+id);
        }
}