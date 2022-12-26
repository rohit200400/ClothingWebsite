using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuvKush_Website
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLgnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed) con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Clothing_Store].[dbo].[Users]" +
                    " WHERE User_ID ='" + TBLoginID.Text.Trim() + "' and Password ='" + TBLoginPwd.Text.Trim() + "' ",con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        //Login credintials are verified
                        Response.Write(@"<script language='javascript'>alert('Hi, '"+reader.GetValue(0)+"'. You logged in successfully.')</script>");
                    }
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