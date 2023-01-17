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
            border: 2px solid #E94B3CFF;
            border-radius: 5px;
            padding: 20px;
        }

            .container:hover {
                box-shadow: 0px 5px 10px 5px #E94B3CFF;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <img src="images/logomod2232rn.JPG" />
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
                <%-- <label for="email">Email:</label>--%>
                <%--<asp:TextBox ID="txtKullaniciEmail" runat="server" CssClass="form-control"></asp:TextBox>--%>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="" />
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>
                <%--                <label for="pwd">Password:</label>--%>
                <%--<asp:TextBox ID="txtSifre" runat="server" CssClass="form-control"></asp:TextBox>--%>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" value="" />
            </div>
            <div class="form-group form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="remember" />
                    Remember me
                </label>
                <asp:LinkButton ID="lnkSifremiUnuttum" runat="server"><a href="404.aspx">Şifremi unuttum</a></asp:LinkButton>
                <br />
                Üye değil misin? 
            <asp:LinkButton ID="LinkButton1" runat="server">Üye ol</asp:LinkButton>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Giriş" BorderStyle="None" OnClick="Button1_Click" CommandName="Giris" CommandArgument='<%#Eval("KullaniciId") %>' />

            <%--<button type="submit" class="btn btn-primary"><a href="KullaniciAnasayfa.aspx">Giriş</a></button>--%>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
