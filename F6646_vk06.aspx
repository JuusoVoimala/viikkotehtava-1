<%@ Page Title="SM-liigan outojen olioitten seikkailut Webissä" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_vk06.aspx.cs" Inherits="F6646_vk06" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <h1>Listaa pelaajia</h1>
        Valitse seura:
        <br/>
        <asp:ListBox ID="lbxSeura" runat="server" DataSourceID="SqlDataSource5" DataTextField="seura" DataValueField="seura" OnTextChanged="lbxSeura_TextChanged" AutoPostBack="True"></asp:ListBox>
        <br/>
        Valitse pelipaikka:
        <br/>
        <asp:ListBox ID="lbxPelipaikka" runat="server" DataSourceID="SqlDataSource3" DataTextField="pelipaikka" DataValueField="pelipaikka" OnTextChanged="lbxPelipaikka_TextChanged" AutoPostBack="True"></asp:ListBox>
        <br/>

        <br/>
        <h1>Lisää uusi pelaaja</h1>
        Etunimi:
        <asp:TextBox ID="tbxEtu" runat="server"></asp:TextBox>
        <br/>
        Sukunimi:
        <asp:TextBox ID="tbxSuku" runat="server"></asp:TextBox>
        <br/>
        Seura:
        <asp:DropDownList ID="ddlSeura" runat="server" DataSourceID="SqlDataSource5" DataTextField="seura" DataValueField="seura"></asp:DropDownList>
        <br/>
        Pelipaikka:
        <asp:DropDownList ID="ddlPelipaikka" runat="server" DataSourceID="SqlDataSource3" DataTextField="pelipaikka" DataValueField="pelipaikka"></asp:DropDownList>
        <br/>
        <asp:Button ID="btnLisaa" runat="server" Text="Lisää" OnClick="btnLisaa_Click" />
        <br/>
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="sukunimi" HeaderText="sukunimi" SortExpression="sukunimi" />
                <asp:BoundField DataField="etunimi" HeaderText="etunimi" SortExpression="etunimi" />
                <asp:BoundField DataField="seura" HeaderText="seura" SortExpression="seura" />
                <asp:BoundField DataField="nro" HeaderText="nro" SortExpression="nro" />
                <asp:BoundField DataField="pelipaikka" HeaderText="pelipaikka" SortExpression="pelipaikka" />
                <asp:BoundField DataField="ottelut" HeaderText="ottelut" SortExpression="ottelut" />
                <asp:BoundField DataField="maalit" HeaderText="maalit" SortExpression="maalit" />
                <asp:BoundField DataField="syötöt" HeaderText="syötöt" SortExpression="syötöt" />
                <asp:BoundField DataField="pisteet" HeaderText="pisteet" SortExpression="pisteet" />
                <asp:BoundField DataField="plus" HeaderText="plus" SortExpression="plus" />
                <asp:BoundField DataField="miinus" HeaderText="miinus" SortExpression="miinus" />
                <asp:BoundField DataField="plusmiinus" HeaderText="plusmiinus" SortExpression="plusmiinus" />
                <asp:BoundField DataField="jäähyt" HeaderText="jäähyt" SortExpression="jäähyt" />
                <asp:BoundField DataField="peliaika" HeaderText="peliaika" SortExpression="peliaika" />
            </Columns>
        </asp:GridView>

        <!-- Valitun seuran kaikki pelaajat GridViewiin sukunimen mukaiseen aakkosjärjestykseen -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Pisteet]  WHERE [seura] = ? ORDER BY [sukunimi]">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbxSeura" PropertyName="SelectedValue"
                    Name="seura" Type="String" DefaultValue=""/>
            </SelectParameters>
        </asp:SqlDataSource>

        <!-- GridViewiin kaikki mahdollinen Pisteet-taulusta sukunimen mukaan aakkosjärjestykseen -->
        <!-- Lisätään pelaaja kantaan ennetuilla arvoilla -->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Pisteet] ORDER BY [sukunimi]"
            DeleteCommand="DELETE FROM [Pisteet] WHERE (([id] = ?) OR ([id] IS NULL AND ? IS NULL))" 
            UpdateCommand="UPDATE Pisteet SET sukunimi=@sukunimi,etunimi=@etunimi,seura=@seura,
                nro=@nro,pelipaikka=@pelipaikka,ottelut=@ottelut,maalit=@maalit,syötöt=@syötöt,
                pisteet=@pisteet,plus=@plus,miinus=@miinus,plusmiinus=@plusmiinus,jäähyt=@jäähyt,
                peliaika=@peliaika WHERE id=@id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int16" />
            </DeleteParameters>
        </asp:SqlDataSource>

        <!-- Pelipaikat niin ettei tule dublikaatteja -->
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT DISTINCT pelipaikka FROM [Pisteet]">
        </asp:SqlDataSource>

        <!-- Valitun pelipaikan pelaajat GridViewiin pisteiden mukaiseen järjestykseen -->
        <!-- Päivitetään kantaan pelaaja uusilla annetuilla tiedoilla -->
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Pisteet]  WHERE [pelipaikka] = ? ORDER BY [pisteet] DESC"
            DeleteCommand="DELETE FROM [Pisteet] WHERE (([id] = ?) OR ([id] IS NULL AND ? IS NULL))" 
            UpdateCommand="UPDATE Pisteet SET sukunimi=@sukunimi,etunimi=@etunimi,seura=@seura,
                nro=@nro,pelipaikka=@pelipaikka,ottelut=@ottelut,maalit=@maalit,syötöt=@syötöt,
                pisteet=@pisteet,plus=@plus,miinus=@miinus,plusmiinus=@plusmiinus,jäähyt=@jäähyt,
                peliaika=@peliaika WHERE id=@id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int16" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lbxPelipaikka" PropertyName="SelectedValue"
                    Name="pelipaikka" Type="String" DefaultValue=""/>
            </SelectParameters>
        </asp:SqlDataSource>

        <!-- Seurat niin ettei tule dublikaatteja -->
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT DISTINCT seura FROM [Pisteet]">
        </asp:SqlDataSource>

    </div>



</asp:Content>

