<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring"%>
	<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Hobby Locale</title>
<!-- Bootstrap Timepicker -->
<link type="text/css" href="resources/css/bootstrap-timepicker.min.css" />
<script type="text/javascript" src="resources/js/bootstrap-timepicker.min.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/css/bootstrap-formhelpers.min.css" rel="stylesheet" media="screen"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/js/bootstrap-formhelpers.min.js"></script>

<!-- JQuery Timepicker -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.css">
<!-- Bootstrap Core CSS -->

<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	type="text/css">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Custom Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="resources/font-awesome/resources/css/resources/font-awesome.min.css"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css">

<!-- Login Form CSS-->
<link rel="stylesheet" href="resources/css/style.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="resources/css/creative.css" type="text/css">

<!-- HTML5 Shim and Respond.resources/js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.resources/js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.resources/js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.4.2/respond.min.resources/js"></script>
    <![endif]-->
<style>
body {
	padding-top: 90px;
}

.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}
</style>
</head>

<body id="page-top" onload="noBack();">
	<script>
		$(function() {
			$('#login-form-link').click(function(e) {
				$("#login-form").delay(100).fadeIn(100);
				$("#register-form").fadeOut(100);
				$('#register-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});
			$('#register-form-link').click(function(e) {
				$("#register-form").delay(100).fadeIn(100);
				$("#login-form").fadeOut(100);
				$('#login-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});
		});
	</script>
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Home</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="login">Profile</a></li>
					<li><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	<header>
		<div class="header-content">
				<h1>${requestScope.hobby.hobbyName}</h1>
				<a href="#about" class="btn btn-primary btn-xl page-scroll">About Hobby</a> 
					<a href="#upcomingEvents" class="btn btn-primary btn-xl page-scroll">Upcoming Events</a>
					<a href="#createEvents" class="btn btn-primary btn-xl page-scroll">Create Events</a>
					<a href="logout" class="btn btn-primary btn-xl page-scroll">Logout</a>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				
			</div>
		</div>
	</section>
	
	<section  id="createEvents">
		<div class="container">
			<div class="row">
			<h1>Create An Event..!!</h1>
				<spring:form name="event" commandName="event" method="post" action="createEvent" >
					<div class = "form-group">
					      <label for = "eventName" class = "col-sm-2 control-label">Event Name</label>
							
					      <div class = "col-sm-4">
					         <spring:input path="eventName" type = "text" class = "form-control" id = "eventName" placeholder = "Enter Event Name" required="true"/>
					         <font color="red"> <spring:errors path="eventName" /> </font>
					         
					      </div>
					   </div>
					   <div class="form-group">
					   	<label for="startDate" class="col-sm-2 control-label">Start Date</label>
					      <div class = "col-sm-4">
					         <input type="date" id="startDate" name="startDate" style="background-color:white" class="form-control bfh-datepicker" data-min="today" data-close="false" required="true"/>
					         <font color="red"> <spring:errors path="startDate" /> </font>
					      </div>
					      
					       <label for="endDate" class="col-sm-2 control-label">End Date</label>
					      <div class = "col-sm-4">
					         <input type="date" id="endDate" name="endDate" style="background-color:white" class="form-control bfh-datepicker" data-min="today" data-close="false" required="true"/>
					         <font color="red"> <spring:errors path="startDate" /> </font>
					      </div>
					   </div>
					   
					   <div class = "form-group">
					   
					      <label for = "startTime" class = "col-sm-2 control-label">Event Start Time</label>
							<div class="col-sm-4 input-group bootstrap-timepicker timepicker">
					            <input id="startTime" name="startTime"  type="text" class="form-control input-small timepicker" required="true"/>
					            <font color="red"> <spring:errors path="startTime" /> </font>
					            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
					        </div>
					      
					      <label for="endTime" class="col-sm-2 control-label">Event End Time	</label>
					      <div class = "col-sm-4">
					         <input type="text"  id="endTime" name="endTime" class="form-control input-small timepicker" required="true"/>
					         <font color="red"> <spring:errors path="endTime" /> </font>
					      </div>
					      
					   </div>
					   <input type="text" id="hobbyName" name="hobbyName" value='${requestScope.hobby.hobbyName}' style="visibility: hidden">
					   <input type="submit" class="btn btn-primary btn-xl page-scroll" value="Create">
				</spring:form>
			</div>
		</div>
	</section>

	
	<section class="bg-primary" id="upcomingEvents">
		<div class="container">
			<h2>Upcoming Events..!!</h2>
			>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
<c:set var="userHobbies" value="${sessionScope.user.hobbies}"/>
						<c:if test="${fn:length(userHobbies) gt 0}">
							<c:forEach var="hobby" items="${sessionScope.user.hobbies}">
								
							</c:forEach>
						</c:if>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="resources/img/portfolio/fullsize/1.jpg">
					</div>

					<div class="item">
						<img src="resources/img/portfolio/fullsize/2.jpg">
					</div>

					<div class="item">
						<img src="resources/img/portfolio/fullsize/3.jpg">
					</div>

					<div class="item">
						<img src="resources/img/portfolio/fullsize/4.jpg">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>
	<section id="contact" class="bg-primary">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Let's Get In Touch!</h2>
					<hr class="primary">
					<p>Have any questions ? Give us a call or send us an email and
						we will get back to you as soon as possible!</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x sr-contact"></i>
					<p>123-456-6789</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:admin@hobbylocale.com">feedback@hobbylocale.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<script>
var xmlHttp;
xmlHttp = new XMLHttpRequest();

function checkHobby()
{
	
	if (xmlHttp == null)
    {
        alert("Your browser does not support AJAX!");
        return;
    }
	var hobbyName=document.getElementById("search").value;
	if(hobbyName=="")
		{
		document.getElementById("alert").style.visibility="hidden"; 
		
		}
	 xmlHttp.onreadystatechange = function stateChanged()
	    {
	        if (xmlHttp.readyState == 4)
	        {
	        	var json = JSON.parse(xmlHttp.responseText);
	        	
	        	if(json.hobbies.length>0)
	        	{
	        		var myNode=document.getElementById('hobbySelector');
	        		while (myNode.firstChild) {
	        	        myNode.removeChild(myNode.firstChild);
	        	    }
	        	    for(i=0; i<json.hobbies.length; i=i+1){
	        	    	
	        	    	var newSelect=document.createElement('option');
	        	    	newSelect.setAttribute("value",json.hobbies[i]);
		        	    var selectHTML=json.hobbies[i];
		        	    newSelect.innerHTML= selectHTML;
		        	    
		        	    myNode.appendChild(newSelect);
		        	    
	        	    }
	
	        		document.getElementById("alert").style.visibility="hidden"; 
	        		
	        	}
	        	else
	        		{
	        		document.getElementById("alert").style.visibility="visible"; 
	        		document.getElementById("addHobby").style.visibility="visible";
	        		document.getElementById("alert").innerHTML="No Hobbies Found";
	        		document.getElementById("addHobby").focus();
	        		return false;
	        		}
	        }
	        
	    };
	    xmlHttp.open("POST", "searchHobby?name="+hobbyName, true);
	    xmlHttp.send();
}


function loadHobbies()
{
	alert("load hobbies");
	if (xmlHttp == null)
    {
        alert("Your browser does not support AJAX!");
        return;
    }
	var hobbyName=document.getElementById("search").value;
	if(hobbyName=="")
		{
		document.getElementById("alert").style.visibility="hidden"; 
		document.getElementById("addHobby").style.visibility="hidden";
		
		}
	 xmlHttp.onreadystatechange = function stateChanged()
	    {
	        if (xmlHttp.readyState == 4)
	        {
	        	var json = JSON.parse(xmlHttp.responseText);
	        	alert("Response1:"+json.result);
	        	if(json.result)
	        	{
	        		return true;
	        	}
	        	else
	        		{
	        		document.getElementById("alert").style.visibility="visible";
	        		document.getElementById("alert").innerHTML="No Hobbies Found. Please create a new hobby.";
	        		document.getElementById("addHobby").focus();
	        			return false;
	        		}
	        }
	        
	    };
	    xmlHttp.open("POST", "hobbyExist?name="+hobbyName, true);
	    xmlHttp.send();
}

function ValidateFileUpload() {
    var fuData = document.getElementById('photo');
    var FileUploadPath = fuData.value;

//To check if user upload any file
    if (FileUploadPath == '') {
        alert("Please upload an image");
        return false;

    } else {
        var Extension = FileUploadPath.substring(
                FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

//The file uploaded is an image

if (Extension == "gif" || Extension == "png" || Extension == "bmp"
                || Extension == "jpeg" || Extension == "jpg") {


        } 

//The file upload is NOT an image
else {
            alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
            return false;

        }
return true;
    }
}
</script>
	<script>
		function upload() {

			document.getElementById("photo").click();

		}

		var xmlHttp;
		xmlHttp = new XMLHttpRequest();

		$('#idUploadLogoButton').on('click', function () {
			alert("requesting");
			 var form = new FormData(document.getElementById('idUploadLogoForm'));
			 $.ajax({
			  url: "saveImage",
			  data: form,
			  dataType: 'text',
			  processData: false,
			  contentType: false,
			  type: 'POST',
			  success: function (response) {
			      var data = jQuery.parseJSON(response);   
			      alert("image received");
			      $('#idImagePlaceHolder').html('<img src="data:image/png;base64,' + data.JsonLogo.image + '"/>');   
			  },
			  error: function (jqXHR) {
			   //Error handling
			  }
			 });
			});
		
		function saveImage() {
			alert("requesting");

			if (xmlHttp == null) {
				alert("Your browser does not support AJAX!");
				return;
			}
			var photo = document.getElementById("photo").files[0];
			alert("hi123" + photo.name);
			xmlHttp.onreadystatechange = function stateChanged() {
				if (xmlHttp.readyState == 4) {
					alert("response reveived 123");
					var profilePic = xmlHttp.responseText;
					alert("response"+profilePic);
					document.getElementById("pic").src = "resources/img/portfolio/fullsize/1.jpg";//"data:image/jpeg;base64,"+ profilePic;
				}
			};
			xmlHttp.open("POST", "uploadImage?photo="+photo, false);
			xmlHttp.setRequestHeader("Content-Type", "multipart/form-data; boundary=?");
			xmlHttp.send();
			return false;

		}

		function searchMyHobby() {
			var filter = document.getElementById("myHobbies");
			var chr = filter.getElementById("searchMyHobby").value;
			alert(chr);
			filet.all.chr.scrollIntoView();

		}
	    function ValidateFileUpload() {
	        var fuData = document.getElementById('photo');
	        var FileUploadPath = fuData.value;

	//To check if user upload any file
	        if (FileUploadPath == '') {
	            alert("Please upload an image");
	            return false;

	        } else {
	            var Extension = FileUploadPath.substring(
	                    FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

	//The file uploaded is an image

	if (Extension == "gif" || Extension == "png" || Extension == "bmp"
	                    || Extension == "jpeg" || Extension == "jpg") {

	// To Display
	                if (fuData.files && fuData.files[0]) {
	                    var reader = new FileReader();

	                    reader.onload = function(e) {
	                        $('#pic').attr('src', e.target.result);
	                    }

	                    reader.readAsDataURL(fuData.files[0]);
	                }

	            } 

	//The file upload is NOT an image
	else {
	                alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
	                return false;

	            }
	return true;
	        }
	    }
	</script>
	<!-- jQuery -->
	<script src="resources/js/jquery.resources/js"></script>

	<!-- Plugin JavaScript -->
	<script src="resources/js/scrollreveal.min.resources/js"></script>
	<script src="resources/js/jquery.easing.min.resources/js"></script>
	<script src="resources/js/jquery.fittext.resources/js"></script>
	<script src="resources/js/jquery.magnific-popup.min.resources/js"></script>
<script>$(document).ready(function(){
	
    $('input.timepicker').timepicker({});
});</script>
	<!-- Custom Theme JavaScript -->
	<script src="resources/js/creative.resources/js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.js"></script>
</body>

</html>
