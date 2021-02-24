using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["STUDENTID"].ToString());
            DataSet1TableAdapters.STUDENT_TABLETableAdapter dt = new DataSet1TableAdapters.STUDENT_TABLETableAdapter();
            dt.DeleteStudent(id);
            Response.Redirect("WebForm1.aspx");

        }
    }
}