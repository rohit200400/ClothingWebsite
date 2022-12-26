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
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Upload the User data to backend table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnSUSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                // Validate data
                if (!ValidateInputFields())
                {
                    //Pop up Please provide valid input
                    Response.Write("Failure in input Validations");
                    return;
                }
                // Declare Input variabels
                string fullName, dob, phone, mail, state, city, address, loginID, pincode, password;
                // input parameter from UI
                fullName = TBSUName.Text.Trim().ToString();
                dob = TBSUDOB.Text.Trim().ToString();
                phone = TBSUPhone.Text.Trim().ToString();
                mail = TBSUMail.Text.Trim().ToString();
                state = DDLSUState.Text.Trim().ToString();
                city = TBSUCity.Text.Trim().ToString();
                address = TBSUAddress.Text.Trim().ToString();
                loginID = TBSULoginID.Text.Trim().ToString();
                pincode = TBSUPinCode.Text.Trim().ToString();
                password = TBSUPwd.Text.Trim().ToString();
                // function for adding data to Database
                if(!InsertSignUPData(fullName,dob, phone, mail, state, city, address, pincode, loginID, password))
                {
                    // Unsuccessful message
                    Response.Write("Failure in exporting data to Database");
                    return;
                }
                // If insertion is successful display success message else unsucessful message
                Response.Write(@"<script language='javascript'>alert('Details saved successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("Failure in exporting data to Database");
                Response.Write(ex.ToString());
                //Clear variables and the error indicators
            }
        }
        /// <summary>
        /// Takes all the data submited from UI and inserts it to Database
        /// </summary>
        /// <param name="fullName"></param>
        /// <param name="dob"></param>
        /// <param name="phone"></param>
        /// <param name="mail"></param>
        /// <param name="state"></param>
        /// <param name="city"></param>
        /// <param name="address"></param>
        /// <param name="pincode"></param>
        /// <param name="loginID"></param>
        /// <param name="password"></param>
        /// <returns>True or False based on success or failure of Data insertion</returns>
        private bool InsertSignUPData(string fullName, string dob, string phone, string mail, string state, string city, string address, string pincode, string loginID, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                if(con.State == ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "New_user_data_innsertion"; // add procedure name here
                cmd.Connection = con;

                // Updating Parameters
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@DoB", dob);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@MailID",mail);
                cmd.Parameters.AddWithValue("@State", state);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@PinCode", pincode);
                cmd.Parameters.AddWithValue("@LoginID", loginID);
                cmd.Parameters.AddWithValue("@Password", password);

                cmd.ExecuteNonQuery();
                return true;
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        /// <summary>
        /// Validates all the data Submited in UI. Before insertion in Database
        /// </summary>
        /// <returns>
        /// Returns boolean value depending on the validation of Data.
        /// Also sets an indicator in front of the input field where data is invalid.
        /// </returns>
        private bool ValidateInputFields()
        {
            bool validityFlag = true;
            try
            {
                // Login ID Validation
                if(TBSULoginID.Text.Trim() =="" || TBSUPwd.Text.Trim()== "")
                {
                    Response.Write("Password or LoginID cannot be empty");
                    validityFlag = false;
                    return validityFlag;
                }
                if (CheckUserExist())
                {
                    Response.Write("Login ID already exists.");
                    validityFlag = false;
                }
            }
            catch (Exception ex)
            {
                //show popup message of failure in validation
                Response.Write(ex.Message);
            }
            return validityFlag;
        }

        private bool CheckUserExist()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            if (con.State == ConnectionState.Closed) con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from [Clothing_Store].[dbo].[Users] where User_ID ='" + TBSULoginID.Text.Trim() + "'", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if(dt.Rows.Count > 0) { return true; }
            return false;
        }

    }
}