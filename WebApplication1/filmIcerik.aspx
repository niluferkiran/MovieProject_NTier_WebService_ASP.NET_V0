<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="filmIcerik.aspx.cs" Inherits="WebApplication1.filmIcerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div>
            <asp:Repeater ID="rptFilmler" runat="server">
                <ItemTemplate>
                    <span><%#Eval("FilmAdi") %></span>
                    <span><%#Eval("Konusu") %></span>
                </ItemTemplate>
            </asp:Repeater>

        </div>

</asp:Content>
