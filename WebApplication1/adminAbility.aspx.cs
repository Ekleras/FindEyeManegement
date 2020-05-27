using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminAbility : System.Web.UI.Page
    {

        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //pridėti
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkForDublicateItems())
            {
                Response.Write("<script>alert('Tokia prekė jau yra pridėta');</script>");
            }

            else
            {
                addNewProduct();
            }
        }

        //atnaujinti
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkForDublicateItems())
            {
                changeMemberInfo();
            }

            else
            {
                
            }          
        }


        //pašalinti 
        protected void Button4_Click(object sender, EventArgs e)
        {
            deleteProduct();
        }


        void addNewProduct()
        {
            try
            {

                string pathToFile = "~/products_inv/adminWriting.png";
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("products_inv/" + fileName));
                pathToFile = "~/products_inv/" + fileName;

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO preke_table(prekes_id,lentynos_nr,prekes_pav,prekes_kate,prekes_img,prekes_kaina,prekes_kainosTipas,prekes_pokate) " +
                    "values(@prekes_id,@lentynos_nr,@prekes_pav,@prekes_kate,@prekes_img,@prekes_kaina,@prekes_kainosTipas,@prekes_pokate)", con);

                cmd.Parameters.AddWithValue("@prekes_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@lentynos_nr", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_pav", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_kate", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@prekes_kaina", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_kainosTipas", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@prekes_img", pathToFile);
                cmd.Parameters.AddWithValue("@prekes_pokate", DropDownList4.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                clearTextBoxes();
                Response.Write("<script>alert('Jums pavyko pridėti prekę');</script>");
                GridView1.DataBind();
                
            }

            catch (Exception exept)
            {

            }

        }

        void deleteProduct()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM preke_table WHERE prekes_id='" + TextBox1.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<script>alert('Vertotojas sėkmingai pašalintas');</script>");
                clearTextBoxes();

                GridView1.DataBind();

            }
            catch (Exception exept)
            {
                Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }
     
        bool checkForDublicateItems()
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM preke_table WHERE prekes_id='" + TextBox1.Text.Trim() + "';", con);

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

        void clearTextBoxes()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "";
            DropDownList3.SelectedValue = "";
            DropDownList4.SelectedValue = "";
        }

        void changeMemberInfo()
        {
            try
            {
                string pathToFile = "~/products_inv/adminWriting.png";
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("products_inv/" + fileName));
                pathToFile = "~/products_inv/" + fileName;

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE preke_table SET lentynos_nr=@lentynos_nr,prekes_pav=@prekes_pav,prekes_kate=@prekes_kate,prekes_img=@prekes_img,prekes_kaina=@prekes_kaina,prekes_kainosTipas=@prekes_kainosTipas,prekes_pokate=@prekes_pokate  WHERE prekes_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@lentynos_nr", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_pav", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_kate", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@prekes_img", pathToFile);
                cmd.Parameters.AddWithValue("@prekes_kaina", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@prekes_kainosTipas", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@prekes_pokate", DropDownList4.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                clearTextBoxes();
                GridView1.DataBind();

                Response.Write("<script>alret('Jums pavyko prisiregistruoti! Galite prisijungti!');</script>");
            }
            catch (Exception exept)
            {
                //  Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }
        

        void getProductById()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM preke_table WHERE prekes_id='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter ada = new SqlDataAdapter(cmd);

                DataTable dataT = new DataTable();

                ada.Fill(dataT);
                if (dataT.Rows.Count >= 1)
                {
                    TextBox1.Text = dataT.Rows[0][0].ToString();
                    TextBox3.Text = dataT.Rows[0][1].ToString();
                    TextBox2.Text = dataT.Rows[0][2].ToString();
                    DropDownList1.SelectedValue = dataT.Rows[0][3].ToString();
                    DropDownList4.SelectedValue = dataT.Rows[0][7].ToString();
                    DropDownList3.SelectedValue = dataT.Rows[0][6].ToString();
                    TextBox4.Text = dataT.Rows[0][5].ToString();

                }

                else
                {
                    Response.Write("<script>alert('Su tokiu ID prekės nerasta');</script>");
                }
            }
            catch (Exception exept)
            {
                Response.Write("<script>alert('" + exept.Message + "')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getProductById();
        }
    }
}