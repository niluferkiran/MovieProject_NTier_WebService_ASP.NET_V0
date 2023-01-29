﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KarsilamaSayfasi.aspx.cs" Inherits="WebApplication1.KarsilamaSayfasi" %>

<!DOCTYPE html>

<html lang="en" class="h-100">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Olmuyor Cover</title>
    <link href="CSS/cover.css" rel="stylesheet" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/cover/">
    <script language="javascript" type="text/javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }
    </style>

    <link href="bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="CSS/cover.css" rel="stylesheet" />
</head>
<body class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <form id="form1" runat="server">

    
            <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
                <header class="mb-auto">
                    <div>
                        <h3 class="float-md-start mb-0">Cover</h3>
                        <nav class="nav nav-masthead justify-content-center float-md-end">
                            <a class="nav-link fw-bold py-1 px-0 active" aria-current="page" href="#">Home</a>
                            <a class="nav-link fw-bold py-1 px-0" href="#">Features</a>
                            <a class="nav-link fw-bold py-1 px-0" href="#">Contact</a>
                        </nav>
                    </div>
                </header>

                <main class="px-3">
                    <h1>En iyi film izleme sitesi.</h1>
                    <p class="lead">Hadi bakalım görelim.</p>
                    <p class="lead">
                        <a href="WebForm1.aspx" class="btn btn-lg btn-light fw-bold border-white bg-white">Giriş Yap</a>
                        <a href="#" class="btn btn-lg btn-light fw-bold border-white bg-white">Giriş Yap</a>
                    </p>
                </main>

                <footer class="mt-auto text-white-50">
                    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
                </footer>
            </div>
        
    </form>
</body>
</html>
