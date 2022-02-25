using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class Admin_Student_Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string con_str = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        SqlConnection con = new SqlConnection(con_str);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from Student_details where Id=@Id";
        cmd.Parameters.AddWithValue("@Id", Request.QueryString["Id"]);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        ad.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            txtfname.Text = dt.Rows[0]["std_name"].ToString();
            txtfathername.Text = dt.Rows[0]["f_name"].ToString();
            txtMname.Text = dt.Rows[0]["M_name"].ToString();
            txtdob.Text = dt.Rows[0]["Dob"].ToString();
            rdbgender.SelectedValue = dt.Rows[0]["Gender"].ToString();
            rdbcategory.SelectedValue = dt.Rows[0]["Category"].ToString();
            txtphone.Text = dt.Rows[0]["Phone"].ToString();
            txtaltphone.Text = dt.Rows[0]["Alterphone"].ToString();
            txtemail.Text = dt.Rows[0]["Email"].ToString();
            drpqualification.SelectedValue = dt.Rows[0]["Qualification"].ToString();
            txtcourse.Text = dt.Rows[0]["Course_name"].ToString();
            txtaddress.Text = dt.Rows[0]["Address"].ToString();
            txtcity.Text = dt.Rows[0]["City"].ToString();
            txtcountry.Text = dt.Rows[0]["Country"].ToString();
            txtpin.Text = dt.Rows[0]["Pincode"].ToString();

        }
        con.Close();
        }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string full_name = txtfname.Text + " " +txtlname.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string img_path ="";
        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".gif")
            {
                try
                {
                    FileInfo x = new FileInfo(Server.MapPath(img_path));
                    x.Delete();
                }
                catch { }

                img_path = "images/" + Guid.NewGuid() + ext;
                FileUpload1.SaveAs(Server.MapPath(img_path));

            }
            else
            {
                Response.Write("<script>alert('Select Valid Image File')</script>");
            }
        }

        if (Request.QueryString["Id"] == null)
        {
            cmd.CommandText = "Insert into Student_details(std_name,f_name,M_name,Dob,Gender,Category,Phone,AlterPhone,Email,Qualification,Course_name,Address,City,Country,Pincode,image)values(@std_name,@f_name,@M_name,@Dob,@Gender,@Category,@Phone,@AlterPhone,@Email,@Qualification,@Course_name,@Address,@City,@Country,@Pincode,@image";
        }
        else
        {
             cmd.CommandText= "update Student_details set std_name=@std_name,f_name=@f_name,M_name=@M_name,Dob=@Dob,Gender=@gender,Category=@Category,Phone=@Phone,AlterPhone=@AlterPhone,Email=@Email,Qualification=@Qualification,Course_Name=@Course_name,Address=@Address,City=@City,Country=@Country,Pincode=@Pincode,image=@image where Id=@Id ";
            cmd.Parameters.AddWithValue("@Id", Request.QueryString["Id"]);
        }

               
        cmd.Parameters.AddWithValue("@std_name",full_name);
        cmd.Parameters.AddWithValue("@F_name", txtfathername.Text);
        cmd.Parameters.AddWithValue("@M_name", txtMname.Text);
        cmd.Parameters.AddWithValue("@Dob", txtdob.Text);
        cmd.Parameters.AddWithValue("@Gender", rdbgender.SelectedValue);
        cmd.Parameters.AddWithValue("@category", rdbcategory.SelectedValue);
        cmd.Parameters.AddWithValue("@Phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@AlterPhone", txtaltphone.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@Qualification", drpqualification.Text);
        cmd.Parameters.AddWithValue("@Course_name", txtcourse.Text);
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@City", txtcity.Text);
        cmd.Parameters.AddWithValue("@Country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@Pincode", txtpin.Text);
        cmd.Parameters.AddWithValue("@image", img_path);

        int flag = cmd.ExecuteNonQuery();
        con.Close();
        if(flag>0)
        {
            Response.Write("<script>alert('Data Insert Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Data Insert Not Successfully')</script>");
        }
            
    }
}