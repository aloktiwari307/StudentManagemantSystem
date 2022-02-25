using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = ""; 
        string ba = "";
        SqlCommand cmd = new SqlCommand("select password from login where username=@username", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           
            str = dr[0].ToString();


        }
        if (str == "")
        {
            Response.Write("<script>alert('Wrong User ID')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";


        }
        else if (str == TextBox2.Text)
        {
            Session["id"] = ba;
            Session["user"] = TextBox1.Text;
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Wrong Password')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }
}