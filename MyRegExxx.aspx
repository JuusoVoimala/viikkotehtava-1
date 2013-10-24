<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyRegExxx.aspx.cs" Inherits="MyRegExxx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <h1>Regular expression testi</h1>
        <h2>Kirjoita oheiseen textboxiin testattava teksti</h2>

        Ole hyvä ja anna nimesi:<br/>
        <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
        <asp:Button ID="btnName" runat="server" Text="Validate" OnClick="btnName_Click"/>
        <br/>
        <asp:RegularExpressionValidator ID="regexpName" runat="server"     
                                    ErrorMessage="Ei kelpaa!!!" 
                                    ControlToValidate="tbxName"     
                                    ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />
        <br/>

        Ja tähän sähköposti:<br/>
        <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox>
        <asp:Button ID="btnEmail" runat="server" Text="Validate" OnClick="btnEmail_Click"/>
        <br/>
        <asp:RegularExpressionValidator ID="regexpEmail" runat="server"     
                                    ErrorMessage="Ei kelpaa!!!" 
                                    ControlToValidate="tbxEmail"     
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

        <h2>Sivun teeman vaihto</h2>
        <asp:Image ID="image1" SkinID="CompanyLogo" runat="server" />
        <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/MyRegExxx.aspx?theme=Kaunis"> Kaunis-teema</asp:HyperLink>
        <asp:HyperLink ID="hyperlink2" runat="server" NavigateUrl="~/MyRegExxx.aspx?theme=Ruma"> Ruma-teema</asp:HyperLink>
    </div>


</asp:Content>

