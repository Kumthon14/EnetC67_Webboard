<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1 style="text-align: center;">Webboard KakKak</h1>
    <hr>
    <?php 
        $login = $_POST['login'];
        $password = $_POST['pwd'];

        if($login == "admin" && $password == "ad1234"){
            echo "<center>
                    <div>ยินดีต้อนรับคุณ ADMIN</div>
                </center>";
        }
        elseif($login == "member" && $password == "mem1234"){
            echo "<center>
                    <div>ยินดีต้อนรับคุณ MEMBER</div>
                </center>";
        }
        else{
            echo "<center>
                    <div>ชื่อบัญชีหรือรหัสผ่านไม่ถูกต้อง</div>
                </center>";
        }
    ?>
    <div align="center"><a href="index.php">กลับไปหน้าหลัก</a></div>
</body>
</html>