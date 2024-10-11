<?php
    session_start();
    session_destroy();
    header(header: "location:index.php?id=0");
    die();
?>