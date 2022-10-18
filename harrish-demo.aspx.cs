using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MyProject
{
    public partial class harrish_demo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
                ShowData();
            }
        }
        void ShowData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmdgrid = new SqlCommand("SELECT * FROM Dummy", con);
                SqlDataReader dr = cmdgrid.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            
            
            ShowData();
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            Label name = GridView1.Rows[e.RowIndex].FindControl("lbl_Name") as Label;
            Label register = GridView1.Rows[e.RowIndex].FindControl("lbl_Register") as Label;          
            TextBox a1 = GridView1.Rows[e.RowIndex].FindControl("txt_A1") as TextBox;
            TextBox a2 = GridView1.Rows[e.RowIndex].FindControl("txt_A2") as TextBox;
            TextBox a3 = GridView1.Rows[e.RowIndex].FindControl("txt_A3") as TextBox;
            TextBox a4 = GridView1.Rows[e.RowIndex].FindControl("txt_A4") as TextBox;
            TextBox a5 = GridView1.Rows[e.RowIndex].FindControl("txt_A5") as TextBox;
            TextBox a6 = GridView1.Rows[e.RowIndex].FindControl("txt_A6") as TextBox;
            TextBox a7 = GridView1.Rows[e.RowIndex].FindControl("txt_A7") as TextBox;
            TextBox a8 = GridView1.Rows[e.RowIndex].FindControl("txt_A8") as TextBox;
            TextBox a9 = GridView1.Rows[e.RowIndex].FindControl("txt_A9") as TextBox;
            TextBox a10 = GridView1.Rows[e.RowIndex].FindControl("txt_A10") as TextBox;
            TextBox a11 = GridView1.Rows[e.RowIndex].FindControl("txt_A11") as TextBox;
            TextBox a12 = GridView1.Rows[e.RowIndex].FindControl("txt_A12") as TextBox;
            TextBox a13 = GridView1.Rows[e.RowIndex].FindControl("txt_A13") as TextBox;
            TextBox total = GridView1.Rows[e.RowIndex].FindControl("txt_Total") as TextBox;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //updating the record  
            int a = Convert.ToInt32(a1.Text) + Convert.ToInt32(a2.Text)+ Convert.ToInt32(a3.Text)+ Convert.ToInt32(a4.Text)+ Convert.ToInt32(a5.Text)+ Convert.ToInt32(a6.Text)+ Convert.ToInt32(a7.Text)+ Convert.ToInt32(a8.Text)+ Convert.ToInt32(a9.Text)+ Convert.ToInt32(a10.Text)+ Convert.ToInt32(a11.Text)+ Convert.ToInt32(a12.Text)+ Convert.ToInt32(a13.Text);
            SqlCommand cmd1 = new SqlCommand("Update Dummy set A1='"+a1.Text+"',A2='"+a2.Text+"',A3='"+a3.Text+"',A4='"+a4.Text+"',A5='"+a5.Text+"',A6='"+a6.Text+"',A7='"+a7.Text+"',A8='"+a8.Text+"',A9='"+a9.Text+"',A10='"+a10.Text+"',A11='"+a11.Text+"',A12='"+a12.Text+"',A13='"+a13.Text+"',Total='"+a+"'  where ID=" + Convert.ToInt32(id.Text), con);
            cmd1.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            ShowData();
        }


        


    }
}