using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gucera
{
    public partial class StudentCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand courses = new SqlCommand("availableCourses", conn);
            courses.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = courses.ExecuteReader(CommandBehavior.CloseConnection);

            while (rdr.Read())
            {

                int courseid = rdr.GetInt32((rdr.GetOrdinal("id")));
                String courseName = rdr.GetString((rdr.GetOrdinal("name")));
                Button name = new Button();
                Label l = new Label();
                // Session["course"] = courseid;
                name.ID = courseid + "";
                name.Text = courseName;
                name.Click += new EventHandler(this.View);
                Literal lit = new Literal();
                lit.Text = "<br/>";
                l.Text = "click to view course details:  ";
                form1.Controls.Add(l);
                form1.Controls.Add(lit);
                form1.Controls.Add(name);


            }
        }
        protected void View(object sender, EventArgs e)
        {
            Button button = sender as Button;
            Session["course"] = button.ID;
            Response.Redirect("courseenroll.aspx");

        }
    }
}