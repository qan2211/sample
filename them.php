<?php
//Ket noi toi csdl
//$dsn ="mysql:host=localhost;dbname=qlsv";
//$db = new PDO($dsn);
$dsn='mysql:host=localhost;dbname=dtdm';
$username='root';
$password='';
$db= new PDO($dsn, $username, $password);

//Lay gia tri truyen tu phuong thuc POST luu vao cac bien tuong ung
$ID = $_POST['id'];
$Name = $_POST['name'];


//Thuc thi cau truy van du lieu
$query = "INSERT INTO loaisanpham VALUES ('".$ID."','".$Name."')";
$result = $db->exec($query);
//$result = $db->exec($query);
echo ' Đã thêm '. "$result" .'dòng vào cơ sở dữ liệu.';



//$sql2="INSERT INTO sinhvien VALUES (NULL, '".$hosv."', '".$tensv."','".$malop."','".$ngaysinh."','".$phai ."', '".$dc."', '".$hinh."')"; 
//$query2=mysql_query($sql2); 
//echo "Da them thanh vien moi thanh cong"; 
?>
<a href="index.php">Ve trang chu</a>