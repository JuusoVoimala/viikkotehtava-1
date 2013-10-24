<%@ Page Title="Levyn tiedot" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_vk05a.aspx.cs" Inherits="F6646_vk05a" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <asp:Image ID="img" runat="server" />

        <h2><asp:Label ID="header" runat="server" Text=""></asp:Label></h2>
        <b>ISBN: </b><asp:Label ID="labelISBN" runat="server" Text=""></asp:Label> <br />
        <b>Hinta: </b><asp:Label ID="labelPrice" runat="server" Text=""></asp:Label>
        <h3>Kappaleet:</h3>


        <asp:Repeater ID="songList" runat="server">
            <ItemTemplate>
            <%# Eval("name") %> <br />
            </ItemTemplate>
        </asp:Repeater>

        <div>
            <a href ="F6646_vk05.aspx" >Back</a>
        </div>
    </div> 


</asp:Content>

