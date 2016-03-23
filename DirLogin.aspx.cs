using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DirLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DLoginButton_Click(object sender, EventArgs e)
    {
        if (DUsername.Text == "director1")
        {
            if (DPassword.Text == "kmit12345")
            {
                Response.Redirect("Director.aspx");
            }
            else
                Errormsg.Text = "Invalid Login";
        }
        else
            Errormsg.Text = "Invalid Login.";
    }
}