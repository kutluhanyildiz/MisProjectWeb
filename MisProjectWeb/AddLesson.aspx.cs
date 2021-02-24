using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class AddLesson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.LESSONS_TABLETableAdapter dt = new DataSet1TableAdapters.LESSONS_TABLETableAdapter();
            dt.AddLesson(TxtCourse.Text);
            Response.Redirect("LessonList.aspx");
        }
    }
}