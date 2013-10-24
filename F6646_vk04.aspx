<%@ Page Title="Wanhat Autot" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_vk04.aspx.cs" Inherits="F6646_vk04" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>

        Hae autoa merkin tai mallin perusteella:
        <asp:TextBox ID="tbxHae" runat="server"></asp:TextBox> <br />
        Järjestä autot:
        <asp:RadioButton ID="rb1" runat="server" Text="Halvin ensin" GroupName="priceOrderGroup" />
        <asp:RadioButton ID="rb2" runat="server" Text="Kallein ensin" GroupName="priceOrderGroup" /> <br />
        Listaa kaikki merkin perusteella:
        <asp:DropDownList ID="ddCarModel" runat="server" DataTextField="merkki" DataValueField="merkki" AppendDataBoundItems="true"> 
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnSearch" runat="server" Text="Päivitä" OnClick="Button1_Click" />

        <asp:Repeater id="autot" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Merkki</th>
                        <th>Malli</th>
                        <th>VM</th>
                        <th>Myyntihinta</th>
                        <th>Sisäänostohinta</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><%#Eval("aid") %></td>
                    <td><%#Eval("merkki") %></td>
                    <td><%#Eval("malli") %></td>
                    <td><%#Eval("vm") %></td>
                    <td><%#Eval("myyntiHinta") %></td>
                    <td><%#Eval("sisaanOstoHinta") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div> 



</asp:Content>

