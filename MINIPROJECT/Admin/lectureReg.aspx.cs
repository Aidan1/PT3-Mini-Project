using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Admin
{
    public partial class lectureReg : System.Web.UI.Page
    {
        public string sex;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerLecture(object sender, EventArgs e)
        {
            var lname = TextBoxLectureName.Text;
            var matricNo = TextBoxMatricNo.Text;
            var id = TextBoxLectureIC.Text;
            var userType = "lecturer";
            var viewPermission = "LECTURER";

            if (male.Checked) sex = "MALE";
            if (female.Checked) sex = "FEMALE";


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select username from user", conn);

            string query = "SELECT username FROM [user] where username=@username";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@username", SqlDbType.VarChar);
            command.Parameters["@username"].Value = matricNo;
            conn.Open();
            DataSet ds = new DataSet();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    lblmsg.Text = "Matric No Already Used";
                }
                else {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    SqlCommand cmd2 = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd2.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO lecturer (lecturerName, gender, IC, matricNo) VALUES('" + lname + "','" + sex + "','" + id + "','" + matricNo + "')";
                    cmd2.CommandText = "INSERT INTO [user](username, password, userType, viewPermission) VALUES ('" + matricNo + "','" + id + "','" + userType + "','" + viewPermission + "')";
                    cmd.Connection = con;
                    cmd2.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    string message = "Your details have been saved successfully.";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "');";
                    script += "window.location = '";
                    script += Request.Url.AbsoluteUri;
                    script += "'; }";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }

        }
    }
}