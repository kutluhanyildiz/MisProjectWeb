using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class UpdateLesson : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Convert.ToInt32(Request.QueryString["LESSONID"].ToString());
                DataSet1TableAdapters.LESSONS_TABLETableAdapter dt = new DataSet1TableAdapters.LESSONS_TABLETableAdapter();
                TxtLessonID.Text = id.ToString();
                TxtLessonName.Text = dt.GetLesson(id)[0].LESSONNAME;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.LESSONS_TABLETableAdapter dt = new DataSet1TableAdapters.LESSONS_TABLETableAdapter();
            dt.UpdateLesson(TxtLessonName.Text, Convert.ToInt32(TxtLessonID.Text));
            Response.Redirect("LessonList.aspx");
        }
    }
}