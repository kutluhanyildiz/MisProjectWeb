using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class UpdateGrade : System.Web.UI.Page

    {
        int gid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                gid = Convert.ToInt32(Request.QueryString["GRADEID"].ToString());
                DataSet1TableAdapters.StdGradesTableAdapter dt = new DataSet1TableAdapters.StdGradesTableAdapter();
                TxtStdID.Text = dt.GetGrade2(gid)[0].STUDID.ToString();
                TxtStdName.Text = dt.GetGrade2(gid)[0].STUDENTFULLNAME;
                TxtLessonName.Text = dt.GetGrade2(gid)[0].LESSONNAME;
                TxtStdExam1.Text = dt.GetGrade2(gid)[0].EXAM1.ToString();
                TxtStdExam2.Text = dt.GetGrade2(gid)[0].EXAM2.ToString();
                TxtStdExam3.Text = dt.GetGrade2(gid)[0].EXAM3.ToString();
                TxtAvg.Text = dt.GetGrade2(gid)[0].AVERAGE.ToString();
                TxtStdStat.Text = dt.GetGrade2(gid)[0].SITUATION.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double exam1, exam2, exam3;
            double average;
            exam1 = Convert.ToInt32(TxtStdExam1.Text);
            exam2 = Convert.ToInt32(TxtStdExam2.Text);
            exam3 = Convert.ToInt32(TxtStdExam3.Text);
            average = (exam1 + exam2 + exam3) / 3;
            TxtAvg.Text = average.ToString("0.00");
            if (average >= 50)
            {
                TxtStdStat.Text = "True";
            }
            else
            {
                TxtStdStat.Text = "False";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            gid = Convert.ToInt32(Request.QueryString["GRADEID"].ToString());

            DataSet1TableAdapters.StdGradesTableAdapter dt = new DataSet1TableAdapters.StdGradesTableAdapter();
            dt.UpdateNot(byte.Parse(TxtStdExam1.Text), byte.Parse(TxtStdExam2.Text), byte.Parse
                (TxtStdExam3.Text), decimal.Parse(TxtAvg.Text), bool.Parse(TxtStdStat.Text), gid);
            Response.Redirect("GradeList.aspx");
        }
    }
}