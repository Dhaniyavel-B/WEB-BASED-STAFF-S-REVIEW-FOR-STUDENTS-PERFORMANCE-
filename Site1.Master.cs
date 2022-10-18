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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]!=null)
                {
                    if (Session["role"].Equals(""))
                    {
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = true;
                    }
                    else if (Session["role"].Equals("admin"))
                    {
                        LinkButton1.Visible = false;
                        LinkButton2.Visible = false;
                        LinkButton3.Visible = true;
                        LinkButton4.Visible = false;
                    }
                }
                
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["UserID"] = "";
            Session["role"] = "";
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            LinkButton4.Visible = true;
            Response.Redirect("HomePage.aspx");
        }
    }
}