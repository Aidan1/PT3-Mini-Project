using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Lecturer
{
    public partial class LecturerMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();

            SqlConnection conn = null;
            string connectionString = getConnection();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;

            SqlCommand cmd = new SqlCommand("GetLecturerProfile", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@username", username));
            conn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    lecturer_name.Text = dr["lecturerName"].ToString();
                    lecturer_name1.Text = dr["lecturerName"].ToString();
                    matricNo.Text = dr["matricNo"].ToString();
                    gender.Text = dr["gender"].ToString();
                }
                dr.Close();
            }
            conn.Close();
            gender.Visible = false; 
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }
    }
}