using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class AddStudents : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkMemberExists())
            {
                Response.Write("<script>alert('UserID already exits,try a different one!')</script>");
            }
            else
            {
                signUpNewUser();
            }
            
        }

        bool checkMemberExists()
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM AdminAddStudentDetails WHERE UserID='"+Emailid.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                
                


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
            
        }

        void signUpNewUser()
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO AdminAddStudentDetails(FullName,EmailID,Password,Department,Year) values(@FullName,@EmailID,@Password,@Department,@Year)", con);
                cmd.Parameters.AddWithValue("@FullName", Fullname.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", Emailid.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                cmd.Parameters.AddWithValue("@Department", StudentDepartmentSelection.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Year", StudentYearSelection.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully added to database')</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["role"] = "admin";
            Response.Redirect("AddStaffs.aspx");
        }
    }
}