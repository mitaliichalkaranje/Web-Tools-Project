<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hobby Locale</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">

    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="resources/font-awesome/resources/css/resources/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    
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
<style>body { padding-top: 90px; } .panel-login { border-color: #ccc; -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); } .panel-login>.panel-heading { color: #00415d; background-color: #fff; border-color: #fff; text-align:center; } .panel-login>.panel-heading a{ text-decoration: none; color: #666; font-weight: bold; font-size: 15px; -webkit-transition: all 0.1s linear; -moz-transition: all 0.1s linear; transition: all 0.1s linear; } .panel-login>.panel-heading a.active{ color: #029f5b; font-size: 18px; } .panel-login>.panel-heading hr{ margin-top: 10px; margin-bottom: 0px; clear: both; border: 0; height: 1px; background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0)); background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); } .panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] { height: 45px; border: 1px solid #ddd; font-size: 16px; -webkit-transition: all 0.1s linear; -moz-transition: all 0.1s linear; transition: all 0.1s linear; } .panel-login input:hover, .panel-login input:focus { outline:none; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; border-color: #ccc; } .btn-login { background-color: #59B2E0; outline: none; color: #fff; font-size: 14px; height: auto; font-weight: normal; padding: 14px 0; text-transform: uppercase; border-color: #59B2E6; } .btn-login:hover, .btn-login:focus { color: #fff; background-color: #53A3CD; border-color: #53A3CD; } .forgot-password { text-decoration: underline; color: #888; } .forgot-password:hover, .forgot-password:focus { text-decoration: underline; color: #666; } .btn-register { background-color: #1CB94E; outline: none; color: #fff; font-size: 14px; height: auto; font-weight: normal; padding: 14px 0; text-transform: uppercase; border-color: #1CB94A; } .btn-register:hover, .btn-register:focus { color: #fff; background-color: #1CA347; border-color: #1CA347; }</style>
</head>

<body id="page-top">
<script>$(function() { $('#login-form-link').click(function(e) { $("#login-form").delay(100).fadeIn(100); $("#register-form").fadeOut(100); $('#register-form-link').removeClass('active'); $(this).addClass('active'); e.preventDefault(); }); $('#register-form-link').click(function(e) { $("#register-form").delay(100).fadeIn(100); $("#login-form").fadeOut(100); $('#login-form-link').removeClass('active'); $(this).addClass('active'); e.preventDefault(); }); });</script>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="login">My Profile</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <header>
        <div class="header-content">
            <div class="header-content-inner">
           <div class="container">
            <h2>Search Hobby</h2>
            
              <input list="hobbySelector"  class = "form-control" name="search" id="search"  onkeyup="checkHobby()" placeholder = "Search hobby Here" >
              <datalist id="hobbySelector">
              </datalist>
            <button class="btn btn-primary btn-xl page-scroll" onclick="loadHobbies()">Show Hobbies</button>
            <br>
     <div class="container" style="visibility: hidden" id="addHobby">
         	<div class="alert alert-danger" role="alert" id="alert" style="visibility: hidden"></div>
       <h2>Create New Hobby</h2>   
       	<spring:form name="createHobby" method="post" action="createHobby" commandName="hobby" enctype="multipart/form-data">
       	<label>Name</label>
  		 <spring:input type="text" class = "form-control" path="hobbyName" id="hobbyName" name="hobbyName" required="true"/>
       	 <input type="file" id="photo" name="photo"  onchange="return ValidateFileUpload()"/>	
       		<font color="red"><spring:errors path="hobbyName" /></font>
       		<input type="submit" value="Create">
       	</spring:form>
     </div>
     <div class="container" style="visibility: hidden" id="showHobby">
         	<div class="alert alert-danger" role="alert" id="alert" style="visibility: hidden"></div>
       <h2>Hobby</h2>   
       	<spring:form name="addHobby" method="post" action="addHobby" commandName="hobby">
       	<label>Name</label>
  		 <spring:input type="text" class = "form-control" path="hobbyName" id="hobbyName" name="hobbyName" required="true"/>
       		<font color="red"><spring:errors path="hobbyName" /></font>
       		<input type="submit" value="Create">
       	</spring:form>
     </div>
        	</div>
        </div></div>
    </header>
    <section class="bg-primary"  >
        
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
		document.getElementById("addHobby").style.visibility="hidden";
		
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
	        		document.getElementById("addHobby").style.visibility="hidden";
	        		
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
	        		alert("load")
	        		
	        		return true;
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
    <!-- jQuery -->
    <script src="resources/js/jquery.resources/js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.resources/js"></script>

    <!-- Plugin JavaScript -->
    <script src="resources/js/scrollreveal.min.resources/js"></script>
    <script src="resources/js/jquery.easing.min.resources/js"></script>
    <script src="resources/js/jquery.fittext.resources/js"></script>
    <script src="resources/js/jquery.magnific-popup.min.resources/js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/creative.resources/js"></script>

</body>

</html>
