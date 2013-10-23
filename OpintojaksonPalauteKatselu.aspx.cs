using System;
using System.Collections.Generic;
using System.IO; 
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization; 

public partial class OpintojaksonPalauteKatselu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string polku = HttpContext.Current.Server.MapPath("~/App_Data/Palautteet.xml");

        palautteet pal = new palautteet();
        pal = (palautteet)XMLDeserialize(polku);

        TableRow r = new TableRow();
        TableCell c = new TableCell();
        TableCell c0 = new TableCell();
        TableCell c1 = new TableCell();
        TableCell c2 = new TableCell();
        TableCell c3 = new TableCell();
        TableCell c4 = new TableCell();
        TableCell c5 = new TableCell();
        c.Text = "Pvm";
        c0.Text = "Nimi";
        c1.Text = "Opittu";
        c2.Text = "Haluan oppia";
        c3.Text = "Hyvää";
        c4.Text = "Parannettavaa";
        c5.Text = "Muuta";
        r.Cells.Add(c);
        r.Cells.Add(c0);
        r.Cells.Add(c1);
        r.Cells.Add(c2);
        r.Cells.Add(c3);
        r.Cells.Add(c4);
        r.Cells.Add(c5);

        tblPalautteet.Rows.Add(r); 

        for (int i = 0; i < pal.palaute.Count; i++)
        {
            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            TableCell cell0 = new TableCell();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();
            cell.Text = pal.palaute[i].pvm;
            cell0.Text = pal.palaute[i].tekija;
            cell1.Text = pal.palaute[i].opittu;
            cell2.Text = pal.palaute[i].haluanoppia;
            cell3.Text = pal.palaute[i].hyvaa;
            cell4.Text = pal.palaute[i].parannettavaa;
            cell5.Text = pal.palaute[i].muuta;
            row.Cells.Add(cell);
            row.Cells.Add(cell0);
            row.Cells.Add(cell1);
            row.Cells.Add(cell2);
            row.Cells.Add(cell3);
            row.Cells.Add(cell4);
            row.Cells.Add(cell5);

            tblPalautteet.Rows.Add(row); 
        }
    }


    public static palautteet XMLDeserialize(string filename)
    {
        XmlSerializer xs = null;
        FileStream fs = null;
        palautteet pal = new palautteet();
        xs = new XmlSerializer(typeof(palautteet));
        fs = new FileStream(filename, FileMode.Open);
        pal = (palautteet)xs.Deserialize(fs);

        if (fs != null)
            fs.Close();

        return pal; 
    }


    [Serializable()]
    [XmlRoot("palautteet")]
    public class palautteet
    {

        [XmlElement("palaute")]
        public List<palaute> palaute
        {
            get;
            set;
        }
    } 


    [Serializable()]
    public class palaute
    {
        private string _pvm;
        private string _tekija;
        private string _opittu;
        private string _haluanoppia;
        private string _hyvaa;
        private string _parannettavaa;
        private string _muuta;

        [XmlElement("pvm")]
        public string pvm
        {
            get { return _pvm; }
            set { _pvm = value; }
        }

        [XmlElement("tekija")]
        public string tekija
        {
            get { return _tekija; }
            set { _tekija = value; }
        }
        [XmlElement("opittu")]
        public string opittu
        {
            get { return _opittu; }
            set { _opittu = value; }
        }
        [XmlElement("haluanoppia")]
        public string haluanoppia
        {
            get { return _haluanoppia; }
            set { _haluanoppia = value; }
        }
        [XmlElement("hyvaa")]
        public string hyvaa
        {
            get { return _hyvaa; }
            set { _hyvaa = value; }
        }
        [XmlElement("parannettavaa")]
        public string parannettavaa
        {
            get { return _parannettavaa; }
            set { _parannettavaa = value; }
        }
        [XmlElement("muuta")]
        public string muuta
        {
            get { return _muuta; }
            set { _muuta = value; }
        }
    } 


}