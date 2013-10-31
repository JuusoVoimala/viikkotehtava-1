using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

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

    protected void btnLisaa_Click(object sender, EventArgs e)
    {
        OleDbConnection cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + MapPath("~/App_Data/SMLiiga.accdb") + ";Persist Security Info=False;");
        OleDbCommand cmd = new OleDbCommand("SELECT MAX(id) FROM Pisteet");

        cmd.Connection = cn;
        cn.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        reader.Read();
        int i = reader.GetInt16(0) + 1;

        OleDbConnection cna = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + MapPath("~/App_Data/SMLiiga.accdb") + ";Persist Security Info=False;");
        OleDbCommand cmds = new OleDbCommand("INSERT INTO Pisteet (id, sukunimi, etunimi, seura, pelipaikka) VALUES('" + i + "','" + tbxEtu.Text + "','" + tbxSuku.Text + "','" + ddlSeura.SelectedValue + "','" + ddlPelipaikka.SelectedValue + "')");

        cmds.Connection = cna;
        cna.Open();

        cmds.ExecuteNonQuery();
    }

}