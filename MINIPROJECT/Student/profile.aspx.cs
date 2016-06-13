using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Student
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();

            SqlConnection conn = null;
            string connectionString = getConnection();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;

            SqlCommand cmd = new SqlCommand("GetUserProfile", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@username", username));
            conn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    student_name.Text = dr["student_name"].ToString();
                    matricNo.Text = dr["matricNo"].ToString();
                    phoneNo.Text = dr["phoneNo"].ToString();
                    email.Text = dr["email"].ToString();
                    ic.Text = dr["student_IC"].ToString();
                    address.Text = dr["address"].ToString();
                    dob.Text = dr["DOB"].ToString();
                    gender.Text = dr["gender"].ToString();
                    race.Text = dr["race"].ToString();
                    nationality.Text = dr["nationality"].ToString();
                    guardianName.Text = dr["guardian_name"].ToString();
                    occupation.Text = dr["occupation"].ToString();
                    guardianPhone.Text = dr["guardian_phoneNo"].ToString();
                    salary.Text = dr["salary"].ToString();
                    guardianAddress.Text = dr["guardian_address"].ToString();                   
                }
                dr.Close();
            }
            conn.Close();
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }
    }
}