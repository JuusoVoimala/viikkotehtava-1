using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class F6646_indexMP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnParameter_Click(object sender, EventArgs e)
    {
        var response = base.Response;
        Session["nimi"] = null;
        string parametri = txtName.Text;

        response.Redirect("F6646_Valuuttamuunnin.aspx?nimi=" + parametri, false);

    }
    protected void btnSession_Click(object sender, EventArgs e)
    {
        var response = base.Response;
        Session["nimi"] = txtName.Text;

        response.Redirect("F6646_Valuuttamuunnin.aspx", false);

    }
    protected void btnCookie_Click(object sender, EventArgs e)
    {
        string cookieValue = txtName.Text;
        Session["nimi"] = null;
        Response.Cookies["nimi"].Value = cookieValue;

        Response.Redirect("F6646_Valuuttamuunnin.aspx", false);

    }
}