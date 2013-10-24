<%@ Page Title="Joku kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_indexMP.aspx.cs" Inherits="F6646_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <h1>Viikkotehtävä 5</h1>
        <div>
            <asp:HyperLink ID="hyperlink12" runat="server" NavigateUrl="~/F6646_vk05.aspx">Tehtävä 5 (LevykauppaX)</asp:HyperLink>
        </div>

        <h1>Viikkotehtävä 4</h1>
        <div>
            <asp:HyperLink ID="hyperlink10" runat="server" NavigateUrl="~/F6646_vk04.aspx">Tehtävä 4 (Wanhat Autot)</asp:HyperLink>
        </div>

        <h1>Opintojakson välipalaute</h1>
        <div>
            <asp:HyperLink ID="hyperlink9" runat="server" NavigateUrl="~/OpintojaksonPalaute.aspx">Palaute</asp:HyperLink>
        </div>

        <h1>Viikkotehtävä 3</h1>
        <div>
            <asp:HyperLink ID="hyperlink6" runat="server" NavigateUrl="~/F6646_vk03.aspx">Tehtävä 3</asp:HyperLink>
        </div>
        
        <h1>Viikkotehtävät 1 ja 2</h1>
        <div>
            <h3>Tässä suoraan 1. tehtävän "eka sivu"</h3>
            <asp:Textbox ID="txtName" runat="server" Text="Tähän nimesi" ></asp:Textbox>
            <asp:Button ID="btnParameter" runat="server" Text="Välitä parametrina" OnClick="btnParameter_Click" />
            <asp:Button ID="btnSession" runat="server" Text="Välitä Sessioiniin" OnClick="btnSession_Click" />
            <asp:Button ID="btnCookie" runat="server" Text="Välitä Cookieen" OnClick="btnCookie_Click" />
        <br/>
        <br/>
            <asp:HyperLink ID="hyperlink4" runat="server" NavigateUrl="~/F6646_vk02.aspx">Tehtävä 2</asp:HyperLink>
        </div>
        

        <h1>Viikon 37 tuntiharkat</h1>
        <div>
            <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Tehtävä jeejeejee</asp:HyperLink>
        </div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/F6646_LocalDBDemo.aspx">KissaLeffat</asp:HyperLink>

        <h1>Tuntitehtävä vko 38</h1>
        <div>
            <asp:HyperLink ID="hyperlink3" runat="server" NavigateUrl="~/F6646_age.aspx">Päivämäärähässäkkä</asp:HyperLink>
        </div>
        <h1>Tuntitehtävä vko 39</h1>
        <div>
            <asp:HyperLink ID="hyperlink5" runat="server" NavigateUrl="~/F6646_age.aspx">Demo of</asp:HyperLink>
        </div>
        <h1>Tuntitehtävä vko 40</h1>
        <div>
            <asp:HyperLink ID="hyperlink7" runat="server" NavigateUrl="~/F6646_RSSfeeds.aspx">RSS-feedit kolmesta eri lähteestä</asp:HyperLink>
            <asp:HyperLink ID="hyperlink8" runat="server" NavigateUrl="~/F6646_FinnKinoMovies.aspx">FinnKinon rainat</asp:HyperLink>
        </div>
    </div>


</asp:Content>

