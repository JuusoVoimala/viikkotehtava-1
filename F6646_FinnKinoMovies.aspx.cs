using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class F6646_FinnKinoMovies : System.Web.UI.Page
{
    string urlToTheatres;
    string urlToMovies;

    protected void Page_Load(object sender, EventArgs e)
    {
        urlToTheatres = ConfigurationManager.AppSettings["finnkinoteatterit"];
        urlToMovies = ConfigurationManager.AppSettings["finnkinoelokuvat"];
    }
    protected void myListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        string theatreShows = urlToMovies + myListBox.SelectedItem.Value;
        myDataSource.DataFile = theatreShows;
        myRepeater.DataSource = myDataSource;
        myRepeater.DataBind();

    }
    protected void btnGetTheatres_Click(object sender, EventArgs e)
    {
        //haetaan FinnKinon teatterit listboxiin
        ConfigXmlDocument doc = new ConfigXmlDocument();
        doc.Load(urlToTheatres);
        XmlNodeList nodes = doc.DocumentElement.SelectNodes("TheatreArea");
        foreach (XmlNode node in nodes)
        {
            ListItem li = new ListItem(node["Name"].InnerText,node["ID"].InnerText);
            myListBox.Items.Add(li);
        }
    }
}