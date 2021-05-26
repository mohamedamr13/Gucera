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
    public partial class courseenroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand show = new SqlCommand("courseInformation", conn);
            show.Parameters.Add(new SqlParameter("@id", Session["course"]));
            show.CommandType = System.Data.CommandType.StoredProcedure;
           
            conn.Open();
            SqlDataReader rdr = show.ExecuteReader(CommandBehavior.CloseConnection);
            while (rdr.Read())
            {
                string m = "";
                int courseid = rdr.GetInt32((rdr.GetOrdinal("id")));
                m +="course id: " +courseid + " ";
                int credits = rdr.GetInt32((rdr.GetOrdinal("creditHours")));
                m += "CreditHours: " + credits + " ";
                String name = rdr.GetString((rdr.GetOrdinal("name")));
                m += "CourseName: " + name + " ";
                decimal price = rdr.GetDecimal((rdr.GetOrdinal("price")));
                m += "price: " + price + " ";
                try
                {
                    String content = rdr.GetString((rdr.GetOrdinal("content")));
                    m += "content: " + content + " ";
                }
                catch (System.Data.SqlTypes.SqlNullValueException)
                {
                    m += "content is not specified yet";
                }
                int adminId = rdr.GetInt32((rdr.GetOrdinal("adminId")));
                m += "adminId: " + adminId + " ";
                int instructorId = rdr.GetInt32((rdr.GetOrdinal("instructorId")));
                m += "instructorId: " + instructorId + " ";
                if (((rdr.GetOrdinal("accepted")) == '1')){
                    m += "Accepted: " + "Accepted" + " ";
                }
                else
                {
                    m += "Accepted: " + "course not accepted" + " ";
                }
               
                Label ll = new Label();
                ll.Text = m;
                form1.Controls.Add(ll);
                Button enr = new Button();
                enr.Text = "Enroll";
                enr.Click += new EventHandler(this.Enroll);
                Literal x = new Literal();
                x.Text = "<b/>";
                form1.Controls.Add(x);
                
                //Label l2 = new Label();
                //l2.Text="if you want to enroll Enter your InstructorID: ";

                
                form1.Controls.Add(x);
                //form1.Controls.Add(l2);
                form1.Controls.Add(x);
                
                form1.Controls.Add(enr);
                //form1.Controls.Add(inst);
                // Session["inst"]=Int32.Parse( inst.Text);


            }
            rdr.Close();
        }
        protected void Enroll(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand show = new SqlCommand("enrollInCourse", conn);
                show.Parameters.Add(new SqlParameter("@sid", Session["user"]));
                int instructor = Int32.Parse(Inst.Text);
                show.Parameters.Add(new SqlParameter("@cid", Session["course"]));
                show.Parameters.Add(new SqlParameter("@instr", instructor));
                SqlParameter flag = show.Parameters.Add("@flag", SqlDbType.VarChar, 5);
                flag.Direction = ParameterDirection.Output;
                show.CommandType = System.Data.CommandType.StoredProcedure;
                conn.Open();
                show.ExecuteNonQuery();
                conn.Close();
                Response.Write("You are Enrolled Now");

            }
            catch (Exception)
            {
                if (Inst.Text == "")
                {
                    Response.Write("Please enter the id of the instructor");

                }
            }
        }

    }
}