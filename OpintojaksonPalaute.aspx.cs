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


       /* using (XmlWriter writer = XmlWriter.Create(MapPath("~/App_Data/Palautteet.xml")))
        {
            writer.WriteStartDocument();
            writer.WriteStartElement("palautteet");

            
                writer.WriteStartElement("palaute");

                writer.WriteElementString("pvm", tbxPvm.Text);
                writer.WriteElementString("tekija", tbxNimi.Text);
                writer.WriteElementString("opittu", tbxOlenOppinut.Text);
                writer.WriteElementString("haluanoppia", tbxHaluanOppia.Text);
                writer.WriteElementString("hyvaa", tbxHyvaa.Text);
                writer.WriteElementString("parannettavaa", tbxHuonoa.Text);
                writer.WriteElementString("muuta", tbxMuuta.Text);


                writer.WriteEndElement();
            

            writer.WriteEndElement();
            writer.WriteEndDocument();
        }*/
    }
    protected void btnNaytaPalautteet_Click(object sender, EventArgs e)
    {
        DataTable table = new DataTable("XmlData");

        using (Stream stream = new FileStream(MapPath("~/App_Data/Palautteet.xml"), FileMode.Open, FileAccess.Read))
        {
            //create the table with the appropriate column names
            table.Columns.Add("Pvm", typeof(string));
            table.Columns.Add("Nimi", typeof(int));
            table.Columns.Add("Opittu", typeof(string));
            table.Columns.Add("Haluan oppia", typeof(string));
            table.Columns.Add("Hyvää", typeof(string));
            table.Columns.Add("Parannettavaa", typeof(string));
            table.Columns.Add("Muuta", typeof(string));

            //use ReadXml to read the XML stream
            table.ReadXml(stream);

        } 
    }
}