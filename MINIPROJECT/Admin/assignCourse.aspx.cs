using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT
{
    public partial class assignCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }

        protected void BindGrid()
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                GridView1.DataSource = from a in ctx.sections
                                       join b in ctx.lecturers on a.lecturer_ID equals b.lecturer_ID
                                       join c in ctx.courses on new { a.courseID, a.courseCode } equals new { c.courseID, c.courseCode }
                                       select new
                                       {
                                           sectionID = a.sectionID,
                                           courseCode = a.courseCode,
                                           courseID = a.courseID,
                                           courseName = c.courseName,
                                           sectionNo = a.sectionNo,
                                           lecturerName = b.lecturerName
                                       };
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int course_offered_ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string courseCode = (row.FindControl("courseCode") as TextBox).Text;
            int courseID = Convert.ToInt32((row.FindControl("courseID") as TextBox).Text);
            int lecturer_ID = Convert.ToInt32((row.FindControl("lecturer_ID") as TextBox).Text);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course_offered co = (from c in ctx.course_offereds where c.course_offered_ID == course_offered_ID select c).FirstOrDefault();
                co.courseCode = courseCode;
                co.courseID = courseID;
                co.lecturer_ID = lecturer_ID;
                ctx.SubmitChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int sectionID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            System.Diagnostics.Debug.WriteLine(GridView1.DataKeys[e.RowIndex].Values[0]);

            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                lecturer_course co = (from c in ctx.lecturer_courses where c.sectionID == sectionID select c).FirstOrDefault();
                ctx.lecturer_courses.DeleteOnSubmit(co);
                ctx.SubmitChanges();
            }
/*            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                student_section co = (from c in ctx.student_sections where c.sectionID == sectionID select c).FirstOrDefault();
                ctx.student_sections.DeleteOnSubmit(co);
                ctx.SubmitChanges();
            }*/

            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                section co = (from c in ctx.sections
                                     where c.sectionID == sectionID
                                     select c).FirstOrDefault();
                ctx.sections.DeleteOnSubmit(co);
                ctx.SubmitChanges();
            }
            this.BindGrid();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var courseCodeSelected = DropDownList2.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var datasource = from course in ctx.courses where course.courseCode == courseCodeSelected select course;
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Choose Course ID");
                DropDownList3.AppendDataBoundItems = true;
                DropDownList3.DataValueField = "courseID";
                DropDownList3.DataTextField = "courseID";
                DropDownList3.DataSource = datasource;
                DropDownList3.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                section sec = new section
                {
                    courseCode = DropDownList2.SelectedValue,
                    courseID = Convert.ToInt32(DropDownList3.SelectedValue),
                    sectionNo = Convert.ToInt32(TextBox1.Text),
                    lecturer_ID = Convert.ToInt32(DropDownList4.SelectedValue)
                };

                int secID = InsertSection(sec);

                lecturer_course co = new lecturer_course
                {
                    courseCode = DropDownList2.SelectedValue,
                    courseID = Convert.ToInt32(DropDownList3.SelectedValue),
                    lecturer_ID = Convert.ToInt32(DropDownList4.SelectedValue),
                    sectionID = secID
                };
                ctx.lecturer_courses.InsertOnSubmit(co);
                ctx.SubmitChanges();

            }
            this.BindGrid();
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
        }

        private int InsertSection(section sec)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                ctx.sections.InsertOnSubmit(sec);
                ctx.SubmitChanges();
                return sec.sectionID;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var datasource = from a in ctx.lecturers select a;
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("Choose Lecturer");
                DropDownList4.AppendDataBoundItems = true;
                DropDownList4.DataValueField = "lecturer_ID";
                DropDownList4.DataTextField = "lecturerName";
                DropDownList4.DataSource = datasource;
                DropDownList4.DataBind();
            }
        }
    }
}