using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Student
{
    public partial class subjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var dataSource = from a in ctx.year_semesters
                                 select new
                                 {
                                     a.semesterID,
                                     a.year,
                                     a.semester,
                                     DisplayField = String.Format("{0}- SEMESTER {1}", a.year, a.semester)
                                 };
                DropDownList2.DataValueField = "semesterID";
                DropDownList2.DataTextField = "DisplayField";
                DropDownList2.DataSource = dataSource;
                DropDownList2.DataBind();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int semID = Convert.ToInt32(DropDownList2.SelectedValue);            
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.course_offereds
                         join b in ctx.courses on new { a.courseCode, a.courseID } equals new {b.courseCode, b.courseID}
                         join c in ctx.sections on new { a.courseCode, a.courseID } equals new { c.courseCode, c.courseID }
                         join d in ctx.lecturers on a.lecturer_ID equals d.lecturer_ID
                         where a.semesterID == semID 
                         select new
                         {
                             course_offered_ID = a.course_offered_ID,
                             sectionID = c.sectionID,
                             courseCode = a.courseCode,
                             courseID = a.courseID,
                             courseName = b.courseName,
                             creditHours = b.creditHours,
                             sectionNo = c.sectionNo,
                             lecturerName = d.lecturerName
                         };
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void addCourseBtn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow gr = btn.NamingContainer as GridViewRow;

            var ccode = GridView1.Rows[gr.RowIndex].FindControl("courseCode");
            int cid = GridView1.Rows[gr.RowIndex].FindControl("courseID");
            int sid = Convert.ToInt32(GridView1.Rows[gr.RowIndex].FindControl("sectionID").ToString());

            System.Diagnostics.Debug.WriteLine(ccode + ", " +  cid + ", " + sid);

/*            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                student_section student = new student_section
                {

                     = txtName.Text,
                    Country = txtCountry.Text
                };
                ctx.Customers.InsertOnSubmit(customer);
                ctx.SubmitChanges();
            }

            this.BindGrid();*/
        }
    }
}