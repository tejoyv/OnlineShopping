using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //repeater
        if (!IsPostBack)
        {
            BindBrandsRptr();
        }
    }

    private void BindBrandsRptr()
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using(SqlConnection con=new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT *FROM tblBrands", con))  
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrBrands.DataSource = dtBrands;
                    rptrBrands.DataBind();
                }
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        con.Open();
        SqlCommand command = new SqlCommand("INSERT INTO tblBrands(Name) Values('" + txtBrandName.Text + "')", con);
        command.ExecuteNonQuery();
        txtBrandName.Text = string.Empty;
    }
}