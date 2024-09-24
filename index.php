<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Webboard</title>
</head>

<body>
    <div class="container-lg mt-3">
        <h1 style="text-align: center;" class="mt-3">Webboard KakKak</h1>
        
        <?php
            include "nav.php";
        ?>

        <br>

        <span class="dropdown">
            หมวดหมู่:
            <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                --ทั้งหมด--
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">ทั้งหมด</a></li>
                <li><a class="dropdown-item" href="#">เรื่องเรียน</a></li>
                <li><a class="dropdown-item" href="#">เรื่องทั่วไป</a></li>
            </ul>
        </span>
        
        

        <?php
        if (isset($_SESSION['id'])) {
            echo "<button type='button' class='btn btn-success' style='float:right;'><a class='link-light link-offset-2 link-underline link-underline-opacity-0' href='newpost.php'><i class='bi bi-plus'></i>สร้างกระทู้ใหม่</a></button>";
        }
        ?>

        <br>
        <br>

        <table class="table table-striped">
            <tbody>
                <?php
                    if (!isset($_SESSION['id'])) {
                        for ($i = 1; $i <= 10; $i++) {
                            echo "<tr><td><a href='post.php?id=$i' class='link-underline link-underline-opacity-0'>กระทู้ที่ $i</a></td></tr>";
                        }
                    }else {
                        if ($_SESSION['username'] == 'admin') {
                            for ($i = 1; $i <= 10; $i++) {
                                echo "<tr>
                                        <td>
                                            <a href='post.php?id=$i' class='link-underline link-underline-opacity-0'>กระทู้ที่ $i</a>
                                            <button type='button' class='btn btn-danger btn-sm' style='float:right;'><a class='link-light link-offset-2 link-underline link-underline-opacity-0' href='delete.php?id=$i'><i class='bi bi-trash'></i></a></button>
                                        </td>
                                    </tr>";
                            }
                        } else {
                            for ($i = 1; $i <= 10; $i++) {
                                echo "<tr><td><a href='post.php?id=$i' class='link-underline link-underline-opacity-0'>กระทู้ที่ $i</a></td></tr>";
                            }
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>