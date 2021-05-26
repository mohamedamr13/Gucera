using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gucera
{
    public partial class instrHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ID.Text = "your id number is :" + Session["user"].ToString();
            name.Text = "Hello " + Session["username"] + "!";
        }


        protected void addCourse(object sender, EventArgs e)
        {
            Response.Redirect("addCourse.aspx");
        }


        protected void viewCourses(object sender, EventArgs e)
        {
            Response.Redirect("viewCourses.aspx");
        }

        protected void Mobile(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("AddMobile.aspx");
        }
    }
}