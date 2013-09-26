<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_age.aspx.cs" Inherits="age" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div>
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Tänään on: " OnInit="Label1_Init"></asp:Label>
       </h2>
            <h2>
                <asp:Label ID="Label2" runat="server" Text="Valitse haluamasi päivä: " OnInit="Label2_Init"></asp:Label>
            </h2>
            <h2>
                <asp:Label ID="Label3" runat="server" Text="Valitun päivän ja tämän päivän erotus on: 0"></asp:Label>
            </h2>
            <h2>
                <asp:Button ID="Button1" runat="server" Text="< vuosi" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="vuosi >" OnClick="Button2_Click" />
            </h2>
            <h2>
                <asp:Calendar ID="Calendar1" runat="server" OnInit="Calendar1_Init" OnSelectionChanged="Calendar1_SelectionChanged" VisibleDate="2013-10-10"></asp:Calendar>
            </h2>

    </div>


</asp:Content>

