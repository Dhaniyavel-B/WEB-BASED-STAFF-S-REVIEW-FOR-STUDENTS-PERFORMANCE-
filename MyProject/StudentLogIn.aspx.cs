using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class StudentLogIn : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from StudentRegistrationDetails where UserID='"+TextBox8.Text.Trim()+"' AND Password='"+TextBox9.Text.Trim()+"' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    Response.Redirect("StudentWelcome.aspx");
                    Response.Write("<script>alert('Login Successful')</script>");
                    Session["UserID"] = dr.GetValue(9).ToString();
                    Session["FullName"] = dr.GetValue(0).ToString();
                    Session["role"] = "Student";
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserID or Password')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegistrationPage.aspx");
        }
    }
}