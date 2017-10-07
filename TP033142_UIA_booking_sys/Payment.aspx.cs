using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP033142_UIA_booking_sys
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection con = new SqlConnection("Server=tcp:uiaonlinedb.database.windows.net,1433;Initial Catalog=UIA_Online_Database;Persist Security Info=False;User ID=mayuiaonlinedb;Password=may@pass123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                if (Request.QueryString["Flight_count"] == "2")
                {
                    String name = Request.QueryString["name"];
                    String dep = Request.QueryString["Dep"];
                    String dep_time = Request.QueryString["Dep_time"];
                    String dep_arr = Request.QueryString["Dep_arr"];
                    String dep_arr_time = Request.QueryString["Dep_arr_time"];
                    String dep_date = Request.QueryString["Dep_date"];
                    String dep_class = Request.QueryString["Dep_class"];
                    String dep_seat = Request.QueryString["Dep_seat"];
                    String arr = Request.QueryString["Arr"];
                    String arr_time = Request.QueryString["Arr_time"];
                    String arr_dep = Request.QueryString["Arr_dep"];
                    String arr_dep_time = Request.QueryString["Arr_dep_time"];
                    String arr_date = Request.QueryString["Arr_date"];
                    String arr_class = Request.QueryString["Arr_class"];
                    String arr_seat = Request.QueryString["Arr_seat"];


                    con.Open();
                    cmd = new SqlCommand("Insert into Booking_info (User_Name," +
                        "Dep_Name, Dep_Time, Dep_arr_Name, Dep_arr_Time, Dep_Date, Dep_Class, Dep_Seat," +
                        "Arr_Name, Arr_Time, Arr_dep_Name, Arr_dep_Time, Arr_Date, Arr_Class, Arr_Seat)" +
                        " values (@1," +
                        "@2, @3, @4, @5, @6, @7,@8," +
                        "@9, @10, @11, @12, @13, @14, @15)", con);

                    cmd.Parameters.AddWithValue("@1", name);
                    cmd.Parameters.AddWithValue("@2", dep);
                    cmd.Parameters.AddWithValue("@3", dep_time);

                    cmd.Parameters.AddWithValue("@4", dep_arr);
                    cmd.Parameters.AddWithValue("@5", dep_arr_time);
                    cmd.Parameters.AddWithValue("@6", dep_date);
                    cmd.Parameters.AddWithValue("@7", dep_class);
                    cmd.Parameters.AddWithValue("@8", dep_seat);
                    cmd.Parameters.AddWithValue("@9", arr);
                    cmd.Parameters.AddWithValue("@10", arr_time);
                    cmd.Parameters.AddWithValue("@11", arr_dep);
                    cmd.Parameters.AddWithValue("@12", arr_dep_time);
                    cmd.Parameters.AddWithValue("@13", arr_date);
                    cmd.Parameters.AddWithValue("@14", arr_class);
                    cmd.Parameters.AddWithValue("@15", arr_seat);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Update Departure_Seat set Seat_available = 'Unavailable' from Departure_Seat " +
                        " Inner Join Arrival on " +
                        "Departure_Seat.Dep_ID = Departure.Dep_ID " +
                        "where Departure_Seat.Seat_No = '" + dep_seat + "' and Departure.Dep_Name = '" + dep + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("Update Arrival_Seat set Seat_available = 'Unavailable' from Arrival_Seat " +
                        " Inner Join Arrival on " +
                        "Arrival_Seat.Arr_ID = Arrival.Arr_ID " +
                        "where Arrival_Seat.Seat_No = '" + dep_seat + "' and Arrival.Arr_Name = '" + dep + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (Request.QueryString["Flight_count"] == "1")
                {
                    String name = Request.QueryString["name"];
                    String dep = Request.QueryString["Dep"];
                    String dep_time = Request.QueryString["Dep_time"];
                    String dep_arr = Request.QueryString["Dep_arr"];
                    String dep_arr_time = Request.QueryString["Dep_arr_time"];
                    String dep_date = Request.QueryString["Dep_date"];
                    String dep_class = Request.QueryString["Dep_class"];
                    String dep_seat = Request.QueryString["Dep_seat"];
                    con.Open();
                    cmd = new SqlCommand("Insert into Booking_info (User_Name," +
                        "Dep_Name, Dep_Time, Dep_arr_Name, Dep_arr_Time, Dep_Date, Dep_Class, Dep_Seat," +
                        "Arr_Name, Arr_Time, Arr_dep_Name, Arr_dep_Time, Arr_Date, Arr_Class, Arr_Seat)" +
                        " values (@1," +
                        "@2, @3, @4, @5, @6, @7,@8," +
                        "@9, @10, @11, @12, @13, @14, @15)", con);
                    cmd.Parameters.AddWithValue("@1", name);
                    cmd.Parameters.AddWithValue("@2", dep);
                    cmd.Parameters.AddWithValue("@3", dep_time);
                    cmd.Parameters.AddWithValue("@4", dep_arr);
                    cmd.Parameters.AddWithValue("@5", dep_arr_time);
                    cmd.Parameters.AddWithValue("@6", dep_date);
                    cmd.Parameters.AddWithValue("@7", dep_class);
                    cmd.Parameters.AddWithValue("@8", dep_seat);
                    cmd.Parameters.AddWithValue("@9", null);
                    cmd.Parameters.AddWithValue("@10", null);
                    cmd.Parameters.AddWithValue("@11", null);
                    cmd.Parameters.AddWithValue("@12", null);
                    cmd.Parameters.AddWithValue("@13", null);
                    cmd.Parameters.AddWithValue("@14", null);
                    cmd.Parameters.AddWithValue("@15", null);
                    cmd.ExecuteNonQuery();
                    con.Close();


                    con.Open();
                    cmd = new SqlCommand("Update Departure_Seat set Seat_available = 'Unavailable' from Departure_Seat " +
                        " Inner Join Arrival on " +
                        "Departure_Seat.Dep_ID = Departure.Dep_ID " +
                        "where Departure_Seat.Seat_No = '"+ dep_seat + "' and Departure.Dep_Name = '"+dep+"'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}