﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kullaniciForm.aspx.cs" Inherits="WebApplication1.kullaniciForm" %>

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
        Kullanıcılar
    </div>
    <div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Kullanıcı Ekle</button>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting">
            <%--AutoGenerateColumns="false" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"  OnRowDeleting="GridView1_RowDeleting"--%>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblKullaniciId" runat="server" Text='<%#Eval("KullaniciId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kullanıcı Adı">
                    <ItemTemplate>
                        <asp:Label ID="lblKullaniciAdi" runat="server" Text='<%#Eval("KullaniciAdi")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtKullaniciAdi" MaxLength="15" runat="server" Text='<%#Eval("KullaniciAdi")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kullanıcı Soyadı">
                    <ItemTemplate>
                        <asp:Label ID="lblKullaniciSoyadi" runat="server" Text='<%#Eval("KullaniciSoyadi")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtKullaniciSoyadi" MaxLength="15" runat="server" Text='<%#Eval("KullaniciSoyadi")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Şifre">
                    <ItemTemplate>
                        <asp:Label ID="lblSifre" runat="server" Text='<%#Eval("Sifre")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtSifre" MaxLength="15" runat="server" Text='<%#Eval("Sifre")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="RolId">
                    <ItemTemplate>
                        <asp:Label ID="lblRolId" runat="server" Text='<%#Eval("RolId")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtRolId" MaxLength="15" runat="server" Text='<%#Eval("RolId")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="TCKN">
                    <ItemTemplate>
                        <asp:Label ID="lblTCKN" runat="server" Text='<%#Eval("TCKN")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTCKN" MaxLength="15" runat="server" Text='<%#Eval("TCKN")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DogumTarihi">
                    <ItemTemplate>
                        <asp:Label ID="lblDogumTarihi" runat="server" Text='<%#Eval("DogumTarihi")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDogumTarihi" MaxLength="15" runat="server" Text='<%#Eval("DogumTarihi")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Cinsiyet">
                    <ItemTemplate>
                        <asp:Label ID="lblCinsiyet" runat="server" Text='<%#Eval("Cinsiyet")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCinsiyet" MaxLength="15" runat="server" Text='<%#Eval("Cinsiyet")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="isDeleted">
                    <ItemTemplate>
                        <asp:Label ID="lblisDeleted" runat="server" Text='<%#Eval("isDeleted")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtisDeleted" MaxLength="15" runat="server" Text='<%#Eval("isDeleted")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="BtnDelete" runat="server" Text="Sil" CommandName="Delete" CommandArgument='<%#Eval("KullaniciId")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="BtnEdit" runat="server" Text="Düzenle" CommandName="Edit" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" CommandName="Update" />
                        <asp:Button ID="BtnCancel" runat="server" Text="Vazgeç" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>




    <div>
        <div id="exampleModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Kullanıcı Ekleme Formu</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <section class="section">
                        <div class="section-header">
                        </div>
                        <div class="section-body">
                            <div>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <b>Kullanıcı Adı : </b>
                                            <br />
                                            <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <b>Kullanıcı Soyadı : </b>
                                            <br />
                                            <asp:TextBox ID="txtSoyadi" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <b>Şifre : </b>
                                            <br />
                                            <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <b>Rol</b><br />
                                            <asp:DropDownList ID="dlRol" runat="server" AutoPostBack="false" Width="300">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="1">Yetişkin Kullanıcı</asp:ListItem>
                                                <asp:ListItem Value="2">Çocuk Kullanıcı</asp:ListItem>
                                                <asp:ListItem Value="3">Editör</asp:ListItem>
                                                <asp:ListItem Value="4">Admin</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <b>TCKN : </b>
                                            <br />
                                            <asp:TextBox ID="txttc" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <b>Mail : </b>
                                            <br />
                                            <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <b>Doğum Tarihi : </b>
                                            <br />
                                            <asp:TextBox ID="txtdate" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <b>Cinsiyet : </b>
                                            <br />
                                            <br />
                                            <asp:RadioButton ID="cinsK" GroupName="Cins" runat="server" Text="Kadın" />
                                            <br />
                                            <asp:RadioButton ID="cinsE" GroupName="Cins" runat="server" Text="Erkek" />

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>

                    <div class="modal-footer">
                         <%--OnClick="btnKaydet_Click"--%> 
                        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet"/>
                        <asp:Button ID="btnKapat" runat="server" Text="Vazgeç" data-dismiss="modal" /><br />
                        <br />

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>
