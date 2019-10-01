<?php 
	include("confs/config.php");
	include("confs/auth.php");
	
	$sql="SELECT * FROM categories";
	$result=mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>New Book</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>New Book</h1>
	<?php include("menu.php");?>
	<form action="book-add.php" method="post" enctype="multipart/form-data">
		<label for="title">Book Title</label>
		<input type="text" name="title">

		<label for="author">Author</label>
		<input type="text" name="author">

		<label for="summary">Summary</label>
		<textarea name="summary"></textarea>

		<label for="price">Price</label>
		<input type="text" name="price">

		<label for="categories">Category</label>
		<select name="category_id">
			<option value="0">-- Choose Category --</option>
			<?php while($row=mysqli_fetch_assoc($result)):?>
			<option value="<?php echo $row['id'];?>"><?php echo $row['name'];?></option>
		<?php endwhile; ?>
		</select>

		<label for="cover">Cover</label>
		<input type="file" name="cover">
		<br><br>

		<input type="submit" value="Add Book">
		

	</form>
</body>
</html>