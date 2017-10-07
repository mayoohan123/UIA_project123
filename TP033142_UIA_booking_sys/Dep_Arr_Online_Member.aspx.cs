using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TP033142_UIA_booking_sys
{
    public partial class Dep_Arr_Online_Member: System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con = new SqlConnection("Server=tcp:uiaonlinedb.database.windows.net,1433;Initial Catalog=UIA_Online_Database;Persist Security Info=False;User ID={mayuiaonlinedb};Password={may@pass123};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        public static String depart_day;
        public static String return_day;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                departure_location();
                arrival_location();
            }
        }

        public void departure_location()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("SELECT * FROM Country ", con);
                departcob0.DataSource = cmd.ExecuteReader();
                departcob0.DataTextField = "Cou_Name";
                departcob0.DataValueField = "Cou_Name";
                departcob0.DataBind();

                departcob0.Items.Insert(0, "Select Country");
                departcob0.Items[0].Selected = true;
                departcob0.Items[0].Attributes["Disabled"] = "Disabled";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        public void arrival_location()
        {
            try
            {
                try
                {
                    con.Open();
                    cmd = new SqlCommand("SELECT * FROM Country ", con);
                    arrivecob0.DataSource = cmd.ExecuteReader();
                    arrivecob0.DataTextField = "Cou_Name";
                    arrivecob0.DataValueField = "Cou_Name";
                    arrivecob0.DataBind();

                    arrivecob0.Items.Insert(0, "Select Country");
                    arrivecob0.Items[0].Selected = true;
                    arrivecob0.Items[0].Attributes["Disabled"] = "Disabled";

                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            departdate0.Text = Calendar3.SelectedDate.ToString("dd/MM/yyyy");
            depart_day = Calendar3.SelectedDate.DayOfWeek.ToString();
        }

        protected void Calendar4_SelectionChanged(object sender, EventArgs e)
        {
            arrivedate0.Text = Calendar4.SelectedDate.ToString("dd/MM/yyyy");
            return_day = Calendar4.SelectedDate.DayOfWeek.ToString();
        }

        protected void findflightbtn0_Click(object sender, EventArgs e)
        {
            if (departcob0.SelectedIndex > 0 && arrivecob0.SelectedIndex > 0 && !departdate0.Text.Equals("") )
            {
                Response.Redirect("~/ViewListFlight.aspx?name=" + Request.QueryString["name"] +
                    "&Dep=" + departcob0.SelectedItem.Text.ToString() +
                    "&Dep_date="+ departdate0.Text +
                    "&Dep_day="+ depart_day +
                    "&Arr=" + arrivecob0.SelectedItem.Text.ToString() +
                    "&Ret_date="+ arrivedate0.Text +
                    "&Ret_day="+ return_day );
            }
            else
            {
                string message = "Please check required information";
                Response.Write("<script>alert('" + message + "')</script>");
            }
        }
    }
}