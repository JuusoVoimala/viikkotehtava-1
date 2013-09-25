using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class age : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Label1_Init(object sender, EventArgs e)
    {
        String currentDate = DateTime.Today.ToShortDateString();
        this.Label1.Text = "Tänään on: " + currentDate;
    }
    protected void Label2_Init(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String selectedDate = Convert.ToString(this.Calendar1.SelectedDate.ToShortDateString());
        this.Label2.Text = "Valittu päivä on: " + selectedDate;
        LaskeErotus();
    }
    protected void Calendar1_Init(object sender, EventArgs e)
    {
        String currentDate = DateTime.Today.ToShortDateString();
        this.Label2.Text = "Valittu päivä on: " + currentDate;
    }
    protected void LaskeErotus()
    {
        String erotus = Convert.ToString(Math.Abs((this.Calendar1.SelectedDate - DateTime.Today).Days));
        this.Label3.Text = "Valitun päivän ja tämän päivän erotus on: " + erotus;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.VisibleDate = Calendar1.VisibleDate.AddYears(-1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.VisibleDate = Calendar1.VisibleDate.AddYears(1);
    }
}