using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrand();
            BindGender();
            BindMainCategory();
            BindBrandsRtr();
        }
    }

    private void BindBrandsRtr()
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT A.*,B.*,C.*,D.*,E.* FROM tblSizes A inner join tblCategories B on B.CatId=A.CategoryID inner join tblBrands C on C.BrandId=A.BrandID inner join tblSubCategories D on D.SubCatID=A.SubCategoryID inner join tblGender E on E.GenderId=A.GenderID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtCategory = new DataTable();
                    sda.Fill(dtCategory);
                    rptrSize.DataSource = dtCategory;
                    rptrSize.DataBind();
                }
            }
        }
    }

    private void BindBrand()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblBrands", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlBrand.DataSource = dt;
            ddlBrand.DataTextField = "Name";
            ddlBrand.DataValueField = "BrandId";
            ddlBrand.DataBind();
            ddlBrand.Items.Insert(0, new ListItem("-Select-","0"));
        }
    }
    private void BindGender()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblGender", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlGender.DataSource = dt;
            ddlGender.DataTextField = "GenderName";
            ddlGender.DataValueField = "GenderId";
            ddlGender.DataBind();
            ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));
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
            ddlCategory.Items.Insert(0, new ListItem("-Select-","0"));
        }
    }

    protected void btnAdd_Click(object sender,EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd=new SqlCommand("insert into tblSizes values('"+txtSizeName.Text+"','"+ddlBrand.SelectedItem.Value+ "','" + ddlCategory.SelectedItem.Value + "','" + ddlSubCat.SelectedItem.Value + "','" + ddlGender.SelectedItem.Value + "')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSizeName.Text = string.Empty;
            ddlBrand.ClearSelection();
            ddlBrand.Items.FindByValue("0").Selected = true;
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;
            ddlSubCat.ClearSelection();
            ddlSubCat.Items.FindByValue("0").Selected = true;
            ddlGender.ClearSelection();
            ddlGender.Items.FindByValue("0").Selected = true;
        }
        BindBrandsRtr();
    }
    protected void ddlCategory_SelectedIndexChanged(object sender,EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblSubCategories where MainCatID='"+ddlCategory.SelectedItem.Value+"'", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlSubCat.DataSource = dt;
            ddlSubCat.DataTextField = "SubCatName";
            ddlSubCat.DataValueField = "SubCatID";
            ddlSubCat.DataBind();
            ddlSubCat.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }
}