﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class StudentGrades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.StdGradesTableAdapter dt = new DataSet1TableAdapters.StdGradesTableAdapter();
            Repeater1.DataSource = dt.StudentGrade(Session["STUDENTNUMBER"].ToString());
            Repeater1.DataBind();
        }
    }
}