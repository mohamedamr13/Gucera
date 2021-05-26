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
    public partial class CreditCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                DateTime st = DateTime.Parse(TextBox1.Text);
                SqlCommand showprof = new SqlCommand("addCreditCard", conn);
                showprof.Parameters.Add(new SqlParameter("@sid", Session["user"]));
                showprof.Parameters.Add(new SqlParameter("@number", num.Text));
                showprof.Parameters.Add(new SqlParameter("@cardHolderName", holdername.Text));
                showprof.Parameters.Add(new SqlParameter("@expiryDate", st));
                showprof.Parameters.Add(new SqlParameter("@cvv", cvv.Text));
                showprof.CommandType = System.Data.CommandType.StoredProcedure;
                if ((num.Text != "" && holdername.Text != "" && cvv.Text != "") && (cvv.Text.Length <= 3))
                {
                    conn.Open();
                    showprof.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("Added");
                }
                else
                {
                    Response.Write("Please Enter Correct data");
                }
            }
            
            catch (Exception)
            {
                Response.Write("please Enter the correct data");
            }
        }

        
    }
}