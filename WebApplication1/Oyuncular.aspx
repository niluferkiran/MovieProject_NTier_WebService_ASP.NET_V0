<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Oyuncular.aspx.cs" Inherits="WebApplication1.Oyuncular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        #ekle {
            text-align: start;
        }

        #baslik {
            text-align: center;
            position: unset;
        }

        .btnEkle {
            height: 30px;
            font-weight: bold;
            font-size: 12px;
            text-shadow: none;
            min-width: 100px;
            border-radius: 50px;
            line-height: 15px;
            background-color: blue;
            color: aliceblue;
        }
    </style>

    <div id="baslik">
        Oyuncular
    </div>
    <div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Oyuncu Ekle</button>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
