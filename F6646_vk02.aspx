<%@ Page Title="IIO13200 Viikkotehtävä 2" Language="C#" AutoEventWireup="true" CodeFile="F6646_vk02.aspx.cs" Inherits="F6646_vk02" %>




<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Eläkelaskuri</title>

    <style type="text/css">

        .auto-style1 {
            height: 67px;
        }
        .auto-style2 {
            width: 73px;
        }
        .auto-style3 {
            width: 227px;
        }
        .auto-style4 {
            height: 67px;
            width: 227px;
        }
        .auto-style5 {
            width: 227px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
        .auto-style7 {
            width: 73px;
            height: 53px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <h2>Tänään on paras päivä aloittaa eläkesäästäminen.</h2>
    <div class="round">
        <h3 class="underline">1. Tiedätkö kuinka paljon saat aikanaan eläkettä? Laske tästä!</h3>
        <div class="line"></div>
        <table>
            <tr>
                <td class="auto-style3">Ikä</td>
                <td >Lakisääteinen eläke</td>
                <td class="auto-style2" id="tulos" runat="server"></td>
            </tr>
            <tr>
                <td class="auto-style5"><asp:Button ID="miinusIka" runat="server" class="orange" Text="-" onClick="miinusIka_Click" /><asp:TextBox ID="ika" runat="server" ViewStateMode="Enabled" ReadOnly="true" class="TextBox" /><asp:Button ID="plusIka" class="orange" runat="server" Text="+" OnClick="plusIka_Click" /> &nbsp;&nbsp; vuotta</td>
                <td class="auto-style6" >Elinaikakertoimen vaikutus</td>
                <td class="auto-style7" id="ekVaikutus" runat="server"></td>
            </tr>
            <tr>
                <td class="auto-style3">Palkka</td>
                <td colspan="2" >Arvio lakisääteisesta eläkkeestä</td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Button ID="miinusPalkka" class="orange" runat="server" Text="-" OnClick="miinusPalkka_Click" style="width: 18px"/><asp:TextBox ID="palkka" ViewStateMode="Enabled" class="TextBox" runat="server" ReadOnly="true" /><asp:Button ID="plusPalkka" class="orange" runat="server" Text="+" OnClick="plusPalkka_Click"/> &nbsp;&nbsp; €</td>
                <td colspan="2" class="auto-style1"> <asp:TextBox ID="elake" runat="server" ReadOnly="true" /> €</td>
            </tr>
        </table>
    </div>
        <h3>2. Riittääkö se sinulle? Paranna toimeentuloasi säästämällä.</h3>
    </form>
</body>
</html>


