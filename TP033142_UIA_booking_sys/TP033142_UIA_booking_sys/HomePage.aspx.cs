using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text;

namespace TP033142_UIA_booking_sys
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-UAD5FC5\\MAYSQL;Initial Catalog=UIA_Online_Database;Integrated Security=True");
        IDataReader dr;
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("SELECT COUNT(*) FROM Acc_profile WHERE Email = '" + emailtxt.Text + "'", con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    cmd = new SqlCommand("SELECT Passw FROM Acc_profile  WHERE Email = '" + emailtxt.Text + "'", con);
                    string password = Decryption(cmd.ExecuteScalar().ToString());
                    if (password == passwordtxt.Text)
                    {
                        string message1 = "Password is correct!";
                        Response.Write("<script>alert('" + message1 + "')</script>");
                        con.Close();

                        con.Open();
                        cmd = new SqlCommand("SELECT User_Name FROM Acc_profile  WHERE Email = '" + emailtxt.Text + "'", con);
                        dr = cmd.ExecuteReader();

                        while (dr.Read())
                        {
                            name = dr["User_Name"].ToString();
                        }
                        Response.Write("<script>alert('" + name + "')</script>");
                        Response.Redirect("Dep_Arr_Online_Member.aspx?name="+ name);
                        con.Close();
                    }
                    else
                    {
                        string message2 = "Password is incorrect!";
                        Response.Write("<script>alert('" + message2 + "')</script>");
                        con.Close();
                    }
                }
                else
                {
                    string message = "E-mail Address is incorrect or cannot be found!";
                    Response.Write("<script>alert('" + message + "')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }            
        }

        private string Decryption(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

    }
}