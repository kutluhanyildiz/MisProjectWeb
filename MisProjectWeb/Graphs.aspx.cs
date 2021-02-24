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
    public partial class Graphs : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-DHNJO9UE\SQLEXPRESS01;Initial Catalog=MisProjectDB;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            //bu 1.Sorgu
            connection.Open();
            SqlCommand command = new SqlCommand("Execute Graph1", connection);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                Chart4.Series["Lessons"].Points.AddXY(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }
            connection.Close();

            //bu 2. sorgu 
            connection.Open();
            SqlCommand command2 = new SqlCommand("Execute graph2", connection);
            SqlDataReader dr2 = command2.ExecuteReader();
            while (dr2.Read())
            {
                Chart3.Series["Gender"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }
            connection.Close();
            //bu 3. sorgu 
            connection.Open();
            SqlCommand command3 = new SqlCommand("Execute graph3", connection);
            SqlDataReader dr3 = command3.ExecuteReader();
            while (dr3.Read())
            {
                Chart2.Series["LessonName"].Points.AddXY(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }
            connection.Close();

            //bu 4.sorgu
            connection.Open();
            SqlCommand command4 = new SqlCommand("Execute graph4", connection);
            SqlDataReader dr4 = command4.ExecuteReader();
            while (dr4.Read())
            {
                Chart5.Series["Grades"].Points.AddXY(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
            }
            connection.Close();
        }
    }
}