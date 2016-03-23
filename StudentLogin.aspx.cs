using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class StudentLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        int Results = 0;
        String mobileno = SUsername.Text;

        if (SUsername.Text != null && SPassword.Text != null)
        {
            Results = validate_Login(SUsername.Text);

            if (Results == 1)
            {
                Response.Redirect("Table.aspx");
            }
            else
            {
                Errormsg.Text = "Invalid Login";

                Errormsg.ForeColor = System.Drawing.Color.Red;

                
            }
        }
    }
    public int validate_Login(string Username)
    {
        int count = 0;
        con.Open();
        SqlCommand cmdselect = new SqlCommand("select sroll, sname from studentdata2013 where (sroll = '" + SUsername.Text + "')", con);
        SqlDataReader dr = cmdselect.ExecuteReader();
        while (dr.Read())
        {
            count++;
            Session["stu"] = dr.GetValue(1).ToString();
        }
        con.Close();
        return count;
    }
}
