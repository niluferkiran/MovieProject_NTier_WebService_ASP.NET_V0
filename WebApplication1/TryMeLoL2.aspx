<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryMeLoL2.aspx.cs" Inherits="WebApplication1.TryMeLoL2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="TryMeLoL.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid"></div>

    <div class="warning"></div>

    <div class="base">
        <button id="activate">
            <span></span>
        </button>
    </div>

    <div class="box opened" id="cover">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <span></span><span></span>
    </div>

    <div class="hinges"></div>

    <div class="text">
        SELF-&thinsp;DESTRUCT
    </div>

    <div id="panel">
        <div id="msg">DEVICE SELF-DESTRUCTION </div>
        <div id="time">9</div>
        <span id="abort">ABORT</span>
        <span id="detonate">DETONATE</span>
    </div>

    <div id="turn-off"></div>
    <div id="closing"></div>

    <div id="restart">
        <button id="reload"></button>
    </div>

    <div id="mute"></div>


    <audio id="alarm">
        <source src="https://cdn.josetxu.com/audio/self-destruct-count.mp3" type="audio/mpeg" />
    </audio>
    <script src="TryMeLoL.js"></script>
    </form>
</body>
</html>
