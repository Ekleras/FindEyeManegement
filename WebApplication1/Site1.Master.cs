using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         
            try
            {
                if (Session["role"].Equals(""))
                {

                    LinkButton1.Visible = true; //prisijungti
                    LinkButton2.Visible = true; // registracija
                    LinkButton9.Visible = false; // pasisveikinimas su varototoju
                    LinkButton3.Visible = false;  // atsijungti
                    LinkButton4.Visible = false; // peržiūrėti prekes

                    LinkButton6.Visible = true; // administratoriaus prisijungimas
                    LinkButton7.Visible = false; // prekių pridėjimas
                    LinkButton5.Visible = false;  // vartotoju redagavimas
                    LinkButton8.Visible = true; // kontaktai

                }

                else if(Session["role"].Equals("user"))
                {
                    LinkButton6.Visible = false; // administratoriaus prisijungimas
                    LinkButton7.Visible = false; // prekių pridėjimas
                    LinkButton5.Visible = false;  // vartotoju redagavimas
                    LinkButton8.Visible = true; // kontaktai

                    LinkButton1.Visible = false; //prisijungti
                    LinkButton2.Visible = false; // registracija
                    LinkButton9.Visible = true; // pasisveikinimas su varototoju
                    LinkButton9.Text ="Sveiki " + Session["loginName"].ToString();
                    LinkButton3.Visible = true;  // atsijungti
                    LinkButton4.Visible = true; // peržiūrėti prekes

                }

                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false; //prisijungti
                    LinkButton2.Visible = false; // registracija
                    LinkButton9.Visible = true; // pasisveikinimas su varototoju
                    LinkButton9.Text = "Sveiki Administratoriau";
                    LinkButton3.Visible = true;  // atsijungti
                    LinkButton4.Visible = false; // peržiūrėti prekes

                    LinkButton6.Visible = false; // administratoriaus prisijungimas
                    LinkButton7.Visible = true; // prekių pridėjimas
                    LinkButton5.Visible = true;  // vartotoju redagavimas
                    LinkButton8.Visible = true; // kontaktai

                }
            }

            catch(Exception exept)
            {

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("contacts.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userRegistration.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberLogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAbility.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["loginName"] = "";
            Session["name"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; //prisijungti
            LinkButton2.Visible = true; // registracija
            LinkButton9.Visible = false; // pasisveikinimas su varototoju
            LinkButton3.Visible = false;  // atsijungti
            LinkButton4.Visible = false; // peržiūrėti prekes

            LinkButton6.Visible = true; // administratoriaus prisijungimas
            LinkButton7.Visible = false; // prekių pridėjimas
            LinkButton5.Visible = false;  // vartotoju redagavimas
            LinkButton8.Visible = true; // kontaktai

            Response.Redirect("HomePage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminUsersControl.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {


        }
    }
}