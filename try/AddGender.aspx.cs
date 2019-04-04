using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddGender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //repeater
        if (!IsPostBack)
        {
            BindGenderRptr();
        }
    }

    private void BindGenderRptr()
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT *FROM tblGender", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory = new DataTable();
                    sda.Fill(dtCategory);
                    rptrGender.DataSource = dtCategory;
                    rptrGender.DataBind();
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        con.Open();
        SqlCommand command = new SqlCommand("INSERT INTO tblGender(GenderName) Values('" + txtGenderName.Text + "')", con);
        command.ExecuteNonQuery();
        txtGenderName.Text = string.Empty;
    }
}