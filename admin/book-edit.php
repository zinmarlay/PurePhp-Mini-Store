<?php 
	include("confs/config.php");
	include("confs/auth.php");
	$id=$_GET['id'];
	$result=mysqli_query($conn, "SELECT * FROM books WHERE id=$id");
	$row=mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Books</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>Edit Books</h1>
	<?php include("menu.php");?>
	<form action="book-update.php" method="post" enctype="multipart/form-data">
		
		<input type="hidden" name="id" value="<?php echo $row['id'];?>">
		<label for="title">Book Title</label>
		<input type="text" name="title" value="<?php echo $row['title'];?>">

		<label for="author">Author</label>
		<input type="text" name="author" value="<?php echo $row['author'];?>">

		<label for="summary">Summary</label>
		<textarea name="summary"><?php echo $row['summary']; ?></textarea>

		<label for="price">Price</label>
		<input type="text" name="price" value="<?php echo $row['price']; ?>">

		<label for="categories">Category</label>

		<select name="category_id">
			<option value="0">-- Choose Category --</option>
			<?php 
				$categories=mysqli_query($conn,"SELECT * FROM categories");
				while($cat=mysqli_fetch_assoc($categories)):?>
					<option value="<?php echo $cat['id'];?>"
						<?php if($cat['id']==$row['category_id']) echo "selected"?>>
						<?php echo $cat['name'];?> 
					</option>
		<?php endwhile; ?>
		</select>
		<br><br>

		<img src="covers/<?php echo $row['cover'];?>" alt="" height="150">
		<label for="cover">Change Cover</label>
		<input type="file" name="cover">
		<br><br>

		<input type="submit" value="Update Books">
		
	</form>
</body>
</html>