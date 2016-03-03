
<?php 
 session_start();
 ob_start();
 mysql_connect("localhost","root","");
 mysql_select_db("dtdm");
?>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <h3>Shopping cart</h3>
        <table border='1'>
    <tr>
	<td>ID</td> 
        <td>ten san pham</td>

                   
    </tr>
        <?php
        $sql="SELECT `id_loai`,`tenloai` FROM loaisanpham";
        $query=  mysql_query($sql);
        while($row =  mysql_fetch_array($query)){
        ?>
    <tr>
	<td><?php echo $row['id_loai'];?></td> 
        <td><?php echo $row['tenloai'];?></td>
    </tr>
        <?php } ?>
    </table>
    </body>
</html>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <form action="xoasp.php" method="post">
            <h2> ID can xoa </h2><input type="text" name="id"></input>
            <input type="submit" name="xoa" value="xoa"></input>
        </form>
    </body>
</html>