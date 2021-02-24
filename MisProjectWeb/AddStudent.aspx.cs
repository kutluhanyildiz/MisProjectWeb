using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            dt.AddStudent(TxtStdName.Text, TxtStdSurname.Text, TxtStdCell.Text, TxtStdMail.Text, TxtStdPassword.Text, TxtStdPassword.Text);
            Response.Redirect("WebForm1.aspx");
        }
    }
}