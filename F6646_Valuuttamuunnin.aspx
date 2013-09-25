<%@ Page Title="IIO13200 Viikkotehtävä 1" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_Valuuttamuunnin.aspx.cs" Inherits="F6646_Valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />
    Terve: <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
    <br />
    Muunnan BitCoinit euroiksi, anna BitCoinien määrä:<asp:TextBox ID="txtCurrency" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Muunna" />
    <br />
    <asp:Label ID="lblCurrency" runat="server" Text="..."></asp:Label><br/>
    <asp:ListBox ID="lstOne" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstTwo" runat="server" EnableViewState="False"></asp:ListBox>
&nbsp; 


</asp:Content>

