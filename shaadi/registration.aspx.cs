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
    public partial class registration : System.Web.UI.Page
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
            Response.Redirect("login.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (TextBox4.Text.Length == 4)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 4)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand check = new SqlCommand("select name,password from credentials where name='" + TextBox1.Text + "' and password='" + TextBox4.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(check);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
                Response.Write("<script>alert('data already available, please log in')</script>");
            else
            {
                SqlCommand cmd = new SqlCommand("insert into credentials values('" + TextBox1.Text + "','" + TextBox4.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
        }
    }
}