using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MisProjectWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-DHNJO9UE\SQLEXPRESS01;Initial Catalog=MisProjectDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select * from STUDENT_TABLE where STUDENTNUMBER=@p1 and STUDENTPASSWORD=@p2", connection);
            command.Parameters.AddWithValue("@p1", TxtUsername.Text);
            command.Parameters.AddWithValue("@p2", TxtPassword.Text);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("STUDENTNUMBER", TxtUsername.Text);
                Response.Redirect("StudentDefault.aspx");

            }
            else
            {
                TxtPassword.Text = "Wrong username or password!";
            }
            connection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select * from TEACHER_TABLE where TEACHERNUMBER=@p1 and TEACHERPASSWORD=@p2", connection);
            command.Parameters.AddWithValue("@p1", TxtUsername.Text);
            command.Parameters.AddWithValue("@p2", TxtPassword.Text);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("TEACHERNUMBER", TxtUsername.Text);
                Response.Redirect("WebForm1.aspx");

            }
            else
            {
                TxtPassword.Text = "Wrong username or password!";
            }
            connection.Close();
        }
    }
}