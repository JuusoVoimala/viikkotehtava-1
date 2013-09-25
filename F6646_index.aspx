<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F6646_index.aspx.cs" Inherits="F6646_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            TÄMÄ EI OLE ENÄÄ AJANTASALLA! KÄYTÄ
            <asp:HyperLink ID="hyperlink4" runat="server" NavigateUrl="~/F6646_indexMP.aspx">F6646_indexMP.aspx </asp:HyperLink>
            Siellä uusimmat linkit tehtäviin!!!
        </h1>
        <br/>
        <h1>Viikon 37 tuntiharkat</h1>
        <div>
            <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Tehtävä jeejeejee</asp:HyperLink>
        </div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/F6646_LocalDBDemo.aspx">KissaLeffat</asp:HyperLink>

        <h1>Tuntitehtävä vko 38</h1>
        <div>
            <asp:HyperLink ID="hyperlink3" runat="server" NavigateUrl="~/F6646_age.aspx">Päivämäärähässäkkä</asp:HyperLink>
        </div>
        <h1>Viikkotehtävät 1 ja 2</h1>
        <asp:Textbox ID="txtName" runat="server" Text="Tähän nimesi" ></asp:Textbox>
        <asp:Button ID="Buutton1" runat="server" Text="Välitä parametrina" />
        <asp:Button ID="Buutton2" runat="server" Text="Välitä Sessioiniin" />
        <asp:Button ID="Buutton3" runat="server" Text="Välitä Cookieen" />

    </form>
</body>
</html>
