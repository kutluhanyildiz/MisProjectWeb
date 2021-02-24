using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class StudentDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["STUDENTNUMBER"].ToString();

            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            TextBox2.Text = "Name-Surname: " + dt.GetStudentPanel(TextBox1.Text)[0].STUDENTNAME +" "+ dt.GetStudentPanel(TextBox1.Text)[0].STUDENTLASTNAME;
            TextBox3.Text = "E-Mail: " + dt.GetStudentPanel(TextBox1.Text)[0].STUDENTMAIL;
            TextBox4.Text = "Password: " + dt.GetStudentPanel(TextBox1.Text)[0].STUDENTPASSWORD;
            TextBox5.Text = "Cell Number: "+dt.GetStudentPanel(TextBox1.Text)[0].STUDENTCELL;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStudent2.aspx?STUDENTNUMBER="+TextBox1.Text);
        }
    }
}