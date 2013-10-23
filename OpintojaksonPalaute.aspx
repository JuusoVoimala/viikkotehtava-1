<%@ Page Title="Palaute" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OpintojaksonPalaute.aspx.cs" Inherits="OpintojaksonPalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="1">
        <tr>
            <td>
                <h1>Anna palaute!</h1>

                Pvm: <asp:TextBox ID="tbxPvm" runat="server"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxPvm"></asp:RequiredFieldValidator><br/>
                Nimi: <asp:TextBox ID="tbxNimi" runat="server" ControlToValidate="tbxNimi"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxNimi"></asp:RequiredFieldValidator><br/>
                Olen oppinut: <asp:TextBox ID="tbxOlenOppinut" runat="server" TextMode="MultiLine"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxOlenOppinut"></asp:RequiredFieldValidator><br/>
                Haluan oppia: <asp:TextBox ID="tbxHaluanOppia" runat="server" TextMode="MultiLine"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxHaluanOppia"></asp:RequiredFieldValidator><br/>
                <br/>
                Muista käyttää saniteettitiloja!<br/>
            </td>
            <td>
                <h1>Kerro vielä</h1>
                Hyvää: <asp:TextBox ID="tbxHyvaa" runat="server" TextMode="MultiLine"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxHyvaa"></asp:RequiredFieldValidator><br/>
                Huonoa: <asp:TextBox ID="tbxHuonoa" runat="server" TextMode="MultiLine"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Äläpäs jätä tätä kenttää tyhjäksi!!!" ControlToValidate="tbxHuonoa"></asp:RequiredFieldValidator><br/>
                Muuta: <asp:TextBox ID="tbxMuuta" runat="server" TextMode="MultiLine"></asp:TextBox><br/>
                <br/>
                Muun ei tarvitse käyttää saniteettitiloja!<br/>
                <br/>
                <asp:Button ID="btnLahetaPalaute" runat="server" Text="Lähetä palaute" OnClick="btnLahetaPalaute_Click" />
            </td>
        </tr>
    </table>
    <br/>
    <asp:Button ID="btnNaytaPalautteet" runat="server" Text="Näytä palautteet" CausesValidation="False" OnClick="btnNaytaPalautteet_Click" />
    <br/>
    

</asp:Content>

