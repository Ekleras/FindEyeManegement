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
    public partial class userRegistration : System.Web.UI.Page
    {
        int a = 100000;
        int b = 999999;
        
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              
            if (checkForDublicatesMembers() == true)
            {

                Response.Write("<script>alert('Vartotojas su tokiu prisijungimu jau egzistuoja. Paršome išsirinkti naują prisijungimą');</script>");
            }

            else
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox6.Text == "" || TextBox5.Text == "")
                {
                    Response.Write("<script>alert('Prašome užpildyti visus laukus!');</script>");
                }
                else
                {
                    resgitrationOfNewUser();
                }
            }

        }





        void resgitrationOfNewUser()
        {
            try
            {

                int ID = RandomNumber(a, b);
                Label1.Text = ID.ToString();

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_info_table(member_name,member_lastName,member_nr,member_email,member_gender,member_pass,member_id,member_uName) " +
                    "values(@member_name,@member_lastName,@member_nr,@member_email,@member_gender,@member_pass,@member_id,@member_uName)", con);

                cmd.Parameters.AddWithValue("@member_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@member_lastName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_nr", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@member_email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@member_gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@member_pass", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", ID);
                cmd.Parameters.AddWithValue("@member_uName", TextBox5.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                clearAllBoxes();

                Response.Write("<script>alert('Jums pavyko prisiregistruoti');</script>");
            }
            catch (Exception exept)
            {
               Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }

        void clearAllBoxes()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }

        bool checkForDublicatesMembers()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_info_table WHERE member_uName='" + TextBox5.Text.Trim() + "';", con);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);

                DataTable dataT = new DataTable();

                ada.Fill(dataT);

                if(dataT.Rows.Count >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }
            }
            catch (Exception exept)
            {
                Response.Write("<script>alert('" + exept.Message + "')</script>");
                return false;
            }
        }



       public int RandomNumber(int a, int b)
        {
            Random random = new Random();
            return random.Next(a, b);
        }
    }
}