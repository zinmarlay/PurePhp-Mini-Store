<?php 
	include("confs/config.php");
	include("confs/auth.php");
	$sql="
	SELECT books.*,categories.name 
	FROM books LEFT JOIN categories
	ON books.category_id=categories.id
	ORDER BY books.created_date DESC";
	$result=mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Book List</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>Books List</h1>
	<?php include("menu.php");?>
	<ul class="list">
		<?php while($row=mysqli_fetch_assoc($result)):?>

		<li>
			<img src="covers/<?php echo $row['cover'];?>" alt="" align="right" height="140">
			<b><?php echo $row['title'];?></b>
			<i>By <?php echo $row['author'];?></i>
			<small>(in <?php echo $row['name'];?> )</small>
			<span>$ <?php echo $row['price'];?></span>
			<div><?php echo $row['summary'];?></div>

			[<a href="book-del.php?id=<?php echo $row['id'];?>" class="del">Del</a>]
			[<a href="book-edit.php?id=<?php echo $row['id'];?>" class="edit">Edit</a>]
		</li>

	<?php endwhile; ?>
	</ul>

	<a href="book-new.php" class="new">New Book</a>
</body>
</html>