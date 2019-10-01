<?php include("confs/auth.php"); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Store - Category</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>New Category</h1>
	<?php include("menu.php");?>
	<form action="cat-add.php" method="post">
		<label for="name">Category Name</label>
		<input type="text" name="name" id="name">

		<label for="remark">Remark</label>
		<textarea name="remark" id="remark"></textarea>

		<br><br>

		<input type="submit" value="Add Category">
	</form>
</body>
</html>