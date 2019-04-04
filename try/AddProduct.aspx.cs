using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrands();
            BindCategory();
            BindGender();
            ddlSubCategory.Enabled = false;
            ddlGender.Enabled = false;
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

    private void BindCategory()     //for inflating category ddl
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
    private void BindBrands()            //for inflating brand ddl
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblBrands", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlBrands.DataSource = dt;
            ddlBrands.DataTextField = "Name";
            ddlBrands.DataValueField = "BrandId";
            ddlBrands.DataBind();
            ddlBrands.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }


    protected  void ddlCategory_SelectedIndexChanged(object sender,EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblSubCategories where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            ddlSubCategory.DataSource = dt;
            ddlSubCategory.DataTextField = "SubCatName";
            ddlSubCategory.DataValueField = "SubCatID";
            ddlSubCategory.DataBind();
            ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            ddlSubCategory.Enabled = true;
        }
    }
    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT *FROM tblSizes where BrandID='" + ddlBrands.SelectedItem.Value + "' and CategoryID='"+ddlCategory.SelectedItem.Value+ "'and SubCategoryID='" + ddlSubCategory.SelectedItem.Value + "'and GenderID='" + ddlGender.SelectedItem.Value + "'", con);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            cblSize.DataSource = dt;
            cblSize.DataTextField = "SizeName";
            cblSize.DataValueField = "SizeId";
            cblSize.DataBind();
        }
    }
    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSubCategory.SelectedIndex != 0)
        {
            ddlGender.Enabled = true;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        SqlCommand cmd = new SqlCommand("procInsertProducts", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@PName", txtPName.Text);
        cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
        cmd.Parameters.AddWithValue("@PSelPrice", txtSelPrice.Text);
        cmd.Parameters.AddWithValue("@PBrandID",ddlBrands.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@PDescription", txtDesc.Text);
        cmd.Parameters.AddWithValue("@PProductDetails", txtPDetails.Text);
        cmd.Parameters.AddWithValue("@PMaterialCare", txtMatCare.Text);
        con.Open();
        Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

        //Insert Size Quantity
        for(int i = 0; i < cblSize.Items.Count; i++)
        {
            Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
            int Quantity = Convert.ToInt32(txtQuantity.Text);

            SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values('"+PID+"','"+SizeID+"','"+Quantity+"')",con);
           
            cmd2.ExecuteNonQuery();
            
        }
        //Insert and Upload images
        if (fuImg01.HasFile)
        {
            string SavePath=Server.MapPath("~/Images/ProductImages/")+PID;
            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }
            string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
            fuImg01.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "01"+Extension);

            SqlCommand cmd3 = new SqlCommand("insert into tblImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "01" + "','" + Extension + "')", con);
            cmd3.ExecuteNonQuery();
        }
        //Insert and Upload images
        if (fuImg02.HasFile)
        {
            string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }
            string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
            fuImg02.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "02"+Extension);

            SqlCommand cmd4 = new SqlCommand("insert into tblImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "02" + "','" + Extension + "')", con);
            cmd4.ExecuteNonQuery();
        }
        //Insert and Upload images
        if (fuImg03.HasFile)
        {
            string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }
            string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
            fuImg03.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "03"+Extension);

            SqlCommand cmd5 = new SqlCommand("insert into tblImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "03" + "','" + Extension + "')", con);
            cmd5.ExecuteNonQuery();
        }
        //Insert and Upload images
        if (fuImg04.HasFile)
        {
            string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }
            string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
            fuImg04.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "04"+Extension);

            SqlCommand cmd6 = new SqlCommand("insert into tblImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "04" + "','" + Extension + "')", con);
            cmd6.ExecuteNonQuery();
        }
        con.Close();
    }
}