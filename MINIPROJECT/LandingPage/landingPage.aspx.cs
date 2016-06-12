using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MINIPROJECT.LandingPage
{
    public partial class landingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = userName.Text.Trim();
            string password = userPassword.Text.Trim();

            DBHelper dbhelper = new DBHelper();
            

            if (dbhelper.IsUserAuthenticated(username, password) == true)
            {
                string viewPermission = dbhelper.GetViewPermission(username, password);

                Response.BufferOutput = true;

                  if (viewPermission == "ADMIN")
                  {
                      Session["username"] = username;
                      Response.Redirect("/Admin/studentReg.aspx", true);
                  }
                  if (viewPermission == "LECTURER")
                  {
                      Session["username"] = username;
                      Response.Redirect("/Lecturer/createattendance.aspx", true);
                  }
                  if (viewPermission == "STUDENT")
                  {
                      Session["username"] = username;
                      Response.Redirect("/Student/profile.aspx", true);
                  } 
            }
            else
            {
                Label1.Text = "Authentication Failed";
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "show()", true);
            }
        }
    }
}