using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class F6646_vk07 : System.Web.UI.Page
{
    List<Auto> autoLista = new List<Auto>();

    private string GridViewSortDirection
    {
        get { return ViewState["SortDirection"] as string ?? "ASC"; }
        set { ViewState["SortDirection"] = value; }
    }
    private string GridViewSortExpression
    {
        get { return ViewState["SortExpression"] as string ?? string.Empty; }
        set { ViewState["SortExpression"] = value; }
    }
    private string GetSortDirection()
    {
        switch (GridViewSortDirection)
        {
            case "ASC":
                GridViewSortDirection = "DESC";
                break;
            case "DESC":
                GridViewSortDirection = "ASC";
                break;
        }
        return GridViewSortDirection;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            initMyStuff();
        }
        else
        {
            autoLista = (List<Auto>)ViewState["autoLista"];
        }
    }

    protected void initMyStuff()
    {
        autoLista = BLAutot.HaeAutot();
        toGridView(autoLista);
    }

    protected void toGridView(List<Auto> autoLista)
    {
        ViewState["autoLista"] = autoLista;

        gvAutot.DataSource = autoLista;
        gvAutot.DataBind();
    }

    protected void gvAutot_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridViewSortExpression = e.SortExpression;
        toGridView(BLAutot.SortList(autoLista, GridViewSortExpression, GetSortDirection()));
    }

    protected void gvAutot_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAutot.PageIndex = e.NewPageIndex;
        toGridView(autoLista);
    }

    protected void gvAutot_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        autoLista.RemoveAt(e.RowIndex);
        toGridView(autoLista);
    }

    protected void gvAutot_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvAutot.EditIndex = e.NewEditIndex;
        toGridView(autoLista);
    }

    protected void gvAutot_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvAutot.EditIndex = -1;
        toGridView(autoLista);
    }

    protected void gvAutot_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = gvAutot.Rows[e.RowIndex];

        autoLista[e.RowIndex].Merkki = BLAutot.regexString(((TextBox)(row.Cells[1].Controls[0])).Text, "Merkki");
        autoLista[e.RowIndex].Aid = BLAutot.regexString((((TextBox)(row.Cells[2].Controls[0])).Text), "Aid");
        autoLista[e.RowIndex].Rekkari = BLAutot.regexString((((TextBox)(row.Cells[3].Controls[0])).Text), "Rekkari");
        autoLista[e.RowIndex].Malli = BLAutot.regexString((((TextBox)(row.Cells[4].Controls[0])).Text), "Malli");
        autoLista[e.RowIndex].Vm = int.Parse(BLAutot.regexString((((TextBox)(row.Cells[5].Controls[0])).Text), "Vm"));
        autoLista[e.RowIndex].MyyntiHinta = int.Parse(BLAutot.regexString((((TextBox)(row.Cells[6].Controls[0])).Text), "MyyntiHinta"));
        autoLista[e.RowIndex].OstoHinta = int.Parse(BLAutot.regexString((((TextBox)(row.Cells[6].Controls[0])).Text), "OstoHinta"));

        gvAutot.EditIndex = -1;
        toGridView(autoLista);
    }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        autoLista.Add(new Auto());
        autoLista = BLAutot.SortList(autoLista, "Malli", "ASC");
        gvAutot.EditIndex = 0;
        toGridView(autoLista);
    }
}