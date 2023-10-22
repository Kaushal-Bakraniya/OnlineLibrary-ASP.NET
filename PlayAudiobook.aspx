<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayAudiobook.aspx.cs" Inherits="ReaderZ_LMS.PlayAudiobook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Reader Z - LMS</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/playsong.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
</head>
<body>
    <asp:DataList ID="DataList1" runat="server">
        
    <div class="login logbg">
        <audio src="" id="audio" autoplay loop></audio>
        <center>
            <img src="<?php echo $cover; ?>">
            <h1 style="display:block"><?php echo $songname; ?></h1>
            <h3>By <?php echo $artist; ?></h3>

            <div class="slider_container">
                <div class="current-time" id="current">00:00</div>
                <input id="seekslider" type="range" min="0" max="100" value="0" class="seek_slider" onchange="seekTo()">
                <div class="total-duration" id="total">00:00</div>
            </div>

            <span><a href="PlaySong.php?ID=<?php echo $_REQUEST["ID"]-1;?>&req=down"><i
                        class="bi bi-arrow-left-circle-fill"></i></a></span>
            <span onclick="playPause()" id="btn"><i class="bi bi-pause-circle-fill"></i></span>
            <span><a href="PlaySong.php?ID=<?php echo $_REQUEST["ID"]+1;?>&req=up"><i
                        class="bi bi-arrow-right-circle-fill"></i></span>
            <a href="Songs.php" style="display:block;margin-top:5%">Back To Home</a><br><br>
                </center>
    </div>
    </asp:DataList>
    
    <script src="assets/js/playsong.js"></script>
</body>
</html>
