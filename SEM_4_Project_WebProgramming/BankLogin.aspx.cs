using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace SEM_4_Project_WebProgramming
{
    public partial class BankLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        string transaction_magnitude;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = G:\\GT2\\Project Files\\VB-ASP Project\\SEM_4_Project_WebProgramming\\SEM_4_Project_WebProgramming\\App_Data\\WebSiteMain.mdf; Integrated Security = True; Connect Timeout = 30";

            if (Request.QueryString["Cost"] != null)
            {
                transaction_magnitude = Request.QueryString["Cost"];
            }

        }

        protected void paybutton_Click(object sender, EventArgs e)
        {
            if (accountnumber.Text == "")
            {
                accnowarning.Text = "Please Fill This Field!";
                accountnumber.Focus();
            }
            else if(password.Text=="")
            {
                password.Text = "Please Fill This Field!";
                password.Focus();
            }
            else
            {
                accnowarning.Text = "";
                password.Text = "";

                SqlCommand cmd = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd.Connection = conn;
                cmd2.Connection = conn;

                conn.Open();

                cmd.CommandText = "select count(cl_id) from dbo.SniperBank where cl_id=" + accountnumber.Text + ";";
                cmd2.CommandText = "select cl_password from dbo.SniperBank where cl_id=" + accountnumber.Text + ";";
                if (cmd.ExecuteScalar().ToString() == "0")
                {
                    accnowarning.Text = "Incorrect Account Number!";
                    pswdwarning.Text = "";
                    accountnumber.Focus();
                }
                else if(cmd2.ExecuteScalar().ToString().Equals(password.Text))
                {
                    accnowarning.Text = "";
                    pswdwarning.Text = "Incorrect Password!";
                    password.Focus();
                }
                else
                {
                    accnowarning.Text = "";
                    pswdwarning.Text = "";
                    cmd.CommandText = "update dbo.SniperBank set cl_credit = (cl_credit-" + transaction_magnitude + ") where cl_id=" + accountnumber.Text + ";";
                    cmd.ExecuteNonQuery();
                    accountnumber.Text = "";
                    password.Text = "";

                    Response.Redirect("Congratulations.aspx");
                }

                conn.Close();


            }

            

            
        }
    }
}