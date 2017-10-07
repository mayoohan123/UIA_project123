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
    public partial class ViewListFlight : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection con = new SqlConnection("Server=tcp:uiaonlinedb.database.windows.net,1433;Initial Catalog=UIA_Online_Database;Persist Security Info=False;User ID=mayuiaonlinedb;Password=may@pass123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        DataTable dt;
        static String departure_location;
        static String arrival_location;
        static String departure_class;
        static String arrival_class;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listFlight(Request.QueryString["Dep"],
                    Request.QueryString["Dep_date"],
                    Request.QueryString["Dep_day"],
                    Request.QueryString["Arr"],
                    Request.QueryString["Ret_date"],
                    Request.QueryString["Ret_day"]);
                generateClass();
                generateClass1();
            }
        }

        public void listFlight(String departure, String depart_date, String depart_day, String arrival, String Ret_date, String Ret_day)
        {
            try
            {
                // Route with return
                if (Ret_date != null && Ret_day!=null)
                {
                    depart.Text = departure;
                    arrive.Text = arrival;
                    depDate.Text = depart_date;
                    depDay.Text = depart_day;
                    depart1.Text = arrival;
                    arrive1.Text = departure;
                    depDate1.Text = Ret_date;
                    depDay1.Text = Ret_day;
                    oneRoundTrip(departure,depart_day, arrival, Ret_day);


                }
                else
                {
                    oneWayTrip(departure, depart_day, arrival, Ret_day);
                    classlist1.Visible = false;
                    seatlist1.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        public void oneRoundTrip(String departure,  String depart_day, String arrival, String arrival_day)
        {
            getDeparture(departure, depart_day, 1);
            getArrival(arrival, depart_day, 1);

            getDeparture(arrival, arrival_day, 2);
            getArrival(departure, arrival_day, 2);
        }

        public void oneWayTrip(String departure, String depart_day, String arrival, String arrival_day)
        {
            getDeparture(departure, depart_day, 1);
            getArrival(arrival, depart_day, 1);

        }
        public void getDeparture(String departure,  String depart_day, int count_flight)
        {
            if (count_flight == 1)
            {
                con.Open();
                cmd = new SqlCommand("Select Dep_Name, Dep_Time from Departure where Dep_Name='" + departure + "' and Dep_Date='" + depart_day + "'", con);
                dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                departure_view.DataSource = dt;
                departure_view.DataBind();
                con.Close();
            }

            if(count_flight==2)
            {
                con.Open();
                cmd = new SqlCommand("Select Dep_Name, Dep_Time from Departure where Dep_Name='" + departure + "' and Dep_Date='" + depart_day + "'", con);
                dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                departure_view1.DataSource = dt;
                departure_view1.DataBind();
                con.Close();
            }
        }
        public void getArrival(String arrival, String depart_day, int count_flight)
        {
            if (count_flight == 1)
            {
                con.Open();
                cmd = new SqlCommand("Select Arr_Name, Arr_Time from Arrival where Arr_Name='" + arrival + "' and Arr_Date='" + depart_day + "'", con);
                dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                arrival_view.DataSource = dt;
                arrival_view.DataBind();
                con.Close();
            }
            if(count_flight==2)
            {
                con.Open();
                cmd = new SqlCommand("Select Arr_Name, Arr_Time from Arrival where Arr_Name='" + arrival + "' and Arr_Date='" + depart_day + "'", con);
                dr = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(dr);
                arrival_view1.DataSource = dt;
                arrival_view1.DataBind();
                con.Close();
            }
        }

        public void generateClass()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("Select * from Class", con);
                classlist.DataSource = cmd.ExecuteReader();
                classlist.DataTextField = "Class";
                classlist.DataValueField = "Class";
                classlist.DataBind();

                classlist.Items.Insert(0, "Select Class");
                classlist.Items[0].Selected = true;
                classlist.Items[0].Attributes["Disabled"] = "Disabled";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        public void generateClass1()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("Select * from Class", con);
                classlist1.DataSource = cmd.ExecuteReader();
                classlist1.DataTextField = "Class";
                classlist1.DataValueField = "Class";
                classlist1.DataBind();
                con.Close();

                classlist1.Items.Insert(0, "Select Class");
                classlist1.Items[0].Selected = true;
                classlist1.Items[0].Attributes["Disabled"] = "Disabled";
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void classlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                departure_location = departure_view.Rows[0].Cells[0].Text;
                departure_class = classlist.SelectedItem.Text;
                con.Open();
                cmd = new SqlCommand("Departure_FindSeat", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@class", departure_class);
                cmd.Parameters.AddWithValue("@departure", departure_location);
                seatlist.DataSource= cmd.ExecuteReader();
                seatlist.DataTextField = "Seat_No";
                seatlist.DataValueField = "Seat_No";
                seatlist.DataBind();
                con.Close();

                seatlist.Items.Insert(0, "Select Seat");
                seatlist.Items[0].Selected = true;
                seatlist.Items[0].Attributes["Disabled"] = "Disabled";
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

            //   cmd = new SqlCommand("Select ",con);
        }

        protected void classlist1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                arrival_location = departure_view1.Rows[0].Cells[0].Text;
                arrival_class = classlist1.SelectedItem.Text;
                con.Open();
                cmd = new SqlCommand("Arrival_FindSeat", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@class", arrival_class);
                cmd.Parameters.AddWithValue("@arrival", arrival_location);
                seatlist1.DataSource = cmd.ExecuteReader();
                seatlist1.DataTextField = "Seat_No";
                seatlist1.DataValueField = "Seat_No";
                seatlist1.DataBind();
                con.Close();

                seatlist1.Items.Insert(0, "Select Seat");
                seatlist1.Items[0].Selected = true;
                seatlist1.Items[0].Attributes["Disabled"] = "Disabled";
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void bookbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (classlist1.Visible && seatlist1.Visible)
                {
                    Response.Write("<script>alert('Visisble Class and Seat from Arrival')</script>");
                    if (classlist.SelectedIndex > 0 && seatlist.SelectedIndex > 0 && classlist1.SelectedIndex > 0 && seatlist1.SelectedIndex > 0)
                    {
                        Response.Redirect("~/Booking.aspx?name=" + Request.QueryString["name"] + 
                        "&Dep=" + departure_location +
                        "&Dep_class=" + departure_class +
                        "&Dep_seat=" + seatlist.SelectedItem.Text.ToString() +
                        "&Dep_Date=" + depDate.Text + depDay.Text +
                        "&Dep_Time=" + departure_view.Rows[0].Cells[1].Text +
                        "&Dep_Arr=" + arrival_view.Rows[0].Cells[0].Text +
                        "&Dep_Arr_Time=" + arrival_view.Rows[0].Cells[1].Text+
                        "&Arr=" + arrival_location +
                        "&Ret_class=" + arrival_class +
                        "&Ret_seat=" + seatlist1.SelectedItem.Text.ToString() +
                        "&Arr_Date=" + depDate1.Text + depDay1.Text +
                        "&Arr_Time=" + departure_view1.Rows[0].Cells[1].Text+
                        "&Arr_Dep=" + arrival_view1.Rows[0].Cells[0].Text +
                        "&Arr_Dep_Time=" + arrival_view1.Rows[0].Cells[1].Text+
                        "&Flight_count=" +2
                         );
                    }
                }
                if (!classlist1.Visible && !seatlist1.Visible)
                {
                    Response.Write("<script>alert('NOT Visisble Class and Seat from Arrival')</script>");
                    if (classlist.SelectedIndex > 0 && seatlist.SelectedIndex > 0 && classlist1.SelectedIndex > 0 && seatlist1.SelectedIndex > 0)
                    {
                        Response.Redirect("~/Booking.aspx?name=" + Request.QueryString["name"] + 
                        "Dep=" + departure_location +
                        "&Dep_class=" + departure_class +
                        "&Dep_seat=" + seatlist.SelectedItem.Text.ToString() +
                        "&Dep_Date=" + depDate.Text + depDay.Text +
                        "&Dep_Time=" + departure_view.Rows[0].Cells[1].Text+
                        "&Dep_Arr=" + arrival_view.Rows[0].Cells[0].Text+
                        "&Dep_Arr_Time=" + arrival_view.Rows[0].Cells[1].Text+
                        "&Flight_count="+1);
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}