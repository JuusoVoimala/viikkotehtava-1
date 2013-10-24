<%@ Page Title="LevykauppaX" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_vk05.aspx.cs" Inherits="F6646_vk05" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <asp:XmlDataSource ID="XmlDataSource" runat="server" DataFile="~/App_Data/LevykauppaX.xml" XPath="Records/genre/record"></asp:XmlDataSource>
            <table>
                <asp:Repeater ID="Repeater" runat="server" DataSourceID="XmlDataSource">
                    <ItemTemplate>
                        <tr>
                        <td>
                            <img height="150" src="images/<%# XPath("@ISBN") %>.jpg" />
                        </td>

                        <td>
                            <%# XPath("@Artist") %> : <%# XPath("@Title") %> <br />
                            ISBN: <a href="F6646_vk05a.aspx?ISBN=<%# XPath("@ISBN") %>"><%# XPath("@ISBN") %></a>   <br />
                            Hinta: <%# XPath("@Price") %>€ <br /> <br />
                        </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div> 



</asp:Content>

