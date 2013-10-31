<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HaeIlmot.aspx.cs" Inherits="HaeIlmot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Läsnäolot</h1>

    Sukunimi:
    <asp:TextBox ID="tbxHaeSuku" runat="server"></asp:TextBox>
    <br/>
    Opintojakso:
    <asp:DropDownList ID="ddlOpintojakso" runat="server" DataSourceID="SqlDataSource1" DataTextField="course" DataValueField="course"></asp:DropDownList>
    <br/>
    <asp:Button ID="btnHae" runat="server" Text="Hae" OnClick="btnHae_Click" />
    <br />

    <asp:SqlDataSource ID="srcIlmot" ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=DemoxOy;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' ORDER BY asioid" runat="server">
    </asp:SqlDataSource>
    <h2>Syksyn läsnäolot</h2>
    <asp:GridView runat="server" ID="grdSaatana" DataSourceID="srcIlmot"></asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" 
            SelectCommand="SELECT DISTINCT [course] FROM [lasnaolot]">
        </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT [lastname], [firstname], [date], [course] FROM [lasnaolot] WHERE (([course] = @course) AND ([lastname] = @lastname))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlOpintojakso" Name="course" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="tbxHaeSuku" Name="lastname" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>

