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
    public partial class cgpa : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var semester = from a in ctx.year_semesters
                               select new
                               {
                                   a.semesterID,
                                   a.year,
                                   a.semester,
                                   DisplayField = String.Format("{0}- SEMESTER {1}", a.year, a.semester)
                               };
                DropDownList1.DataValueField = "semesterID";
                DropDownList1.DataTextField = "DisplayField";
                DropDownList1.DataSource = semester;
                DropDownList1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            System.Diagnostics.Debug.WriteLine(DropDownList1.SelectedValue);
            int semesterID = Convert.ToInt32(DropDownList1.SelectedValue);

            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from ys in ctx.year_semesters
                         from co in ctx.courses
                         from ss in ctx.student_scores
                         from s in ctx.scores
                         from std in ctx.students
                         where ys.semesterID == semesterID && co.courseCode == ss.courseCode && co.courseID == ss.courseID
                         && ss.matricNo == username && ss.score_ID == s.score_ID && std.matricNo == ss.matricNo
                         select new
                         {
                             courseCode = ss.courseCode,
                             courseID = ss.courseID,
                             courseName = co.courseName,
                             creditHours = co.creditHours,
                             grade = s.grade,
                             pointer = s.grade,
                             total_pointer = co.creditHours
                         };
                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;         
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }

        public string getPointer (object grade)
        {
            string pointer = "";
            if (grade.Equals("A+        "))
            {
                pointer += "4.00";
            }
            else if (grade.Equals("A         "))
            {
                pointer += "4.00";
            }
            else if (grade.Equals("A-        "))
            {
                pointer += "3.67";
            }
            else if (grade.Equals("B+        "))
            {
                pointer += "3.33";
            }
            else if (grade.Equals("B         "))
            {
                pointer += "3.00";
            }
            else if (grade.Equals("B-        "))
            {
                pointer += "2.67";
            }
            else if (grade.Equals("C+        "))
            {
                pointer += "2.33";
            }
            else if (grade.Equals("C         "))
            {
                pointer += "2.00";
            }
            else if (grade.Equals("C-        "))
            {
                pointer += "1.67";
            }
            else if (grade.Equals("D+        "))
            {
                pointer += "1.33";
            }
            else if (grade.Equals("D         "))
            {
                pointer += "1.00";
            }
            else if (grade.Equals("D-        "))
            {
                pointer += "0.67";
            }
            else
            {
                pointer += "0.00";
            }
            return pointer;
        }

        public string getToTalPointer (object pointer, object creditHour)
        {           
            double pointer1 = Convert.ToDouble(pointer);
            double creditHours = Convert.ToDouble(creditHour);
            double total = pointer1 * creditHours;
            object total_pointer = Convert.ToString(total);

            return total_pointer.ToString();
        }
    }
}