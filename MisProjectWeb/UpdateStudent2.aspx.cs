using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class UpdateStudent2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["STUDENTNUMBER"];
            if (Page.IsPostBack==false)
            {

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            if (TxtPassword.Text==TxtPassword2.Text)
            {
                dt.UpdateStudentPassword(TxtPassword.Text, TextBox1.Text);
                Response.Redirect("StudentDefault.aspx?STUDENTNUMBER=" + TextBox1.Text);

            }
            else
            {
                TxtPassword2.Text = "Invalid Password!";
            }
        }
    }
}