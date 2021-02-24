using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class AddStudentMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtSender.Text = Session["STUDENTNUMBER"].ToString();


        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.MESSAGE_TABLETableAdapter dt = new DataSet1TableAdapters.MESSAGE_TABLETableAdapter();
            dt.SendMessage(TxtSender.Text, TxtReceiver.Text, TxtTitle.Text, TxtContent.Value.ToString(), DATE: DateTime.Today);
            Response.Redirect("StudentOutbox.aspx");


        }
    }
}