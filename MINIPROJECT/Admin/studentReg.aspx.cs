using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.Admin
{
    public partial class studentReg : System.Web.UI.Page
    {
        class Student
        {
            public string username;
            public string matricNo;
            public string phoneNo;
            public string email;
            public string studentIc;
            public string address;
            public string dob;
            public string gender;
            public string race;
            public string nationality;
            public string guardian;
            public string occupation;
            public string g_phoneNo;
            public float salary;
            public string g_address;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerStudent(object sender, EventArgs e)
        {
            Student student = new Student();
            student.username = TextBoxStudentName.Text;
            student.matricNo = TextBoxMatricNo.Text;
            student.phoneNo = TextBoxPhoneNo.Text;
            student.email = TextBoxEmail.Text;
            student.studentIc = TextBoxStudentIC.Text;
            student.address = TextBoxAddress.Text;
            student.dob = TextBoxDateOfBirth.Text;

            if (male.Checked)
            {
                student.gender = male.Text;
            }

            if (female.Checked)
            {
                student.gender = female.Text;
            }
            
            student.race = TextBoxRace.Text;
            student.nationality = TextBoxNationality.Text;
            student.guardian = TextBoxGuardianName.Text;
            student.occupation = TextBoxOccupation.Text;
            student.g_phoneNo = TextBoxGuardianPhoneNo.Text;
            student.salary = float.Parse(TextBoxSalary.Text);
            student.g_address = TextGuardianAddress.Text;
           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT student (student_name, matricNo, phoneNo, email, student_IC, address, DOB, gender, race, nationality, guardian_name, occupation, guardian_phoneNo, salary, guardian_address) VALUES('" + student.username + "','" + student.matricNo + "','" + student.phoneNo + "','" + student.email + "','" + student.studentIc + "','" + student.address + "','" + student.dob + "','" + student.gender + "','" + student.race + "','" + student.nationality + "','" + student.guardian + "','" + student.occupation + "','" + student.g_phoneNo + "','" + student.salary + "','" + student.g_address + "')";
            cmd.Connection = con;

            con.Open();
            if(cmd.ExecuteNonQuery() > 0)
            {
                Label1.Text = "success";
            }
            else
            {
                Label1.Text = "failed";
            }
            
            con.Close();
        }
    }
}