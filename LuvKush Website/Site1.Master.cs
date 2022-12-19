using System;

namespace LuvKush_Website
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LBLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void LBMasterAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LBSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void LBUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void LBMasterProfileMgnt_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfileManagement.aspx");
        }

        protected void LBMasterContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void LBMasterFAQs_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQ.aspx");
        }
    }
}