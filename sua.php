
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
          <form action="suasp.php" method="post">
            <h2> ID </h2><input type="text" name="id"></input>
            <h2> Name </h2><input type="text" name="name"></input>
            <input type="submit" name="sua" value="Sua"></input>
        </form>
    </body>
</html>
