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
    public partial class ADViewCourses : System.Web.UI.Page
    {
        DataTable AllCourses = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            AllCourses.Columns.Add("Name");
            AllCourses.Columns.Add("Credit Hours");
            AllCourses.Columns.Add("Price");
            AllCourses.Columns.Add("Content");
            AllCourses.Columns.Add("Accepted");



            SqlCommand Courses = new SqlCommand("AdminViewAllCourses", conn);
            Courses.CommandType = CommandType.StoredProcedure;
            

            conn.Open();
            SqlDataReader rdr = Courses.ExecuteReader(CommandBehavior.CloseConnection);

            while (rdr.Read())
            {
                if (!(rdr.GetOrdinal("content").Equals(null)))
                {
                    try
                    {
                        AllCourses.Rows.Add(rdr.GetString(rdr.GetOrdinal("name")), rdr.GetInt32(rdr.GetOrdinal("CreditHours")), rdr.GetDecimal(rdr.GetOrdinal("price")), "NA", rdr.GetBoolean(rdr.GetOrdinal("accepted")));
                    }
                    catch (System.Data.SqlTypes.SqlNullValueException)
                    {
                        AllCourses.Rows.Add(rdr.GetString(rdr.GetOrdinal("name")), rdr.GetInt32(rdr.GetOrdinal("CreditHours")), rdr.GetDecimal(rdr.GetOrdinal("price")), "NA", "False");

                    }
                }
                else
                {
                    try
                    {
                        AllCourses.Rows.Add(rdr.GetString(rdr.GetOrdinal("name")), rdr.GetInt32(rdr.GetOrdinal("CreditHours")), rdr.GetDecimal(rdr.GetOrdinal("price")), rdr.GetString(rdr.GetOrdinal("content")), rdr.GetBoolean(rdr.GetOrdinal("accepted")));
                    }
                    catch (System.Data.SqlTypes.SqlNullValueException)
                    {
                        AllCourses.Rows.Add(rdr.GetString(rdr.GetOrdinal("name")), rdr.GetInt32(rdr.GetOrdinal("CreditHours")), rdr.GetDecimal(rdr.GetOrdinal("price")), "NA", "False");

                    }
                }

            }


                courseTable.DataSource = AllCourses;
                courseTable.DataBind();



            }
        }
    }

