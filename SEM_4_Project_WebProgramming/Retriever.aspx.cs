using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;

namespace SEM_4_Project_WebProgramming
{
    public partial class Retriever : System.Web.UI.Page
    {
        int temp_cid;
        SqlConnection conn = new SqlConnection();










        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = G:\\GT2\\Project Files\\VB-ASP Project\\SEM_4_Project_WebProgramming\\SEM_4_Project_WebProgramming\\App_Data\\WebSiteMain.mdf; Integrated Security = True; Connect Timeout = 30";
            int carval;
            
            //carval = Int32.Parse(Request.QueryString["CarVal"]);

            carval = int.Parse(Request.QueryString["CarVal"]);


            temp_cid = carval;

            data_fetch(carval);
            

            
        }

        

















        protected void Orderbutton_Click(object sender, EventArgs e)
        {
            if (car_price.Text == "")
            {
                Response.Write("<script>alert('You Haven't Selected A Car Yet!')</script>");
            }
            else
            {
                Response.Redirect("BankLogin.aspx?Cost=" + car_price.Text);
            }
        }

        protected void l911carrera_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=1");

        }

        protected void l911carreras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=2");
        }

        protected void l911carrera4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=3");
        }

        protected void l911carrera4s_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=4");
        }

        protected void l911targa4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=5");
        }

        protected void l911targa4s_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=6");
        }

        protected void l911caymans_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=8");
        }

        protected void l911caymangts_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=9");
        }

        protected void l911caymangt4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=10");
        }

        protected void l911turbo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l911turbos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l911turboscab_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l911turbocab_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l911gt3rs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l911r_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l918spyder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void lmissione_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void lrsspyder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }

        protected void l919hybrid_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retriever.aspx?CarVal=99");
        }




        protected void data_fetch(int _car_id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            string no_data;

            cmd.CommandText = "select count(car_id) from dbo.CarData where car_id="+_car_id+";";

            conn.Open();
            no_data = cmd.ExecuteScalar().ToString();
            conn.Close();
            


            conn.Open();
            if (no_data.Equals("0"))
            {
                car_e_layout.Text = "N/A";
                car_horsepower.Text = "N/A";
                car_rpm.Text = "N/A";
                car_torque.Text = "N/A";
                car_len.Text = "N/A";
                car_wid.Text = "N/A";
                car_hgt.Text = "N/A";
                car_wbase.Text = "N/A";
                car_wt.Text = "N/A";
                car_tpspd.Text = "N/A";
                car_accel.Text = "N/A";
                car_mcity.Text = "N/A";
                car_mhighway.Text = "N/A";
                car_price.Text = "N/A";
            }
            else
            {


                cmd.CommandText = "select car_engine_layout from dbo.CarData where car_id=" + _car_id + ";";
                car_e_layout.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_horsepower from dbo.CarData where car_id=" + _car_id + ";";
                car_horsepower.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_rpm from dbo.CarData where car_id=" + _car_id + ";";
                car_rpm.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_torque from dbo.CarData where car_id=" + _car_id + ";";
                car_torque.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_top_speed from dbo.CarData where car_id=" + _car_id + ";";
                car_tpspd.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_acceleration from dbo.CarData where car_id=" + _car_id + ";";
                car_accel.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_length from dbo.CarData where car_id=" + _car_id + ";";
                car_len.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_width from dbo.CarData where car_id=" + _car_id + ";";
                car_wid.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_height from dbo.CarData where car_id=" + _car_id + ";";
                car_hgt.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_wheelbase from dbo.CarData where car_id=" + _car_id + ";";
                car_wbase.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_gweight from dbo.CarData where car_id=" + _car_id + ";";
                car_wt.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select car_mileage_city from dbo.CarData where car_id=" + _car_id + ";";
                car_mcity.Text = cmd.ExecuteScalar().ToString();
                if (car_mcity.Text.Equals(""))
                {
                    car_mcity.Text = "N/A";
                }

                cmd.CommandText = "select car_mileage_highway from dbo.CarData where car_id=" + _car_id + ";";
                car_mhighway.Text = cmd.ExecuteScalar().ToString();
                if (car_mhighway.Text.Equals(""))
                {
                    car_mhighway.Text = "N/A";
                }

                cmd.CommandText = "select car_price from dbo.CarData where car_id=" + _car_id + ";";
                car_price.Text = cmd.ExecuteScalar().ToString();

            }
            conn.Close();
        }
    }
}











