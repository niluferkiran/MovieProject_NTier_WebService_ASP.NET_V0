<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MovieBox</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />

    <style type="text/css">
        html, body {
            margin: 0px;
            height: 100%;
            background-color: black;
            /*#2d2926FF*/
        }
        h1{
            color:aliceblue;
            justify-content:center;
            display:flex;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #lnkSifremiUnuttum {
            padding-right: 20px;
        }

        .container {
            height: 500px;
            width: 400px;
            border: 2px solid #9B04FF;
            border-radius: 5px;
            padding: 20px;
        }

            .container:hover {
                box-shadow: 0px 5px 10px 5px #9B04FF;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
               <h1>LOGIN</h1>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="" />
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" value="" />
            </div>
            <div class="form-group form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="remember" color="aliceblue"/>
                    Remember me
                </label>
                <br />
                <asp:LinkButton ID="lnkSifremiUnuttum" runat="server"><a href="404.aspx">Şifremi unuttum</a></asp:LinkButton>
                  <br />
                    Üye değil misin?
                <linkbutton type="button" data-toggle="modal" data-target="#exampleModal" class="alert-primary">example</linkbutton>
                <%--<asp:LinkButton ID="LinkButton1" runat="server">Üye ol</asp:LinkButton>--%>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Giriş" BorderStyle="None" OnClick="Button1_Click" CommandName="Giris" CommandArgument='<%#Eval("KullaniciId") %>' />

            <%--<button type="submit" class="btn btn-primary"><a href="KullaniciAnasayfa.aspx">Giriş</a></button>--%>
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
                                                <asp:RadioButton ID="cinsK" GroupName="Cins" runat="server" Text="K" />
                                                <br />
                                                <asp:RadioButton ID="cinsE" GroupName="Cins" runat="server" Text="E" />

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </section>

                        <div class="modal-footer">
                            <%--OnClick="btnKaydet_Click"--%>
                            <%--         <asp:Button ID="bTNKaydet" runat="server" Text="Kaydet" OnClick="bTNKaydet_Click" />--%>
                            <asp:Button ID="btnKapat" runat="server" Text="Vazgeç" data-dismiss="modal" /><br />
                            <br />

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
