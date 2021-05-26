using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ID.Text = "your id number is :" + Session["user"].ToString();
            name.Text = "Hello " + Session["username"] + "!";
        }
        protected void View(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            // Session["user"] = idd.Text;
            Response.Redirect("profile.aspx");


        }

        protected void Mobile(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("AddMobile.aspx");
        }
        protected void Promos(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("Promocodes.aspx");
        }
        protected void Card(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("CreditCard.aspx");
        }
        protected void Courses(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("StudentCourse.aspx");
        }
        protected void Showgrade(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("ViewAssignmentGrade.aspx");
        }
        protected void ViewassContent(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("ViewAssignmentContent.aspx");
        }

        protected void submitass(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("SubmitAssignment.aspx");
        }
        protected void Viewcert(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("ListCertificates.aspx");
        }
        protected void Feedback(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            Response.Redirect("AddFeedback.aspx");
        }
       
    }
}