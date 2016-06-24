using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Student
{
    public partial class subjectReg : System.Web.UI.Page
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
            var mNo = Session["username"].ToString();
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                GridView1.DataSource = from a in ctx.student_sections
//                                       join b in ctx.lecturer_courses on a.sectionID equals b.sectionID
//                                       join d in ctx.lecturers on b.lecturer_ID equals d.lecturer_ID
                                       join e in ctx.sections on a.sectionID equals e.sectionID
                                       join c in ctx.courses on new { a.courseID, a.courseCode } equals new { c.courseID, c.courseCode }
                                       where a.matricNo == mNo
                                       select new
                                       {
                                           ssID = a.ssID,
                                           courseCode = a.courseCode,
                                           courseID = a.courseID,
                                           courseName = c.courseName,
                                           sectionNo = e.sectionNo
//                                           lecturerName = d.lecturerName
                                       };
                GridView1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var courseCodeSelected = DropDownList1.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var datasource = from course in ctx.courses where course.courseCode == courseCodeSelected select course;
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Choose Course ID");
                DropDownList2.AppendDataBoundItems = true;
                DropDownList2.DataValueField = "courseID";
                DropDownList2.DataTextField = "courseID";
                DropDownList2.DataSource = datasource;
                DropDownList2.DataBind();
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ccode = DropDownList1.SelectedValue;
            int ccid = Convert.ToInt32(DropDownList2.SelectedValue);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var datasource = from a in ctx.sections where a.courseCode == ccode && a.courseID == ccid select a;
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Choose Section No");
                DropDownList3.AppendDataBoundItems = true;
                DropDownList3.DataValueField = "sectionID";
                DropDownList3.DataTextField = "sectionNo";
                DropDownList3.DataSource = datasource;
                DropDownList3.DataBind();
            }
        }

        protected void addCourse_Click(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                student_section ss = new student_section
                {
                    courseCode = DropDownList1.SelectedValue,
                    courseID = Convert.ToInt32(DropDownList2.SelectedValue),
                    sectionID = Convert.ToInt32(DropDownList3.SelectedValue),
                    matricNo = Session["username"].ToString()
                };
                ctx.student_sections.InsertOnSubmit(ss);
                ctx.SubmitChanges();
            }
            this.BindGrid();
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
        }
    }
}