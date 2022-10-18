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
    public partial class AdminWelcome : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT COUNT(EmailID) FROM AdminAddStudentDetails", con);
                string count=Convert.ToString(cmd.ExecuteScalar());
                studentcountdashboard.InnerHtml = count;

                SqlCommand cmdstaff = new SqlCommand("SELECT COUNT(EmailID) FROM AdminAddStaffDetails",con);
                string staffcount = Convert.ToString(cmdstaff.ExecuteScalar());
                staffcountdashboard.InnerHtml = staffcount;

                SqlCommand cmdmcacount = new SqlCommand("select count(Department) from AdminAddStaffDetails where Department='MCA'",con);
                string mcacount = Convert.ToString(cmdmcacount.ExecuteScalar());
                mca_count.Text = mcacount;

                SqlCommand cmdmbacount = new SqlCommand("select count(Department) from AdminAddStaffDetails where Department='MBA'",con);
                string mbacount = Convert.ToString(cmdmbacount.ExecuteScalar());
                mba_count.Text = mbacount;

                SqlCommand cmdbcacount = new SqlCommand("select count(Department) from AdminAddStaffDetails where Department='BCA'", con);
                string bcacount = Convert.ToString(cmdbcacount.ExecuteScalar());
                bca_count.Text = bcacount;

                SqlCommand cmdbbacount = new SqlCommand("select count(Department) from AdminAddStaffDetails where Department='BBA'", con);
                string bbacount = Convert.ToString(cmdbbacount.ExecuteScalar());
                bba_count.Text = bbacount;

                SqlCommand cmdmsccstcount = new SqlCommand("select count(Department) from AdminAddStaffDetails where Department='M.Sc Computer Science & Technology'", con);
                string msccstcount = Convert.ToString(cmdmsccstcount.ExecuteScalar());
                msccst_count.Text = msccstcount;

              
               

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["role"] = "admin";
            Response.Redirect("AddStudents.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["role"] = "admin";
            Response.Redirect("AddStaffs.aspx");
        }
    }
}