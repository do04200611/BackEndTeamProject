<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		nav {
  background-color: #333;
}

nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

nav ul li {
  position: relative;
  flex: 1;
  text-align: center;
}

nav ul li:hover {
  background-color: #555;
}

nav ul li a {
  display: block;
  padding: 1em;
  color: #fff;
  text-decoration: none;
}

nav ul li ul {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #555;
  width: 100%;
}

nav ul li:hover > ul {
  display: block;
}

nav ul li ul li {
  text-align: left;
}

nav ul li ul li a {
  padding: 0.5em 1em;
}
		
	</style>
</head>
<body>
<nav>
  <ul>
    <li><a href="#">메뉴1</a>
      <ul>
        <li><a href="#">서브메뉴1-1</a></li>
        <li><a href="#">서브메뉴1-2</a></li>
        <li><a href="#">서브메뉴1-3</a></li>
      </ul>
    </li>
    <li><a href="#">메뉴2</a>
      <ul>
        <li><a href="#">서브메뉴2-1</a></li>
        <li><a href="#">서브메뉴2-2</a></li>
      </ul>
    </li>
    <li><a href="#">메뉴3</a></li>
    <li><a href="#">메뉴4</a>
      <ul>
        <li><a href="#">서브메뉴4-1</a></li>
        <li><a href="#">서브메뉴4-2</a></li>
        <li><a href="#">서브메뉴4-3</a></li>
        <li><a href="#">서브메뉴4-4</a></li>
      </ul>
    </li>
  </ul>
</nav>

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