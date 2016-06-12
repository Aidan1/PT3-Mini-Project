using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Lecturer
{
    public partial class grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            var ccode = DropDownList1.SelectedValue;
            using (eCampusDataContext ctx = new eCampusDataContext())
            {

                var query = from a in ctx.sections
                            where a.courseCode == ccode && a.courseID == cid
                            select new
                            {
                                section_ID = a.sectionID,
                                sectionNo = a.sectionNo
                            };
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Choose Section");
                DropDownList3.AppendDataBoundItems = true;
                DropDownList3.DataValueField = "section_ID";
                DropDownList3.DataTextField = "sectionNo";
                DropDownList3.DataSource = query;
                DropDownList3.DataBind();
            }
        }

        protected void sumbitBtn_Click(object sender, EventArgs e)
        {
/*            DataTable test = new DataTable();
            int assignNo = Convert.ToInt32(assignDD.SelectedValue);
            int quizNo = Convert.ToInt32(quizDD.SelectedValue);

            for (int i = 0; i < assignNo; i++)
            {
                TableRow tRow = new TableRow();
                test.Rows.Add(tRow);
                for (int j = 0; j < 1; j++)
                {
                    TableCell tCell = new TableCell();
                    tRow.Cells.Add(tCell);
                }
            }*/
        }
    }
}