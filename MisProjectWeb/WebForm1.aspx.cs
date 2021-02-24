using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            Repeater1.DataSource = dt.StudentList();
            Repeater1.DataBind();
        }
    }
}