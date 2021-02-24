using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class LessonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.LESSONS_TABLETableAdapter dt = new DataSet1TableAdapters.LESSONS_TABLETableAdapter();
            Repeater1.DataSource = dt.LessonList();
            Repeater1.DataBind();
        }
    }
}