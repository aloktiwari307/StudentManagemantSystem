using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Student_detail : System.Web.UI.Page
{
     string mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
             
        String myquery = "Select * from Student_details where Id="+Request.QueryString["Id"].ToString();
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0]["std_name"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["f_name"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["M_name"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["Dob"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["Category"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["AlterPhone"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["Qualification"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["Course_name"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["City"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["Country"].ToString();
            Label13.Text = ds.Tables[0].Rows[0]["Pincode"].ToString();
        }
        con.Close();




    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Button upd = (Button)sender;
        string Id = upd.CommandArgument;

        Response.Redirect("Student_Registration.aspx?Id=" + Id);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button del = (Button)sender;
        string id = del.CommandArgument;

        string con_str = ConfigurationManager.ConnectionStrings["ConnectonString"].ConnectionString;
        SqlConnection con = new SqlConnection(con_str);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con; 

       

        cmd.CommandText = "delete from Student_details where Id="+Request.QueryString["Id"].ToString();
        

        con.Open();
        int flag = cmd.ExecuteNonQuery();
        con.Close();

        if (flag > 0)
        {
            Response.Write("<script>alert('Data Deleted')</script>");
            BindGrid();
        }

    }
}