<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Records.aspx.cs" Inherits="Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <asp:XmlDataSource ID="myRecords" runat="server" DataFile="~/App_Data/Records.xml" TransformFile="~/App_Data/Records.xsl"></asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords1" runat="server" DataFile="~/App_Data/Records.xml"> </asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords2" runat="server" DataFile="~/App_Data/Records2.xml"> </asp:XmlDataSource>
    <h1>Osta halpa levy!</h1>
    <asp:GridView ID="gvLevyt" DataSourceID="myRecords" runat="server"  AutoGenerateColumns="true"></asp:GridView>




</asp:Content>

