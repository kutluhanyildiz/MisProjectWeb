using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MisProjectWeb
{
    public partial class Stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TextBox1.Text = "Number of Total Students: " + dt.Stats1().ToString();

            TextBox2.Text = "Number of Total Instructors: " + dt.Stats2().ToString();
            TextBox3.Text = "Number of Total Courses: " + dt.Stats3().ToString();
            TextBox4.Text = "Most Successful Student for MIS course's Midterm I: " + dt.Stats4().ToString();
            TextBox5.Text = "Most Successful Student for Operations Research I course's Midterm I: " + dt.Stats5().ToString();
            TextBox6.Text = "Most Successful Student for QUALITY METHODS course's Midterm I: " + dt.Stats6().ToString();
            TextBox7.Text = "Most Successful Student for PRODUCTION PLANNING AND CONTROL 1 course's Midterm I: " + dt.Stats7().ToString();
            TextBox8.Text = "Average of MIS course Midterm I: " + dt.Stats8().ToString();
            TextBox9.Text = "Average of OPERATIONS AND RESEARCH 1 course Midterm I: " + dt.Stats9().ToString();
            TextBox10.Text = "Average of QUALITY METHODS course Midterm I: " + dt.Stats10().ToString();
            TextBox11.Text = "Number of Students that Fail at MIS course: " + dt.Stats11().ToString();
            TextBox12.Text = "Number of Students that Fail at OPERATIONS AND RESEARCH 1 course: " + dt.Stats12().ToString();
            TextBox13.Text = "Number of Students that Fail at QUALITY METHODS course: " + dt.Stats13().ToString();
            TextBox14.Text = "Number of Students that Fail at PRODUCTION PLANNING AND CONTROL 1 course: " + dt.Stats14().ToString();




        }
    }
}