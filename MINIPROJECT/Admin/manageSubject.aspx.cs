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
                GridView1.DataSource = from a in ctx.courses select a;
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
            }
            this.BindGrid();
        }
    }
}