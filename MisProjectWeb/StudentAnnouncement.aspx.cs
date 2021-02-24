using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class StudentAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter dt = new DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter();
            Repeater1.DataSource = dt.StudentAnnouncement();
            Repeater1.DataBind();
        }
    }
}