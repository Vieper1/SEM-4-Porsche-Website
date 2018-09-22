using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace SEM_4_Project_WebProgramming
{
    public partial class ImageInserter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void uploadtodb_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = G:\\GT2\\Project Files\\VB-ASP Project\\SEM_4_Project_WebProgramming\\SEM_4_Project_WebProgramming\\App_Data\\WebSiteMain.mdf; Integrated Security = True; Connect Timeout = 30";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            if (imageupload.HasFile)
            {
                int length = imageupload.PostedFile.ContentLength;
                byte[] pic = new byte[length];

                imageupload.PostedFile.InputStream.Read(pic, 0, length);

                conn.Open();
                cmd.CommandText = "insert into dbo.ImageDetails(img_name, img_data, car_id) values('" + TextBox1.Text + "', '" + pic + "', '" + car_id.Text + "');";

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Image Upload Successful')</script>");

                conn.Close();
            }
        }
    }
}