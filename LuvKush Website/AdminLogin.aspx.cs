using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LuvKush_Website
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed) con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Clothing_Store].[dbo].[Admin_Credentials]" +
                    " WHERE AdminID ='" + TBAdminID.Text.Trim() + "' and Password ='" + TBAdminPassword.Text.Trim() + "' ", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    Response.Write(@"<script language='javascript'>alert('You logged in successfully.')</script>");
                }
                else
                {
                    Response.Write(@"<script language='javascript'>alert('Invalid Credentils')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}