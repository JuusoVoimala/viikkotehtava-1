using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Xml.Linq;

public partial class F6646_vk04 : System.Web.UI.Page
{
    private DataTable table;
    private DataView view;

    protected void Page_Load(object sender, EventArgs e)
    {
        table = new DataTable();
        view = new DataView(table);

        table.Columns.Add("aid", typeof(int));
        table.Columns.Add("rekkari", typeof(string));
        table.Columns.Add("merkki", typeof(string));
        table.Columns.Add("malli", typeof(string));
        table.Columns.Add("vm", typeof(int));
        table.Columns.Add("myyntiHinta", typeof(int));
        table.Columns.Add("sisaanOstoHinta", typeof(int));

        XDocument doc = XDocument.Load(MapPath("~/App_Data/WanhatAutot.xml"));
        XElement ele = doc.Element("Wanhatautot");

        foreach (XElement element in ele.Elements())
        {
            table.Rows.Add(
                element.Element("aid").Value,
                element.Element("rekkari").Value,
                element.Element("merkki").Value,
                element.Element("malli").Value,
                element.Element("vm").Value,
                element.Element("myyntiHinta").Value,
                element.Element("sisaanOstoHinta").Value);
        }

        ddCarModel.DataSource = table;
        ddCarModel.DataBind();
        ddCarModel.SelectedIndex = 1;

        DataTable dt = table.Clone();
        Random rnd = new Random();
        for (int i = 0; i < 4; i++)
        {
            DataRow dr = table.Rows[rnd.Next(table.Rows.Count-1)];
            dt.Rows.Add(
                dr["aid"],
                dr["rekkari"],
                dr["merkki"],
                dr["malli"],
                dr["vm"],
                dr["myyntiHinta"],
                dr["sisaanOstoHinta"]);
        }

        autot.DataSource = dt;
        autot.DataBind();

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        view.Sort = "myyntiHinta" + (rb1.Checked ? "" : " desc");
        string filter = "";

        if (tbxHae.Text != null)
        {
            filter += string.Format("malli like '%{0}%' or merkki like '%{0}%'", tbxHae.Text.Replace('\'', ' '));
        }

        if (ddCarModel.SelectedIndex > 0)
        {
            if (filter != "")
            {
                filter += " and ";
            }
            filter += string.Format("merkki = '{0}'", ddCarModel.SelectedValue);
        }

        view.RowFilter = filter;
        autot.DataSource = view;
        autot.DataBind();
     
    }
}