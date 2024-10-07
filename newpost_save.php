<?php
    session_start();
    $category = $_POST['category'];
    $topic = $_POST['topic'];
    $comment = $_POST['comment'];

    $conn = new PDO("mysql:host=localhost;dbname=webboard;charset=utf8","root","");

    $user = $_SESSION['username'];

    $cat_query = $conn->query("SELECT id FROM category WHERE name = '$category'");
    $cat_data = $cat_query->fetch(PDO::FETCH_ASSOC);
    $cat = $cat_data["id"];

    $id_query =  $conn->query("SELECT id FROM user WHERE login = '$user'");
    $id_data = $id_query->fetch(PDO::FETCH_ASSOC);
    $id = $id_data["id"];

    $sql = "INSERT INTO post (title,content,post_date,cat_id,user_id) VALUES ('$topic','$comment',Now(),'$cat','$id')";

    $conn->exec($sql);
    $conn = null;
    header("location:index.php");
?>