using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ccode = DropDownList1.SelectedValue;
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            using (eCampusDataContext ctx = new eCampusDataContext())
            {
                var ds = from a in ctx.student_sections
                         join b in ctx.students on a.matricNo equals b.matricNo
                         where a.courseCode == ccode && a.courseID == cid
                         select new
                         {
                             matricNo = a.matricNo,
                             studentName = b.student_name
                         };
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("Choose Student");
                DropDownList4.AppendDataBoundItems = true;
                DropDownList4.DataValueField = "matricNo";
                DropDownList4.DataTextField = "studentName";
                DropDownList4.DataSource = ds;
                DropDownList4.DataBind();
            }
        }
        protected void sumbitBtn_Click(object sender, EventArgs e)
        {
            string[] list_pct = { a_p.Text, q_p.Text, p_p.Text, l_p.Text, mt_p.Text, f_p.Text };

            string[] list_a = { a1.Text, a2.Text, a3.Text, a4.Text, a5.Text };
            string[] list_q = { q1.Text, q2.Text, q3.Text, q4.Text, q5.Text };
            string[] list_p = { p1.Text, p2.Text, p3.Text, p4.Text, p5.Text };
            string[] list_l = { l1.Text, l2.Text, l3.Text, l4.Text, l5.Text };
            double[] percent = new double[6];
            double[] assestment = { 0, 0, 0, 0, 0, 0 };

            int a = 0; int b = 0; int c = 0;
            int d = 0; int g = 0;

            if (mt.Text.Equals("")) assestment[4] = 0.0; else assestment[4] = Convert.ToDouble(mt.Text);
            if (f.Text.Equals("")) assestment[5] = 0.0; else assestment[5] = Convert.ToDouble(f.Text);

            while (a < 6)
            {
                if ( list_pct[a].Equals(""))
                {
                    percent[a] = 1;
                }
                else
                {
                    percent[a] = Convert.ToDouble(list_pct[a]);
                }
                a++;
            }
            //assignment
            while(b < 5)
            {
                if (list_a[b].Equals(""))
                {
                    assestment[0] += 0.0;
                }
                else
                {
                    assestment[0] += Convert.ToDouble(list_a[b]);
                }
                b++;
            }
            //quiz
            while (c < 5)
            {
                if (list_q[c].Equals(""))
                {
                    assestment[1] += 0.0;
                }
                else
                {
                    assestment[1] += Convert.ToDouble(list_q[c]);
                }
                c++;
            }
            //project
            while (d < 5)
            {
                if (list_p[d].Equals(""))
                {
                    assestment[2] += 0.0;
                }
                else
                {
                    assestment[2] += Convert.ToDouble(list_p[d]);
                }
                d++;
            }
            //lab
            while (g < 5)
            {
                if (list_l[g].Equals(""))
                {
                    assestment[3] += 0.0;
                }
                else
                {
                    assestment[3] += Convert.ToDouble(list_l[g]);
                }
                g++;
            }

            double final_mark = 0.0;
            double total_assesment = 0.0;
            double total_percent = 0.0;
            for(int i = 0; i < 6; i++)
            {
                total_assesment += assestment[i];
                total_percent += percent[i];
                System.Diagnostics.Debug.WriteLine(total_assesment);
                if (i == 5)
                {
                    final_mark = total_assesment;
                    totalMarks.InnerText = final_mark.ToString();
                }
            }
            
            if(final_mark >= 90 && final_mark <= 100)
            {
                grades.InnerText = "A+";
            }
            else if(final_mark >= 80 && final_mark <= 89)
            {
                grades.InnerText = "A";
            }
            else if (final_mark >= 75 && final_mark <= 79)
            {
                grades.InnerText = "A-";
            }
            else if (final_mark >= 70 && final_mark <= 74)
            {
                grades.InnerText = "B+";
            }
            else if (final_mark >= 65 && final_mark <= 69)
            {
                grades.InnerText = "B";
            }
            else if (final_mark >= 60 && final_mark <= 64)
            {
                grades.InnerText = "B-";
            }
            else if (final_mark >= 55 && final_mark <= 59)
            {
                grades.InnerText = "C+";
            }
            else if (final_mark >= 50 && final_mark <= 54)
            {
                grades.InnerText = "C";
            }
            else if (final_mark >= 45 && final_mark <= 49)
            {
                grades.InnerText = "C-";
            }
            else if (final_mark >= 40 && final_mark <= 44)
            {
                grades.InnerText = "D+";
            }
            else if (final_mark >= 35 && final_mark <= 39)
            {
                grades.InnerText = "D";
            }
            else if (final_mark >= 30 && final_mark <= 34)
            {
                grades.InnerText = "D-";
            }
            else if (final_mark >= 0 && final_mark <= 29)
            {
                grades.InnerText = "E";
            }
            else
            {
                grades.InnerText = "Error";
            }

            var final_grade = grades.InnerText;

            storeMark(final_mark, final_grade, assestment);
        }

        private void storeMark(double final_mark, string final_grade, double[] assestment)
        {
            SqlConnection conn = null;
            string connectionString = getConnection();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;

            var ccode = DropDownList1.SelectedValue;
            int cid = Convert.ToInt32(DropDownList2.SelectedValue);
            int ssid = Convert.ToInt32(DropDownList3.SelectedValue);
            var matricNo = DropDownList4.SelectedValue;

            SqlCommand cmd = new SqlCommand("SetScore", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@assign", assestment[0]));
            cmd.Parameters.Add(new SqlParameter("@quiz", assestment[1]));
            cmd.Parameters.Add(new SqlParameter("@project", assestment[2]));
            cmd.Parameters.Add(new SqlParameter("@lab", assestment[3]));
            cmd.Parameters.Add(new SqlParameter("@mt", assestment[4]));
            cmd.Parameters.Add(new SqlParameter("@final", assestment[5]));
            cmd.Parameters.Add(new SqlParameter("@total", final_mark));
            cmd.Parameters.Add(new SqlParameter("@grades", final_grade));
            cmd.Parameters.Add("@scoreID", SqlDbType.Int);
            cmd.Parameters["@scoreID"].Direction = ParameterDirection.Output;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            int scoreID = Convert.ToInt32(cmd.Parameters["@scoreID"].Value);

            SqlCommand cmd2 = new SqlCommand("SetScoreStudent", conn);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@scoreID", scoreID));
            cmd2.Parameters.Add(new SqlParameter("@ccode", ccode));
            cmd2.Parameters.Add(new SqlParameter("@cid", cid));
            cmd2.Parameters.Add(new SqlParameter("@matricNo", matricNo));
            conn.Open();
            cmd2.ExecuteNonQuery();
            DropDownList4.ClearSelection();
            conn.Close();
        }

        private string getConnection()
        {
            return "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\e-campus.mdf;Integrated Security=True";
        }
    }
}