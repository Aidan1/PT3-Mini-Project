using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Lecturer
{
    public partial class listattendance : System.Web.UI.Page
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
                var present = from a in ctx.attendances
                              join b in ctx.attendance_status on a.attendanceID  equals b.attendanceID
                              where b.status == 1
                              select b;
                var total =   from a in ctx.attendances
                              join b in ctx.attendance_status on a.attendanceID equals b.attendanceID
                              select b;
                GridView1.DataSource = from a in ctx.attendances
                                       join b in ctx.attendance_dates on a.dateID equals b.dateID
                                       join c in ctx.sections on a.sectionID equals c.sectionID
                                       join d in ctx.courses on new { a.courseID, a.courseCode } equals new { d.courseID, d.courseCode }
                                       orderby b.date descending
                                       select new
                                       {
                                           attendanceID = a.attendanceID,
                                           courseCode = a.courseCode,
                                           courseID = a.courseID,
                                           courseName = d.courseName,
                                           date = b.date.ToShortDateString(),
                                           attendance = String.Format("{0}/{1}", present.Count(), total.Count()),
                                           sectionNo = c.sectionNo
                                       };
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Server.Transfer("attendance.aspx", true);
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Server.Transfer("attendance.aspx", true);
        }
    }
}