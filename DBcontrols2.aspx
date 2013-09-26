<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DBcontrols2.aspx.cs" Inherits="DBcontrols2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource
        ID="srcMovies"
        ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT title, director, year FROM Movies ORDER BY title"
        runat="server">
    </asp:SqlDataSource>

    <h1>DataControls to display a single data item</h1>
    <h2>DetailsVioew -control</h2>
    <p> Näyttää data HTML-taulussa, tarvittaessa mahdollistaa lisäämisen ja muokkaamisen</p>
    <asp:DetailsView ID="DetailsView1" DataSourceID="srcMovies" runat="server" AllowPaging="true">
    </asp:DetailsView>

    <h2>FormView -control</h2>
    <p>Näyttää datan ItemTemplaten avulla</p>
    <asp:FormView ID="FormView1" DataSourceID="srcMovies" runat="server" AllowPaging="true">
        <ItemTemplate>
            <h3><%#Eval("title") %></h3> directed by <%#Eval("director") %> at year <%#Eval("year") %>
        </ItemTemplate>
    </asp:FormView>

</asp:Content>

