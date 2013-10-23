using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class OpintojaksonPalaute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.tbxPvm.Text = Convert.ToString(DateTime.Today.ToShortDateString());
    }
    protected void btnLahetaPalaute_Click(object sender, EventArgs e)
    {
        string filename = MapPath("~/App_Data/Palautteet.xml");

        XmlDocument doc = new XmlDocument();

        doc.Load(filename);

        XmlElement newElem = doc.CreateElement("palaute");

        newElem.InnerXml = "<pvm>" + this.tbxPvm.Text + "</pvm>" +
            "<tekija>" + this.tbxNimi.Text + "</tekija>" +
            "<opittu>" + this.tbxOlenOppinut.Text + "</opittu>" +
            "<haluanoppia>" + this.tbxHaluanOppia.Text + "</haluanoppia>" +
            "<hyvaa>" + this.tbxHyvaa.Text + "</hyvaa>" +
            "<parannettavaa>" + this.tbxHuonoa.Text + "</parannettavaa>" +
            "<muuta>" + this.tbxMuuta.Text + "</muuta>";

        doc.DocumentElement.SelectNodes("/palautteet")[0].AppendChild(newElem);

        XmlWriter w = new XmlTextWriter(filename, System.Text.Encoding.UTF8);
        doc.WriteTo(w);
        w.Close();

        this.tbxPvm.Text = "";
        this.tbxNimi.Text = "";
        this.tbxOlenOppinut.Text = "";
        this.tbxHaluanOppia.Text = "";
        this.tbxHyvaa.Text = "";
        this.tbxHuonoa.Text = "";
        this.tbxMuuta.Text = "";

    }
    protected void btnNaytaPalautteet_Click(object sender, EventArgs e)
    {
        var response = base.Response;
        response.Redirect("~/OpintojaksonPalauteKatselu.aspx");
    }
}