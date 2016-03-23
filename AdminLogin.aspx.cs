using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button2.Visible = false;
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        if (AUsername.Text == "Admin")
        {
            if (APassword.Text == "kmit12345")
            {
                Button1.Visible = true;
                Button2.Visible = true;
            }
            else
                Errormsg.Text = "Invalid Password.";
        }
        else
            Errormsg.Text = "Invalid Username or password.";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Syllabus.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Newtable.aspx");
    }
}