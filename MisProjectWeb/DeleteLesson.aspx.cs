using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class DeleteLesson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["LESSONID"].ToString());
            DataSet1TableAdapters.LESSONS_TABLETableAdapter dt = new DataSet1TableAdapters.LESSONS_TABLETableAdapter();
            dt.DeleteLesson(id);
            Response.Redirect("LessonList.aspx");
        }
    }
}