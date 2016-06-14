using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Lecturer
{
    public partial class listgrade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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
            var ccode = DropDownList1.SelectedValue;
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.student_scores
                         join b in ctx.students on a.matricNo equals b.matricNo
                         join c in ctx.scores on a.score_ID equals c.score_ID
                         where a.courseCode == ccode && a.courseID == cid
                         select new
                         {
                             student_scoreID = a.student_scoreID,
                             matricNo = b.matricNo,
                             studentName = b.student_name,
                             assignment = c.assignment,
                             quiz = c.quiz,
                             project = c.project,
                             lab = c.lab,
                             midterm = c.mid_term,
                             final = c.final_exam,
                             totalMark = c.total_score,
                             grades = c.grade
                         };
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}