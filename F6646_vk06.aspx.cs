using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class F6646_vk06 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbxSeura_TextChanged(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
    }

    protected void lbxPelipaikka_TextChanged(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource4";
        GridView1.DataBind();
    }

}