using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
               
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }
    }

   

   
}