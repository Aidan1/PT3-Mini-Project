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
    public partial class createattendance : System.Web.UI.Page
    {
        public int matricNo { get; set; }
        public int atttendace { get; set; }
        List<createattendance> student = new List<createattendance>();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ccode = DropDownList1.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.courses where a.courseCode == ccode select a;
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Choose Course ID");
                DropDownList2.AppendDataBoundItems = true;
                DropDownList2.DataValueField = "courseID";
                DropDownList2.DataTextField = "courseID";
                DropDownList2.DataSource = ds;
                DropDownList2.DataBind();
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            var ccode = DropDownList1.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {

                var query = from a in ctx.sections where a.courseCode == ccode && a.courseID == cid select new
                            {
                                section_ID = a.sectionID,
                                sectionNo = a.sectionNo
                            };
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Choose Section");
                DropDownList3.AppendDataBoundItems = true;
                DropDownList3.DataValueField = "section_ID";
                DropDownList3.DataTextField = "sectionNo";
                DropDownList3.DataSource = query;
                DropDownList3.DataBind();
            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ccode = DropDownList1.SelectedValue;
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            int ssID = Convert.ToInt32(DropDownList3.SelectedValue);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.student_sections
                         join b in ctx.students on a.matricNo equals b.matricNo
                         where a.courseCode == ccode && a.courseID == cid && a.sectionID == ssID
                         select new
                         {
                             ssID = a.ssID,
                             matricNo = b.matricNo,
                             studentName = b.student_name
                         };
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonList radio = sender as RadioButtonList;
            GridViewRow gridRow = radio.NamingContainer as GridViewRow;

            int matricNo = (int)GridView1.DataKeys[gridRow.RowIndex].Value;
            int selectedValue = int.Parse(radio.SelectedValue);
            listAdd(matricNo, selectedValue);
        }

        protected void listAdd(int m, int r)
        {

            if(student.Contains(new createattendance { matricNo = m}) == true)
            {

            }
            else
            {
                student.Add(new createattendance() { matricNo = m, atttendace = r });
            }
        }

        protected void createAtt_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            string connectionString = getConnection();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;

            DateTime date = Convert.ToDateTime(TextBoxDateOfBirth.Text);
            var ccode = DropDownList1.SelectedValue;
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            int ssid = Convert.ToInt32(DropDownList3.SelectedValue);

            SqlCommand cmd = new SqlCommand("GetSemesterID", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@ccode", ccode));
            cmd.Parameters.Add(new SqlParameter("@courseID", cid));
            cmd.Parameters.Add("@semesterID", SqlDbType.Int);
            cmd.Parameters["@semesterID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            int semesterID = Convert.ToInt32(cmd.Parameters["@semesterID"].Value);

            SqlCommand cmd2 = new SqlCommand("SetAttendanceDate", conn);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@date", date));
            cmd2.Parameters.Add("@dateID", SqlDbType.Int);
            cmd2.Parameters["@dateID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd2.ExecuteNonQuery();
            conn.Close();

            int dateID = Convert.ToInt32(cmd2.Parameters["@dateID"].Value);

            SqlCommand cmd3 = new SqlCommand("SetAttendance", conn);
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.Parameters.Add(new SqlParameter("@ccode", ccode));
            cmd3.Parameters.Add(new SqlParameter("@courseID", cid));
            cmd3.Parameters.Add(new SqlParameter("@sectionID", ssid));
            cmd3.Parameters.Add(new SqlParameter("@dateID", dateID));
            cmd3.Parameters.Add(new SqlParameter("@semesterID", semesterID));
            cmd3.Parameters["@attendanceID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd3.ExecuteNonQuery();
            conn.Close();

            System.Diagnostics.Debug.WriteLine(cmd.Parameters["@dateID"].Value);
/*                foreach (createattendance std in student)
                {

                }
*/
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }
    }
}