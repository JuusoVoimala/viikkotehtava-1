using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

public partial class F6646_vk05a : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string isbn = Request.Params["ISBN"];

        XElement root = XElement.Load(MapPath("~/App_Data/LevyKauppaX.xml"));

        IEnumerable<XElement> records = from ele in root.Element("genre").Elements("record")
            where (string)ele.Attribute("ISBN") == isbn
            select ele;

        if (records.Count() < 1) return;
        XElement record = records.ElementAt(0);

        img.ImageUrl = "images/" + isbn + ".jpg";
        header.Text = record.Attribute("Artist").Value + " - " + record.Attribute("Title").Value;
        labelISBN.Text = isbn;
        labelPrice.Text = record.Attribute("Price").Value + "€";

        DataTable songs = new DataTable();
        songs.Columns.Add("name");

        foreach(XElement song in record.Elements("song"))
            songs.Rows.Add(song.Attribute("name").Value);

        songList.DataSource = songs;
        songList.DataBind(); 
    }

}