using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class F6646_Valuuttamuunnin : System.Web.UI.Page
{
    private const float BitCoinRate = 94.71F;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //Muunnetaan käyttäjän antamat BitCoinit Euroiksi
            lblCurrency.Text = string.Format("{0:0.0000} euroa", float.Parse(txtCurrency.Text) * BitCoinRate);

            //Näytetään suoritetut laskutoimitukset listboxissa
            lstOne.Items.Add(txtCurrency.Text + "==>" + lblCurrency.Text);
            lstTwo.Items.Add(txtCurrency.Text + "==>" + lblCurrency.Text);
        }
        catch (Exception ex)
        {

            lblCurrency.Text = ex.Message;

        }
        


        
    }
}