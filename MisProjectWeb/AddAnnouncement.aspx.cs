using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class AddAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                DataSet1TableAdapters.TEACHER_TABLETableAdapter dt = new DataSet1TableAdapters.TEACHER_TABLETableAdapter();
                DropDownList1.DataSource = dt.TeacherList();
                DropDownList1.DataTextField = "TEACHERFULLNAME";
                DropDownList1.DataValueField = "TEACHERID";
                DropDownList1.DataBind();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter dt = new DataSet1TableAdapters.ANNOUNCEMENTS_TABLETableAdapter();
            dt.AddAnnouncement(TxtAnnouncementTitle.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("AnnouncementList.aspx");
        }
    }
}