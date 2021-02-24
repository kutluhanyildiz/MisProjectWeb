using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class DeleteAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ANNOUNCEMENTID"].ToString());
            DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter dt = new DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter();
            dt.DeleteAnn(id);
                Response.Redirect("AnnouncementList.aspx");
        }
    }
}