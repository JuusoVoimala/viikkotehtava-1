<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_vk07.aspx.cs" Inherits="F6646_vk07" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:GridView
        ID="gvAutot"
        runat="server"
        AllowSorting="True"
        AllowPaging="True"
        OnSorting="gvAutot_Sorting"
        OnPageIndexChanging="gvAutot_PageIndexChanging"
        OnRowCancelingEdit="gvAutot_RowCancelingEdit"
        OnRowDeleting="gvAutot_RowDeleting"
        OnRowEditing="gvAutot_RowEditing"
        OnRowUpdating="gvAutot_RowUpdating" >
    </asp:GridView>
    <br />

    <asp:Button ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" Text="Lisää uusi auto" />
    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Tallenna muutokset" />
    <br />

    
    <asp:Login
        ID="LoginWindow"
        runat="server"
        OnAuthenticate="LoginWindow_Authenticate"
        OnLoginError="LoginWindow_LoginError"
        RememberMeText="Remember me."
        OnLoggedIn="LoginWindow_LoggedIn" >
    </asp:Login>
    <br />

    <asp:Label ID="lblInfo" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />



</asp:Content>

