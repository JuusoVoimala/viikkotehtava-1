<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SimpleSqlDataSource.aspx.cs" Inherits="SimpleSqlDataSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>DataGrid kontrolli</h2>
    <asp:SqlDataSource
        ID="srcMovies"
        ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT title, director, year FROM Movies ORDER BY title"
        runat="server">
    </asp:SqlDataSource>

    <asp:GridView
        ID="GridView1"
        DataSourceID="srcMovies"
        runat="server">
    </asp:GridView>

    <h2>DataList kontrolli</h2>
    <p>Datalist esittää datan HTML-taulussa, määritellään esitettävä data</p>
    <asp:DataList ID="DataList1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            Elokuvan <%#Eval("title") %> on ohjannut <%#Eval("director") %>
        </ItemTemplate>
    </asp:DataList>

    <h2>Repeater -kontrolli</h2>
    <p>Repeater näyttää datarivejä käyttäen templatea, ei renderoi automaattisesti HTML-taulua</p>
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            Movie <%#Eval("title") %> directed by <b><%#Eval("director")%></b> 
        </ItemTemplate>
    </asp:Repeater>

    <h2>ListView -kontrolleri</h2>
    <p>Tämäkin näyttää datarivejä käyttäen templatea, tukee sorttausta sivutusta ja jotain blaa blaa blaa</p>
    <asp:ListView ID="ListView1" DataSourceID="srcMovies" runat="server">
        <LayoutTemplate>
            <div id="itemPlaceholder" runat="server" />
            <asp:DataPager ID="pager1" PageSize="4" runat="server">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager>
        </LayoutTemplate>
        <ItemTemplate>
            <b>Movie <%#Eval("title") %></b> directed by <%#Eval("director")%>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>

