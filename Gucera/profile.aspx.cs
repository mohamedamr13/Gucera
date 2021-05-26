using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand showprof = new SqlCommand("viewMyProfile", conn);
            showprof.Parameters.Add(new SqlParameter("@id", Session["user"]));
            showprof.CommandType = System.Data.CommandType.StoredProcedure;
            conn.Open();

            // loginproc.ExecuteNonQuery();

            SqlDataReader rdr = showprof.ExecuteReader(CommandBehavior.CloseConnection);
            while (rdr.Read())
            {
                String m = "";
                Label i = new Label();
                m += "Id :" + Session["user"] + " ";
                // form1.Controls.Add(i);
                String fname = rdr.GetString((rdr.GetOrdinal("firstName")));
                // Label name = new Label();
                m += "FirstName: " + fname + ",  ";
                //form1.Controls.Add(name);
                String lname = rdr.GetString((rdr.GetOrdinal("lastName")));
                //Label llname = new Label();
                m += "LastName : " + lname + ",  ";
                //orm1.Controls.Add(llname);
                String email = rdr.GetString((rdr.GetOrdinal("email")));
                // Label mail = new Label();
                m += "Mail : " + email + ",  ";
                //form1.Controls.Add(mail);
                String address = rdr.GetString((rdr.GetOrdinal("address")));
                // Label add = new Label();
                m += "Address: " + address;
                i.Text = m;
                form1.Controls.Add(i);



            }
        }
    }
}