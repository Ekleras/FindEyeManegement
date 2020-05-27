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
    public partial class adminUsersControl : System.Web.UI.Page
    {

        int a = 100000;
        int b = 999999;

        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // šalinimo mygtukas
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteUser();
        }

        bool findsIfExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_info_table WHERE member_uName='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);

                DataTable dataT = new DataTable();

                ada.Fill(dataT);

                if (dataT.Rows.Count >= 1)
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

        bool findsIfExists2()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_info_table WHERE member_uName='" + TextBox6.Text.Trim() + "';", con);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);

                DataTable dataT = new DataTable();

                ada.Fill(dataT);

                if (dataT.Rows.Count >= 1)
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


        void deleteUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM member_info_table WHERE member_uName='" + TextBox1.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<script>alert('Vertotojas sėkmingai pašalintas');</script>");
                clearBoxes();

                GridView1.DataBind();
                
            }
            catch (Exception exept)
            {
                Response.Write("<script>alert('" + exept.Message + "')</script>");                
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        // vartotojo redagavimo mygtukas
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (findsIfExists() == true)
            {

                changeMemberInfo();
            }

            else
            {
                Response.Write("<script>alret('Pfffffff!');</script>");
            }
        }

        // vartotojo ??? suradimo mygtukas
        protected void Button3_Click(object sender, EventArgs e)
        {
            getMemberById();
        }

        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_info_table WHERE member_uName='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);

                DataTable dataT = new DataTable();

                ada.Fill(dataT);
                if (dataT.Rows.Count >= 1)
                {
                    TextBox2.Text = dataT.Rows[0][0].ToString();
                    TextBox3.Text = dataT.Rows[0][1].ToString();
                    TextBox4.Text = dataT.Rows[0][2].ToString();
                    TextBox5.Text = dataT.Rows[0][3].ToString();
                    TextBox7.Text = dataT.Rows[0][5].ToString();


                }

                else
                {
                    Response.Write("<script>alert('Tokio vartotojo nėra');</script>");
                }
            }
            catch (Exception exept)
            {
                Response.Write("<script>alert('" + exept.Message + "')</script>");              
            }
        }

        // vartotojo sukūrimo mygtukas
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (findsIfExists2() == true)
            {

                Response.Write("<script>alert('Vartotojas su tokiu ID jau egzistuoja. Paršome išsirinkti naują ID');</script>");
            }

            else
            {
                resgitrationOfNewUser();
            }
        }

        void resgitrationOfNewUser()
        {
            try
            {
                int ID = RandomNumber(a, b);

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_info_table(member_name,member_lastName,member_nr,member_email,member_gender,member_pass,member_id,member_uName) " +
                    "values(@member_name,@member_lastName,@member_nr,@member_email,@member_gender,@member_pass,@member_id,@member_uName)", con);

                cmd.Parameters.AddWithValue("@member_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_lastName", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@member_nr", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@member_email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@member_pass", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", ID);
                cmd.Parameters.AddWithValue("@member_uName", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                clearBoxes();

                Response.Write("<script>alret('Jums pavyko prisiregistruoti! Galite prisijungti!');</script>");
            }
            catch (Exception exept)
            {
                //  Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }

        public int RandomNumber(int a, int b)
        {
            Random random = new Random();
            return random.Next(a, b);
        }

        void changeMemberInfo()
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE member_info_table SET member_name=@member_name,member_lastName=@member_lastName,member_nr=@member_nr,member_email=@member_email,member_gender=@member_gender,member_pass=@member_pass  WHERE member_uName='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@member_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_lastName", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@member_nr", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@member_email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@member_pass", TextBox7.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                clearBoxes();

                Response.Write("<script>alret('Jums pavyko prisiregistruoti! Galite prisijungti!');</script>");
            }
            catch (Exception exept)
            {
                //  Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }

        void clearBoxes()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }
    }
}