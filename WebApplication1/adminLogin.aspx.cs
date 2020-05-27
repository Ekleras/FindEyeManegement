using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminLogin : System.Web.UI.Page
    {

        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection connection = new SqlConnection(connectionString);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from admin_login_table WHERE admin_name ='" + TextBox1.Text.Trim() + "' AND" +
                    " admin_pass='" + TextBox2.Text.Trim() + "';", connection);

                SqlDataReader dataR = cmd.ExecuteReader();
                if (dataR.HasRows)
                {
                    while (dataR.Read())
                    {
                        Response.Write("<script>alert('Pavyko prisijungti');</script>");
                        Session["loginName"] = dataR.GetValue(1).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("HomePage.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Netinkami duomenys');</script>");
                }
                
            }

            catch (Exception exept)
            {

            }

        }
    }
}