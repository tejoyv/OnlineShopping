using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMainCategory();
            BindBrandsRtr();
        }
    }

    private void BindBrandsRtr()
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT A.*,B.* FROM tblSubCategories A inner join tblCategories B on B.CatId=A.MainCatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory = new DataTable();
                    sda.Fill(dtCategory);
                    rptrCategory.DataSource = dtCategory;
                    rptrCategory.DataBind();
                }
            }
        }
    }

    private void BindMainCategory()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblCategories", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "CatName";
            ddlCategory.DataValueField = "CatId";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO tblSubCategories(SubCatName,MainCatID) Values('" + txtSubCatName.Text + "','"+ddlCategory.SelectedItem.Value+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSubCatName.Text = string.Empty;
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;
        }
        BindBrandsRtr();
    }
}
