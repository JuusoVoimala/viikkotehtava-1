using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Records2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetRecords_Click(object sender, EventArgs e)
    {
        //Haetaan levytiedot DataTableen
        //Tämä onnistuu heittämällä vain DataSetillä
        DataSet ds = new DataSet();
        //DataTable dt = new DataTable();
        ds.ReadXml(MapPath("~/App_Data/Records2.xml"));
        //Kytketään kontrolliin
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}