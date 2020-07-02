using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_change_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_type"].ToString() != "admin")
        {
            Response.Redirect("~/login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;


        cmd.CommandText = "select pass1 from registration where email='" + Session["username"] + "'";
        string pa = cmd.ExecuteScalar().ToString();
        if (pa == TextBox1.Text)
        {
            cmd.CommandText = "update registration set pass1=@pass1 where email='" + Session["username"] + "'";
            cmd.Parameters.AddWithValue("@pass1", TextBox2.Text);

            int r = 0;
            r = cmd.ExecuteNonQuery();
            if (r == 0)
            {
                Response.Redirect("Enter password");

            }
            else
            {

                Response.Write("<script> alert ('Password change successfully')</script>");
            }

        }
        else
        {
            Response.Write("<script> alert ('Old password is Invalid.')</script>");
        }

        cn.Close();
       
    }
}
