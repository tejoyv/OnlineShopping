using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }  
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM Users where UserName='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if(dt.Rows.Count!=0)
        {

            if (CheckBox1.Checked)
            {
                Response.Cookies["UNAME"].Value = UserName.Text;
                Response.Cookies["PWD"].Value = Password.Text;

                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }
            string Utype;
            Utype = dt.Rows[0][4].ToString().Trim();

            if (Utype == "U")
            {
                Session["Username"] = UserName.Text;
                Response.Redirect("~/Products.aspx");
            }
            if (Utype == "A")
            {
                Session["Username"] = UserName.Text;
                Response.Redirect("~/AdminHome.aspx");
            }


        }
        else
        {
            lblError.Text = "Invalid Username or password !";
        }
    }
}