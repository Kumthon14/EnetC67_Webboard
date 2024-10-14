<?php
    $cat = $_POST['category'];
    $topic = $_POST['topic'];
    $content = $_POST['content'];
    $id = $_GET['id'];

    $conn = new PDO("mysql:host=localhost;dbname=webboard;charset=utf8", "root", "");
    $sql = "UPDATE post SET title=$topic,content=$content WHERE id=$id";
    $sql1 = "UPDATE post SET cat_id="
?>