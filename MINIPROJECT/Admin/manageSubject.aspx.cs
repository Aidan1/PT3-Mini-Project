using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Admin
{
    public partial class manageSubject : System.Web.UI.Page
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
                GridView1.DataSource = from a in ctx.courses  select a;
                                      
                GridView1.DataBind();
            }
        }






        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course c = new course
                {
                    courseCode = TextBoxCourseCode.Text,
                    courseID = Convert.ToInt32(TextBoxCourseID.Text),
                    courseName = TextBoxCourseName.Text,
                    shortForm = TextBoxShortName.Text,
                    creditHours = Convert.ToInt32(TextBoxCreditHours.Text)
                };
                ctx.courses.InsertOnSubmit(c);
                ctx.SubmitChanges();
                this.BindGrid();
            }
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var ccode = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            int course_ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[1]);
            System.Diagnostics.Debug.WriteLine(GridView1.DataKeys[e.RowIndex].Values[0]);
            System.Diagnostics.Debug.WriteLine(GridView1.DataKeys[e.RowIndex].Values[1]);

            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course co = (from c in ctx.courses where c.courseCode == ccode && c.courseID == course_ID select c).FirstOrDefault();
                ctx.courses.DeleteOnSubmit(co);
                ctx.SubmitChanges();
            }
            this.BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int course_ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[1]);
            string courseCode = GridView1.DataKeys[e.RowIndex].Values[0].ToString();

            string courseName = (row.FindControl("courseNameText") as TextBox).Text;
            string shortForm = (row.FindControl("shortFormText") as TextBox).Text;
            int creditHours = Convert.ToInt32((row.FindControl("creditHoursText") as TextBox).Text);

            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                course co = (from c in ctx.courses where c.courseCode == courseCode && c.courseID == course_ID select c).FirstOrDefault();
                co.courseCode = courseCode;
                co.courseID = course_ID;
                co.courseName = courseName;
                co.shortForm = shortForm;
                co.creditHours = creditHours;
                ctx.SubmitChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
    }
}