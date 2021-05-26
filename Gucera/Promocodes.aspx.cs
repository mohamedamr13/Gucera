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
    public partial class Promocodes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand promo = new SqlCommand("viewPromocode", conn);
            promo.Parameters.Add(new SqlParameter("@sid", Session["user"]));
            promo.CommandType = System.Data.CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = promo.ExecuteReader(CommandBehavior.CloseConnection);
            while (rdr.Read())
            {
                String m = "";
                Label i = new Label();
                string code = rdr.GetString((rdr.GetOrdinal("code")));
                m += "Code : " + code + " ";
                DateTime issue = rdr.GetDateTime((rdr.GetOrdinal("isuueDate")));
                m += "issue Date: " + issue + " ";
                DateTime expiry = rdr.GetDateTime((rdr.GetOrdinal("expiryDate")));
                m += "expiryDate :" + expiry + " ";
                decimal discount = rdr.GetDecimal((rdr.GetOrdinal("discount")));
                m += "discount " + discount + " ";
                int admin = rdr.GetInt32((rdr.GetOrdinal("adminId")));
                m += "admin id : " + admin + " ";
                i.Text = m;
                Literal l = new Literal();
                l.Text = "<br />";
                form1.Controls.Add(l);
                form1.Controls.Add(i);
                

            }
        }
    }
}
