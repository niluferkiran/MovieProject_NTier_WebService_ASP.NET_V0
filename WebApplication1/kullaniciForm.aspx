<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kullaniciForm.aspx.cs" Inherits="WebApplication1.kullaniciForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
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
                        <asp:LinkButton ID="lnkBtnSil" runat="server" CommandName="Sil" CommandArgument='<%#Eval("KullaniciId")%>'>Sil</asp:LinkButton>
                    </ItemTemplate>
                <%--    <EditItemTemplate>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="BtnEdit" runat="server" Text="Düzenle" CommandName="Edit" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" CommandName="Update" />
                        <asp:Button ID="BtnCancel" runat="server" Text="Düzenle" CommandName="Cancel" />

                    </EditItemTemplate>--%>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>








    <%--<asp:Repeater ID="rptKullanicilar" runat="server">
        <HeaderTemplate>
            <thead>
                <tr>
                    <th class="head0">Kullanıcı Id</th>
                    <th class="head1">Kullanıcı Adı</th>
                    <th class="head0">Kullanıcı Soyadı</th>
                    <th class="head1">Ulaşım</th>
                    <th class="head0">Ülke</th>
                    <th class="head1">Ulaşım</th>
                    <th class="head0">Ülke</th>
                    <th class="head1">Ulaşım</th>
                    <th class="head0">Ülke</th>
                </tr>
            </thead>
            <tbody>
                         <tr>
        </HeaderTemplate>
       <ItemTemplate>
            <td><%#Eval("KullaniciId") %></td>
                    <td><%#Eval("KullaniciAdi") %></td>
                    <td><%#Eval("KullaniciSoyadi") %></td>
                    <td><%#Eval("Sifre") %></td>
                    <td><%#Eval("RolId") %></td>
                    <td><%#Eval("TCKN") %></td>
                    <td><%#Eval("KullaniciMail") %></td>
                    <td><%#Eval("DogumTarihi") %></td>
                    <td><%#Eval("Cinsiyet") %></td>
                    <td><%#Eval("isDeleted") %></td>
       </ItemTemplate>
        <FooterTemplate>
            </tr>
            </tbody>
            <tfoot>
                <tr>
                    <th class="head0">Rendering engine</th>
                    <th class="head1">Browser</th>
                    <th class="head0">Platform(s)</th>
                    <th class="head1">Engine version</th>
                    <th class="head0">CSS grade</th>
                </tr>
            </tfoot>
        </FooterTemplate>
    </asp:Repeater>--%>


</asp:Content>
