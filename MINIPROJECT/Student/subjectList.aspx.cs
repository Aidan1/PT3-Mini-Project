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

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var semID = Convert.ToInt32(DropDownList2.SelectedValue);
            
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.course_offereds
                         join b in ctx.courses on new { a.courseCode, a.courseID } equals new {b.courseCode, b.courseID}
                         where a.semesterID == semID 
                         select new
                         {
                             course_offered_ID = a.course_offered_ID,
                             courseCode = a.courseCode,
                             courseID = a.courseID,
                             courseName = b.courseName,
                             creditHours = b.creditHours
                         };
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}