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
        public string matricNo { get; set; }
        public int atttendace { get; set; }
        public string comment { get; set; }
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
            RadioButtonList radio = (RadioButtonList)sender;
            GridViewRow gr = radio.NamingContainer as GridViewRow;
            TextBox txt = (TextBox)GridView1.Rows[gr.RowIndex].FindControl("TextBoxComment");

            string matric = GridView1.DataKeys[gr.RowIndex].Value.ToString();
            int selectedValue = int.Parse(radio.SelectedValue);
            string comment = txt.Text;

            listAdd(matric, selectedValue, comment);
        }

        protected void listAdd(string m, int r, string c)
        {

            if(student.Contains(new createattendance { matricNo = m}) == true)
            {

            }
            else
            {
                student.Add(new createattendance() { matricNo = m, atttendace = r, comment = c});
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

            SqlCommand cmd = new SqlCommand("SetAttendanceDate", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@date", date));
            cmd.Parameters.Add("@dateID", SqlDbType.Int);
            cmd.Parameters["@dateID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            int dateID = Convert.ToInt32(cmd.Parameters["@dateID"].Value);

            SqlCommand cmd2 = new SqlCommand("SetAttendance", conn);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@ccode", ccode));
            cmd2.Parameters.Add(new SqlParameter("@courseID", cid));
            cmd2.Parameters.Add(new SqlParameter("@sectionID", ssid));
            cmd2.Parameters.Add(new SqlParameter("@dateID", dateID));
            cmd2.Parameters.Add("@attendanceID", SqlDbType.Int);
            cmd2.Parameters["@attendanceID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd2.ExecuteNonQuery();
            conn.Close();

            int attendanceID = Convert.ToInt32(cmd2.Parameters["@attendanceID"].Value);

            SqlCommand cmd3 = new SqlCommand("SetAttendanceStatus", conn);
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.Parameters.Add(new SqlParameter("@attendanceID", attendanceID));
            cmd3.Parameters.Add(new SqlParameter("@matricNo", SqlDbType.VarChar));
            cmd3.Parameters.Add(new SqlParameter("@status", SqlDbType.SmallInt));
            cmd3.Parameters.Add(new SqlParameter("@comment", SqlDbType.VarChar));
            conn.Open();
            foreach (createattendance std in student)
            {
                System.Diagnostics.Debug.WriteLine(std.matricNo +", "+ std.atttendace +", "+ std.comment);
                cmd3.Parameters["@matricNo"].Value = std.matricNo;
                cmd3.Parameters["@status"].Value = std.atttendace;
                cmd3.Parameters["@comment"].Value = std.comment;
                cmd3.ExecuteNonQuery();
            }
            conn.Close();
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }
    }
}