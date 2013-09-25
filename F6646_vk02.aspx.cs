using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class F6646_vk02 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (ika.Text == "")
        {
            ika.Text = ConfigurationManager.AppSettings["DefaultAge"];
            palkka.Text = ConfigurationManager.AppSettings["DefaultPayment"];
        }

        laskeElake();
    }

    protected void plusIka_Click(object sender, EventArgs e)
    {
        int age = Int32.Parse(ika.Text) + 1;
        if (age > 64)
        {
            age = 64;
        }
        ika.Text = "" + age;
    }

    protected void miinusIka_Click(object sender, EventArgs e)
    {
        int age = Int32.Parse(ika.Text) - 1;
        if (age < 18)
        {
            age = 18;
        }
        ika.Text = "" + age;
    }

    protected void miinusPalkka_Click(object sender, EventArgs e)
    {
        int p = Int32.Parse(palkka.Text) - 100;
        if (p < 0)
        {
            p = 0;
        }
        palkka.Text = "" + p;
    }

    protected void plusPalkka_Click(object sender, EventArgs e)
    {
        int p = Int32.Parse(palkka.Text) + 100;

        palkka.Text = "" + p;
    }

    protected void laskeElake()
    {
        int p = Int32.Parse(palkka.Text);
        int age = Int32.Parse(ika.Text);
        double e = (0.5 * p);
        double eAikaKerroin = (63 - age) * 5.5;
        double el = e - eAikaKerroin;

        tulos.InnerText = "" + e;
        ekVaikutus.InnerText = "-" + eAikaKerroin;
        elake.Text = "" + el;
    }
}