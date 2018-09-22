using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace SEM_4_Project_WebProgramming
{
    public partial class BankCreateAccount : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = G:\\GT2\\Project Files\\VB-ASP Project\\SEM_4_Project_WebProgramming\\SEM_4_Project_WebProgramming\\App_Data\\WebSiteMain.mdf; Integrated Security = True; Connect Timeout = 30";
            
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            string trialtext;

            cmd.CommandText = "insert into dbo.SniperBank(cl_fname, cl_mname, cl_lname, cl_age, cl_occupation, cl_password, cl_credit, cl_email) values('"+ffname.Text+"', '"+fmname.Text+"', '"+flname.Text+"', '"+fage.Text+"', '"+foccu.Text+"', '"+fpassword.Text+"', '"+finitcredit.Text+"', '" + femail.Text + "');";
            cmd.Connection = conn;
            
            conn.Open();

            cmd.ExecuteNonQuery();

            cmd.CommandText = "select cl_id from dbo.SniperBank where cl_fname='" + ffname.Text + "' and cl_mname='" + fmname.Text + "' and cl_lname='" + flname.Text + "';";
            trialtext = cmd.ExecuteScalar().ToString();

            conn.Close();

            Response.Write("<script>alert('Your Account Number: "+trialtext+"')</script>");

            Response.Redirect("FacePage.aspx");
        }   
    }


}