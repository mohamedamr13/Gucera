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
    public partial class login : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected void Login(object sender,EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["guc"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
           // try
            //{
                int id = Int16.Parse(username.Text);
                string pass = password.Text;
                string user = "";
                SqlCommand loginproc = new SqlCommand("userLogin", conn);
                loginproc.CommandType = CommandType.StoredProcedure;
                loginproc.Parameters.Add(new SqlParameter("@id", id));
                loginproc.Parameters.Add(new SqlParameter("@password", pass));
                SqlParameter success = loginproc.Parameters.Add("@success", SqlDbType.Int);
                SqlParameter type = loginproc.Parameters.Add("@type", SqlDbType.Int);
                SqlParameter name = loginproc.Parameters.Add("@name", SqlDbType.VarChar,20);
                name.Direction = ParameterDirection.Output;
                success.Direction = ParameterDirection.Output;
                type.Direction = ParameterDirection.Output;
          

                conn.Open();
                loginproc.ExecuteNonQuery();
                conn.Close();
                user = name.Value.ToString();


            if (success.Value.ToString() == "1")
                {
                    Session["user"] = id;
                   Session["username"] = user;
                   // Response.Write(name);
                    if (type.Value.ToString() == "1")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    if (type.Value.ToString().Equals("0"))
                    {
                         Response.Redirect("instrHome.aspx");
                    }
                    else
                    {
                        Response.Redirect("home.aspx");

                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ID or password are incorrect')", true);

                }
            //}
          
           // catch (Exception)
           // {
           //     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter all required data correctly')", true);
            //}
        }

        protected void UserRegister(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}