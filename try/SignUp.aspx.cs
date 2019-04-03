using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Signup_Button_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        con.Open();
        SqlCommand command = new SqlCommand("INSERT INTO Users(Username,Password,Email) Values('" + user.Text + "','" + pass.Text +"','"+email.Text+"')", con);
        command.ExecuteNonQuery();
    }

}