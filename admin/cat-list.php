<?php include("confs/auth.php"); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Store - Category List</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>Category Lists</h1>
	<?php include("menu.php");?>
	<?php 
		include("confs/config.php");
		$result=mysqli_query($conn,"SELECT * FROM categories ORDER BY id DESC LIMIT 10");
	 ?>
	 <ul class="list">
	 	<?php while($row=mysqli_fetch_assoc($result)):?>
	 	<li title="<?php echo $row['remark'];?>">
	 		<a href="cat-del.php?id=<?php echo $row['id'];?>">Del</a>
	 		<a href="cat-edit.php?id=<?php echo $row['id'];?>">Edit</a>
	 		<?php echo $row['name'];?>
	 	</li>
	 <?php endwhile; ?>
	 </ul>
	 <a href="cat-new.php" class="new">New Category</a>
</body>
</html>