using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Text;
using System.IO;

namespace TP033142_UIA_booking_sys
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con = new SqlConnection("Server=tcp:uiaonlinedb.database.windows.net,1433;Initial Catalog=UIA_Online_Database;Persist Security Info=False;User ID={mayuiaonlinedb};Password={may@pass123};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void restbtn_Click(object sender, EventArgs e)
        {
            newusernametxt.Text = "";
            emailtxt.Text = "";
            newpasswordtxt.Text = "";
            confirmpasswordtxt.Text = "";
            countrycob.SelectedIndex = 0;
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if (check_duplicate_Email())
            {
                try
                {
                    if (check_duplicate_User())
                    {
                        con.Close();
                        con.Open();
                        cmd = new SqlCommand("Insert into Acc_Profile (User_Name, Email, Passw, DOB, Country) values (@1, @2, @3, @4, @5)", con);
                        cmd.Parameters.AddWithValue("@1", newusernametxt.Text);
                        cmd.Parameters.AddWithValue("@2", emailtxt.Text);
                        cmd.Parameters.AddWithValue("@3", Encryption(confirmpasswordtxt.Text));
                        cmd.Parameters.AddWithValue("@4", birthtxt.Text);
                        cmd.Parameters.AddWithValue("@5", countrycob.SelectedItem.ToString());
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ClientScript.RegisterStartupScript(GetType(), "alert", "Registration is successful", true);
                    }
                    //}

                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }

        }

        private string Encryption(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        public bool check_duplicate_Email()
        {
            cmd = new SqlCommand("SELECT COUNT(*) FROM Acc_Profile WHERE Email='" + emailtxt.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "E-mail already EXISTS, try with another email", true);
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool check_duplicate_User()
        {
            cmd = new SqlCommand("SELECT COUNT(*) FROM Acc_Profile WHERE User_Name='" + newusernametxt.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                //ClientScript.RegisterStartupScript(GetType(), "alert", "User Name already EXISTS, try with another user name", true);
                //Response.Write("<script>alert('Duplicate User Name " + temp + "')</script>");
                Response.Write("Duplicate User Name " + temp);
                return false;
            }
            else
            {
                Response.Write("NOT Duplicate User Name " + temp);
                return true;
            }
        }
    }
}