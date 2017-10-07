using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP033142_UIA_booking_sys
{
    public partial class Booking : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection con = new SqlConnection("Server=tcp:uiaonlinedb.database.windows.net,1433;Initial Catalog=UIA_Online_Database;Persist Security Info=False;User ID=mayuiaonlinedb;Password=may@pass123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               
                if (Request.QueryString["Flight_count"]=="2")
                {

                    deplab.Text = Request.QueryString["Dep"];
                    deptimelab.Text = Request.QueryString["Dep_Time"];
                    dep_arr.Text = Request.QueryString["Dep_Arr"];
                    dep_arr_timelab.Text = Request.QueryString["Dep_Arr_Time"];
                    depdatelab.Text = Request.QueryString["Dep_Date"];
                    depclasslab.Text = Request.QueryString["Dep_class"];
                    depseatlab.Text = Request.QueryString["Dep_seat"];
                    arrlab.Text = Request.QueryString["Arr"];
                    arrtimelab.Text = Request.QueryString["Arr_Time"];
                    arr_deplab.Text = Request.QueryString["Arr_Dep"];
                    arr_dep_timelab.Text = Request.QueryString["Arr_Dep_Time"];
                    arrdatelab.Text = Request.QueryString["Arr_Date"];
                    retclasslab.Text = Request.QueryString["Ret_class"];
                    retseatlab.Text =Request.QueryString["Ret_seat"];
                }
                if (Request.QueryString["Flight_count"] == "1")
                {
                    deplab.Text = Request.QueryString["Dep"];
                    deptimelab.Text = Request.QueryString["Dep_Time"];
                    dep_arr.Text = Request.QueryString["Dep_Arr"];
                    dep_arr_timelab.Text = Request.QueryString["Dep_Arr_Time"];
                    depdatelab.Text = Request.QueryString["Dep_Date"];
                    depclasslab.Text = Request.QueryString["Dep_class"];
                    depseatlab.Text =  Request.QueryString["Dep_seat"];

                    arrlab.Visible = false;
                    arrtimelab.Visible = false;
                    arr_deplab.Visible = false;
                    arr_dep_timelab.Visible = false;
                    arrdatelab.Visible = false;
                    retclasslab.Visible = false;
                    retseatlab.Visible = false;
                }
                generatePrice();
                generateTotalBill();
            }

        }

        public void generateTotalBill()
        {
            if (Request.QueryString["Flight_count"] == "2")
            {
                String dep = Request.QueryString["Dep"];
                String arr = Request.QueryString["Arr"];
                String dep_class = Request.QueryString["Dep_class"];
                String arr_class = Request.QueryString["Ret_class"];
                con.Open();
                cmd = new SqlCommand("Calculate_Bill", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@arr", arr);
                cmd.Parameters.AddWithValue("@dep", dep);
                cmd.Parameters.AddWithValue("@dep_class", dep_class);
                cmd.Parameters.AddWithValue("@arr_class", arr_class);

                cmd.Parameters.AddWithValue("@arr_price", 0);
                cmd.Parameters.AddWithValue("@dep_class_price", 0);
                cmd.Parameters.AddWithValue("@arr_class_price", 0);
                cmd.Parameters.AddWithValue("@dep_price", 0);

                cmd.Parameters.Add("@totalbill", SqlDbType.Decimal);
                cmd.Parameters["@totalbill"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                con.Close();
                totalbilllab.Text = cmd.Parameters["@totalbill"].Value.ToString();
            }

            if (Request.QueryString["Flight_count"] == "1")
            {
                String dep = Request.QueryString["Dep"];
                String arr = null;
                String dep_class = Request.QueryString["Dep_class"];
                String arr_class = null;
                con.Open();
                cmd = new SqlCommand("Calculate_Bill", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@arr", arr);
                cmd.Parameters.AddWithValue("@dep", dep);
                cmd.Parameters.AddWithValue("@dep_class", dep_class);
                cmd.Parameters.AddWithValue("@arr_class", arr_class);

                cmd.Parameters.AddWithValue("@arr_price", 0);
                cmd.Parameters.AddWithValue("@dep_class_price", 0);
                cmd.Parameters.AddWithValue("@arr_class_price", 0);
                cmd.Parameters.AddWithValue("@dep_price", 0);

                cmd.Parameters.Add("@totalbill", SqlDbType.Decimal);
                cmd.Parameters["@totalbill"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                con.Close();
                totalbilllab.Text = cmd.Parameters["@totalbill"].Value.ToString();
            }
        }

        public void generatePrice()
        {
            if (Request.QueryString["Flight_count"] == "2")
            {
                try
                {
                    con.Open();
                    cmd = new SqlCommand("Select Dep_price from Departure where Dep_Name = '" + Request.QueryString["Dep"] + "' group by Dep_price", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        deppricelab.Text = "Departure Price= " + dr["Dep_price"].ToString();
                    }
                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Select Arr_price from Arrival where Arr_Name = '" + Request.QueryString["Arr"] + "' group by Arr_price", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        arrpricelab.Text = "Arrival Price= " + dr["Arr_price"].ToString();
                    }
                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Select Cla_Price from Class where Class = '" + Request.QueryString["Dep_class"] + "' ", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        depclasspricelab.Text = "Class Price= " + dr["Cla_Price"].ToString();
                    }
                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Select Cla_Price from Class where Class = '" + Request.QueryString["Ret_class"] + "' ", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        arriclasspricelab.Text = "Class Price= " + dr["Cla_Price"].ToString();
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }

            if (Request.QueryString["Flight_count"] == "1")
            {
                try
                {
                    con.Open();
                    cmd = new SqlCommand("Select Dep_price from Departure where Dep_Name = '" + Request.QueryString["Dep"] + "' group by Dep_price", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        deppricelab.Text = "Departure Price= " + dr["Dep_price"].ToString();
                    }
                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Select Cla_Price from Class where Class = '" + Request.QueryString["Dep_class"] + "' ", con);
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        depclasspricelab.Text = "Class Price= " + dr["Cla_Price"].ToString();
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void paybtn_Click(object sender, EventArgs e)
        {
          
            if (Request.QueryString["Flight_count"] == "2")
            {

                Response.Redirect("~/Payment.aspx?name=" + Request.QueryString["name"] +
                "&Dep=" + deplab.Text +
                "&Dep_time=" + deptimelab.Text+
                "&Dep_arr=" + dep_arr.Text +
                "&Dep_arr_time=" + dep_arr_timelab.Text+
                "&Dep_date=" + depdatelab.Text+
                "&Dep_class=" + depclasslab.Text +
                "&Dep_seat=" + depseatlab.Text+
                "&Arr=" + arrlab.Text +
                "&Arr_time=" + arrtimelab.Text +
                "&Arr_dep=" + arr_deplab.Text +
                "&Arr_dep_time=" + arr_dep_timelab.Text +
                "&Arr_date=" + arrdatelab.Text +
                "&Arr_class=" + retclasslab.Text +
                "&Arr_seat=" + retseatlab.Text+
                "&Flight_count="+ Request.QueryString["Flight_count"]);
            }

            if (Request.QueryString["Flight_count"] == "1")
            {
                Response.Redirect("~/Payment.aspx?name=" + Request.QueryString["name"] +
                "&Dep=" + deplab.Text +
                "&Dep_time=" + deptimelab.Text +
                "&Dep_arr=" + dep_arr.Text +
                "&Dep_arr_time=" + dep_arr_timelab.Text +
                "&Dep_date=" + depdatelab.Text +
                "&Dep_class=" + depclasslab.Text +
                "&Dep_seat=" + depseatlab.Text +
                 "&Flight_count=" + Request.QueryString["Flight_count"]);
            }
        }
    }
}