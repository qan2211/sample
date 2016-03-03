<?php
$dsn="mysql:host=localhost;dbname=dtdm";
$username="root";
$password="";

$db=new PDO($dsn,$username,$password);

if (isset( $_POST['id'])){
 $ma=$_POST['id'];
 $sql="delete from loaisanpham where id_loai='$ma'";
 //echo $sql;
 $db->exec($sql);
echo 'Da xoa';

}
?>
<br><a href="index.php">Ve trang quan tri</a>