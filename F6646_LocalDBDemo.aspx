<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F6646_LocalDBDemo.aspx.cs" Inherits="F6646_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Juuson paikalliset kissavideot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tässäpä hauskoja kissaleffoja! (oliokokoelma)</h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click"/>
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate><%#Eval("Title") %> ohjannut <%#Eval("Director") %></ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
