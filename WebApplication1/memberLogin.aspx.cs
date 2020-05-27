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
    public partial class memberLogin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userRegistration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);

                if(connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_info_table WHERE member_uName ='" + TextBox1.Text.Trim() + "' AND" +
                    " member_pass='" + TextBox2.Text.Trim() + "';",connection);

                SqlDataReader dataR = cmd.ExecuteReader();
                if(dataR.HasRows)
                {
                    while(dataR.Read())
                    {
                        Response.Write("<script>alert('Pavyko prisijungti');</script>");
                        Session["loginName"] = dataR.GetValue(5).ToString();
                        Session["name"] = dataR.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("HomePage.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Netinkami duomenys');</script>");
                }
            }

            catch(Exception exept)
            {

            }
        }
    }
}