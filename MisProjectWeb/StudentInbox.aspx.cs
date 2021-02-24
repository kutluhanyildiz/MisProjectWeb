using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class StudentInbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.MESSAGE_TABLETableAdapter dt = new DataSet1TableAdapters.MESSAGE_TABLETableAdapter();
            Repeater1.DataSource = dt.StudentInbox1(Session["STUDENTNUMBER"].ToString());
            Repeater1.DataBind();
        }
    }
}