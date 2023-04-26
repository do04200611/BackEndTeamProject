<!DOCTYPE html>
<html>
<head>
	<title>My Page</title>
	<style>
		.container {
			width: 80%;
			margin: 0 auto;
			padding: 20px;
			background-color: #f2f2f2;
		}
		.row {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
		}
		.column {
			flex-basis: 48%;
			margin-bottom: 20px;
		}
		.column img {
			max-width: 100%;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>My Page</h1>
		<div class="row">
			<div class="column">
				<img src="image1.jpg" alt="Image 1">
				<p>Description of Image 1</p>
			</div>
			<div class="column">
				<img src="image2.jpg" alt="Image 2">
				<p>Description of Image 2</p>
			</div>
			<div class="column">
				<img src="image3.jpg" alt="Image 3">
				<p>Description of Image 3</p>
			</div>
			<div class="column">
				<img src="image4.jpg" alt="Image 4">
				<p>Description of Image 4</p>
			</div>
		</div>
	</div>
</body>
</html>