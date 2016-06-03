using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Admin
{
    public partial class manageCourse : System.Web.UI.Page
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
            using(eCampusDataContext ctx = new eCampusDataContext())
            {
                GridView1.DataSource = from a in ctx.course_offereds
                                       join b in ctx.lecturers on a.lecturer_ID equals b.lecturer_ID
                                       join c in ctx.courses on new { a.courseID, a.courseCode } equals new { c.courseID, c.courseCode}
                                       select new {
                                           course_offered_ID = a.course_offered_ID,
                                           courseCode   = a.courseCode,
                                           courseID     = a.courseID,
                                           courseName   = c.courseName,
                                           lecturerName = b.lecturerName
                                       };
                GridView1.DataBind();

                var dataSource = from year_semester in ctx.year_semesters
                                 select new
                                 {
                                    year_semester.semesterID,
                                    year_semester.year,
                                    year_semester.semester,
                                    DisplayField = String.Format("{0}-{1}", year_semester.year, year_semester.semester)
                                 };
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("Choose Semester");
                DropDownList1.AppendDataBoundItems = true;
                DropDownList1.DataValueField = "semesterID";
                DropDownList1.DataTextField = "DisplayField";
                DropDownList1.DataSource = dataSource;
                DropDownList1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

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
            int course_offered_ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course_offered co = (from c in ctx.course_offereds
                                     where c.course_offered_ID == course_offered_ID
                                     select c).FirstOrDefault();
                ctx.course_offereds.DeleteOnSubmit(co);
                ctx.SubmitChanges();
            }
            this.BindGrid();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var courseCodeSelected =  DropDownList2.SelectedValue;
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

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int courseIDSelected    = Convert.ToInt32(DropDownList3.SelectedValue);
            var courseCodeSelected  = DropDownList2.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
              
                var query = from g in ctx.lecturer_courses
                            join m in ctx.lecturers on g.lecturer_ID equals m.lecturer_ID
                            where g.courseID == courseIDSelected && g.courseCode == courseCodeSelected
                            select new
                            {
                                lecturer_ID = g.lecturer_ID,
                                lecturerName = m.lecturerName
                            };
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("Choose Lecturer");
                DropDownList4.AppendDataBoundItems = true;
                DropDownList4.DataValueField = "lecturer_ID";
                DropDownList4.DataTextField = "lecturerName";
                DropDownList4.DataSource = query;
                DropDownList4.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course_offered courseOffered = new course_offered
                {
                    semesterID  = Convert.ToInt32(DropDownList1.SelectedValue),
                    courseCode  = DropDownList2.SelectedValue,
                    courseID    = Convert.ToInt32(DropDownList3.SelectedValue),
                    lecturer_ID = Convert.ToInt32(DropDownList4.SelectedValue)
                };
                ctx.course_offereds.InsertOnSubmit(courseOffered);
                ctx.SubmitChanges();
            }
            this.BindGrid();
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
        }

    }
}