using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class UpdateStudent : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    id = Convert.ToInt32(Request.QueryString["STUDENTID"].ToString());
                    TxtStdID.Text = id.ToString();
                    DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();

                    TxtStdName.Text = dt.SelectStudent(id)[0].STUDENTNAME;
                    TxtStdSurname.Text = dt.SelectStudent(id)[0].STUDENTLASTNAME;
                    TxtStdMail.Text = dt.SelectStudent(id)[0].STUDENTMAIL;
                    TxtStdCell.Text = dt.SelectStudent(id)[0].STUDENTCELL;
                    TxtStdPassword.Text = dt.SelectStudent(id)[0].STUDENTPASSWORD;
                    TxtStdPhoto.Text = dt.SelectStudent(id)[0].STUDENTPHOTO;
                }
                catch (Exception)
                {

                    TxtStdPhoto.Text = "Enter a link";
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            dt.UpdateStudent(TxtStdName.Text, TxtStdSurname.Text, TxtStdCell.Text, TxtStdMail.Text, TxtStdPassword.Text, 
                TxtStdPhoto.Text, Convert.ToInt32(TxtStdID.Text));
            Response.Redirect("WebForm1.aspx");
        }
    }
}