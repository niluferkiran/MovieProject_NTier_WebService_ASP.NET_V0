<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="filmIcerik.aspx.cs" Inherits="WebApplication1.filmIcerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .main {
            margin: 120px 150px;
            border-radius: 5px;
            text-align: center;
            height: auto;
        }

        #midDiv {
            border: 10px solid red;
            margin: 10px 0px;
            height: auto;
            display: flex;
        }
    </style>
    <div class="main">

        <div class="midDiv">
            <asp:Repeater ID="rptFilmler" runat="server">
                <HeaderTemplate>
                    <article>
                        <section>
                </HeaderTemplate>
                <ItemTemplate>
                    <iframe width="560"
                    height="315"
                    src='<%#Eval("Video") %>'
                    frameborder="0"
                    allowfullscreen="" ng-show="showvideo"></iframe>
                    <br />
                    <span><%#Eval("FilmAdi") %></span>
                    <br />
                    <span><%#Eval("Konusu") %></span>
                </ItemTemplate>
                <FooterTemplate>
                    </section>
            </article>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
