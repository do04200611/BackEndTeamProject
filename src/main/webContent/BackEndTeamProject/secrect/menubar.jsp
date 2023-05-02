<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" href="style.css">
	<script type="text/javascript">
	let toggles = document.getElementsByClassName('toggle');
	let contentDiv = document.getElementsByClassName('content');
	let icons = document.getElementsByClassName('icon');

	for(let i=0; i<toggles.length; i++){
	    toggles[i].addEventListener('click', ()=>{
	        if( parseInt(contentDiv[i].style.height) != contentDiv[i].scrollHeight){
	            contentDiv[i].style.height = contentDiv[i].scrollHeight + "px";
	            toggles[i].style.color = "#0084e9";
	            icons[i].classList.remove('fa-plus');
	            icons[i].classList.add('fa-minus');
	        }
	        else{
	            contentDiv[i].style.height = "0px";
	            toggles[i].style.color = "#111130";
	            icons[i].classList.remove('fa-minus');
	            icons[i].classList.add('fa-plus');
	        }

	        for(let j=0; j<contentDiv.length; j++){
	            if(j!==i){
	                contentDiv[j].style.height = "0px";
	                toggles[j].style.color = "#111130";
	                icons[j].classList.remove('fa-minus');
	                icons[j].classList.add('fa-plus');
	            }
	        }
	    });
	}
	</script>
	<style type="text/css">
	*,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: rgb(16,120,108);
}
.container{
    width: 45%;
    min-width: 500px;
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
}
.wrapper{
    background-color: #ffffff;
    margin-bottom: 20px;
    padding: 15px 40px;
    border-radius: 5px;
    box-shadow: 0 15px 25px rgba(0,0,50,0.2);
}
.toggle,
.content{
    font-family: "Poppins",sans-serif;
}
.toggle{
    width: 100%;
    background-color: transparent;
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 16px;
    color: #111130;
    font-weight: 500;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 15px 0;
}
.content{
    position: relative;
    font-size: 14px;
    text-align: justify;
    line-height: 30px;
    height: 0;
    overflow: hidden;
    transition: all 1s;
}
</style>

</head>
   
<body>
    <div class="container">
        <div class="wrapper">
            <button class="toggle">
                What is the name of the company?
                <i class="fas fa-plus icon"></i>
            </button>
            <div class="content">
                <p>The name of the company is Codewithrandom.</p>
            </div>
        </div>
        <div class="wrapper">
            <button class="toggle">
                How do find it on Internet?
                <i class="fas fa-plus icon"></i>
            </button>
            <div class="content">
                <p>Search on google Codewithrandom</p>
            </div>
        </div>
        <div class="wrapper">
            <button class="toggle">
                Does it have a YouTube Channel?
                <i class="fas fa-plus icon"></i>
            </button>
            <div class="content">
                <p>Yes</p>
            </div>
        </div>
    </div>
    <!--Script-->
    <script src="script.js"></script>
</body>
</html>