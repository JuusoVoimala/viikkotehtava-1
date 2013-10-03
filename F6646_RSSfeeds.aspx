<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_RSSfeeds.aspx.cs" Inherits="F6646_RSSfeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:XmlDataSource ID="myDataSource" runat="server"
        XPath="rss" />

    <asp:Button ID="btnGetLiiga" runat="server"
        OnClick="btnGetLiiga_Click" Text="Liiga" />
    <asp:Button ID="btnGetIS" runat="server"
        OnClick="btnGeIS_Click" Text="IS" />
    <asp:Button ID="btnGetMS" runat="server"
        OnClick="btnGetMS_Click" Text="MS" />
    <h1><asp:Label ID="lblHeader" runat="server" Text="..." /></h1>
    <asp:Label ID="lblBody" runat="server" Text="..." />
    <asp:Table ID="myDataTable" runat="server" />


</asp:Content>

