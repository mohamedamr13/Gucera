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
    public partial class IssuePromo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void issuePromocode(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                int student = Int16.Parse(sid.Text);
                String promocode = pid.Text;
                SqlCommand issuePromoProc = new SqlCommand("AdminIssuePromocodeToStudent", conn);
                issuePromoProc.CommandType = CommandType.StoredProcedure;
                issuePromoProc.Parameters.Add("@sid", student);
                issuePromoProc.Parameters.Add("@pid", promocode);
                
                conn.Open();
                issuePromoProc.ExecuteNonQuery();
                conn.Close();
                Response.Write("PromoCode issued to student with ID" + student + " successfully");

            }
            
            catch (FormatException)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error')", true);

            }
            catch (Exception)
           {
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('make sure you entered a valid student and promocode also make sure you don't issue the promocode to the student twice')", true);

            }
        }


    }
}