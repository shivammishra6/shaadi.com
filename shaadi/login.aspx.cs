using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shaadi
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand check = new SqlCommand("select name,password from credentials where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(check);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
                Response.Redirect("https://www.shaadi.com/");
            else
            {
                Response.Write("<script>alert('invalid credentials')</script>");
            }
        }
    }
}