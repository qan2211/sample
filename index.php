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

    </table>
        <form action="them.php" method="post">
            <h2> ID </h2><input type="text" name="id"></input>
            <h2> Name </h2><input type="text" name="name"></input>
                  <input type="submit" name="ok" value="OK"></input>
        </form>
        
        <hr><br><a href="xoa.php">Xoa san pham</a>
        <a href="sua.php">Sua san pham</a>
    </body>
</html>
