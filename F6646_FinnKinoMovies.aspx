<%@ Page Title="FinnKinon elokuvat tänään" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_FinnKinoMovies.aspx.cs" Inherits="F6646_FinnKinoMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <asp:Button ID="btnGetTheatres" runat="server" Text="Hae teatterit" OnClick="btnGetTheatres_Click" />
    <asp:ListBox ID="myListBox" runat="server" DataTextField="ID"
        rows="18" OnSelectedIndexChanged="myListBox_SelectedIndexChanged"
        AutoPostBack="true" />
    <asp:XmlDataSource ID="myDataSource" runat="server" />
    <asp:Repeater ID="myRepeater" runat="server">
        <ItemTemplate>
            <!-- esitetään elokuvan kuva -->
            <asp:Image ID="image1" runat="server"
                ImageUrl = '<%#XPath("Images/EventSmallImagePortrait") %>' />
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>

