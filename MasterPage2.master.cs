using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MainMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        var response = base.Response;

                switch (e.Item.Value)
        {
            case "Home": response.Redirect("~/F6646_vk03.aspx");
                break;
            case "Products": response.Redirect("~/F6646_vk03_products.aspx");
                break;
            case "Puu": response.Redirect("~/F6646_vk03_puu.aspx");
                break;
            case "About": response.Redirect("~/F6646_vk03_about.aspx");
                break;
            case "Contact": response.Redirect("~/F6646_vk03_contact.aspx");
                break;
            default:
                break;
        }
    }
}
