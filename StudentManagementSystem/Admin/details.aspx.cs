using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Admin_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;

        Response.Redirect("Student_detail.aspx?Id=" + gr.Cells[0].Text); /*+ "&std_name=" + gr.Cells[1].Text + "&f_name=" + gr.Cells[2].Text + "&M_name=" + gr.Cells[3].Text
            + "&Dob=" + gr.Cells[4].Text + "&Gender=" + gr.Cells[5].Text + "&Category=" + gr.Cells[6].Text + "&Phone=" + gr.Cells[7].Text + "&AlterPhone=" + gr.Cells[8].Text
            + "&Email=" + gr.Cells[9].Text + "&Qualification=" + gr.Cells[10].Text + "&Course_name=" + gr.Cells[11].Text + "&Address=" + gr.Cells[12].Text + "&City=" + gr.Cells[13].Text
            + "&Country=" + gr.Cells[14].Text + "&Pincode=" + gr.Cells[14].Text + "&image=" + gr.Cells[15].Text);*/
            






    }
}