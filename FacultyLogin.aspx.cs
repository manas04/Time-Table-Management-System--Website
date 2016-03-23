using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FacultyLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button3.Visible = false;
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        //Session["fac"] = TextBoxmno.Text;
    }
    public int validate_Login(Decimal Username)
    {
        int count = 0;
        con.Open();
        SqlCommand cmdselect = new SqlCommand("select fmobile,fid from fac.facultydata where fmobile = '" + Convert.ToDecimal(TextBoxmno.Text) + "'", con);
        SqlDataReader dr = cmdselect.ExecuteReader();
        while (dr.Read())
        {
            count++;
            Session["fac"] = dr.GetValue(1).ToString();
        }
        con.Close();
        return count;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateSyllabus.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Table.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Results = 0;
        String mobileno = TextBoxmno.Text;

        if (TextBoxmno.Text != null && TextBoxpass.Text != null)
        {
            Results = validate_Login(Convert.ToDecimal(mobileno));

            if (Results == 1)
            {
                Button2.Visible = true;
                Button3.Visible = true;
            }
            else
            {
                Errormsg.Text = "Invalid Login";

                Errormsg.ForeColor = System.Drawing.Color.Red;            }
        }
    }
}