<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
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
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/creative.css" type="text/css">

    <!-- HTML5 Shim and Respond.resources/js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.resources/js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.resources/js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.4.2/respond.min.resources/js"></script>
    <![endif]-->
<style>body { padding-top: 90px; } .panel-login { border-color: #ccc; -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2); } .panel-login>.panel-heading { color: #00415d; background-color: #fff; border-color: #fff; text-align:center; } .panel-login>.panel-heading a{ text-decoration: none; color: #666; font-weight: bold; font-size: 15px; -webkit-transition: all 0.1s linear; -moz-transition: all 0.1s linear; transition: all 0.1s linear; } .panel-login>.panel-heading a.active{ color: #029f5b; font-size: 18px; } .panel-login>.panel-heading hr{ margin-top: 10px; margin-bottom: 0px; clear: both; border: 0; height: 1px; background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0)); background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0)); } .panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] { height: 45px; border: 1px solid #ddd; font-size: 16px; -webkit-transition: all 0.1s linear; -moz-transition: all 0.1s linear; transition: all 0.1s linear; } .panel-login input:hover, .panel-login input:focus { outline:none; -webkit-box-shadow: none; -moz-box-shadow: none; box-shadow: none; border-color: #ccc; } .btn-login { background-color: #59B2E0; outline: none; color: #fff; font-size: 14px; height: auto; font-weight: normal; padding: 14px 0; text-transform: uppercase; border-color: #59B2E6; } .btn-login:hover, .btn-login:focus { color: #fff; background-color: #53A3CD; border-color: #53A3CD; } .forgot-password { text-decoration: underline; color: #888; } .forgot-password:hover, .forgot-password:focus { text-decoration: underline; color: #666; } .btn-register { background-color: #1CB94E; outline: none; color: #fff; font-size: 14px; height: auto; font-weight: normal; padding: 14px 0; text-transform: uppercase; border-color: #1CB94A; } .btn-register:hover, .btn-register:focus { color: #fff; background-color: #1CA347; border-color: #1CA347; }</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/css/bootstrap-formhelpers.min.css" rel="stylesheet" media="screen"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/js/bootstrap-formhelpers.min.js"></script>
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
                <a class="navbar-brand page-scroll" href="#page-top">Top</a>
                <a class="navbar-brand page-scroll" href="">Home</a>
            </div>
	
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#login">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#register">Register</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
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
            <section id="login">
                <h1>Login</h1>
                <hr>
                <div class="container-fluid">   
					
		<c:if test="${not empty success}">
			<div class="alert alert-success" role="alert" id="msg">'${success}'</div>
		</c:if>
                
                 <form id="loginForm"  name="loginForm" action="login" method="post" class = "form-horizontal" role = "form">
   				<div class = "form-group">
				<div class = "col-sm-offset-2 col-sm-10">	      
				 <label for = "username" class = "col-sm-1 control-label">Username</label>
					<div class="col-sm-5">		
					         <input type = "text" class = "form-control" name="username" id = "username" placeholder = "Enter Username" required="true"/>
					  </div>  
			   </div>  
			   </div>
					<div class = "form-group ">    
					 <div class = "col-sm-offset-2 col-sm-10">     
					      <label for = "password" class = "col-sm-1 control-label">Password</label>
					      <div class="col-sm-5">
					         <input type = "password" class = "form-control" name="password" id = "password" placeholder = "Enter Password" required="true"/>
					      </div>
					  </div>
					</div>
					   <div class = "form-group">
					      <div class = "col-sm-offset-2 col-sm-10">
					         <input type = "submit"  id="submit-button" class = "btn btn-default" value="Login">
					      </div>
				</div>
			</form>
			</div>
                <a href="#register" class="page-scroll btn btn-default btn-xl sr-button">New User? Create an account</a>
            </section>
            </div>
        </div>
    </header>

    <section  id="register">
            <div class="row">
                 <div class="col-lg-6 col-md-10 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                        <a href="#registerUser"><h3>Register as a User</h3></a>
                        <p class="text-muted">You can use this theme as is, or you can make changes!</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-10 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                        <a href="#registerMerchandise"><h3>Register as a Merchandise</h3></a>
                        <p class="text-muted">We update dependencies to keep things fresh.</p>
                    </div>
            </div>
        </div>
    </section>

<header>
<div class="header-content">
            <div class="header-content-inner">
            <section id="registerUser">
            <div class="alert alert-danger" role="alert" id="alert" style="visibility: hidden"></div>
            <div class="alert alert-success" role="alert" id="success" style="visibility: hidden"></div>
                <h1>User Registration</h1>
                <hr>
                <spring:form id="myForm" name="myForm" action="registerUser" commandName="userDetails" method="post" class = "form-horizontal" role = "form">
   <c:set var="error"><spring:errors path="firstName"/></c:set>
						<c:if test="${not empty error}">
							<script>document.getElementById("registerUser").focus();</script>
						</c:if>
					   <div class = "form-group">
					      <label for = "firstname" class = "col-sm-2 control-label">First Name</label>
							
					      <div class = "col-sm-4">
					         <spring:input path="firstName" type = "text" class = "form-control" id = "firstname" placeholder = "Enter First Name" required="true"/>
					     <font color="red"> <spring:errors path="firstName" /> </font>
					      </div>
					      
					      <label for = "lastname" class = "col-sm-2 control-label">Last Name</label>
							
					      <div class = "col-sm-4">
					         <spring:input path="lastName"  type = "text" class = "form-control" id = "lastname" placeholder = "Enter Last Name" required="true"/>
					      <font color="red"> <spring:errors path="lastName" /> </font>
					      </div>
					   </div>
					   <div class = "form-group">
					      <label for = "emailID" class = "col-sm-2 control-label">Email ID</label>
							
					      <div class = "col-sm-4">
					         <spring:input path="emailID" onblur="checkEmail();return false;" type = "email" class = "form-control" id = "emailID" placeholder = "Enter Email ID" required="true"/>
					     	<font color="red"> <spring:errors path="emailID" /> </font>
					      </div>
					      <label for = "phoneNumber" class = "col-sm-2 control-label">Phone Number</label>
							
					      <div class = "col-sm-4">
					         <spring:input path="phoneNumber"  type = "text" class = "form-control input-medium bfh-phone" data-format=" (ddd) ddd-dddd" id = "phoneNumber" placeholder = "Enter Phone Number" required="true"/>
					      </div>
					   </div>
					   <div class = "form-group bootstrap-iso">
					      
					         
					      <label for = "aboutMe" class = "col-sm-2 control-label">About me</label>
							
					      <div class = "col-sm-4">
					         <spring:textarea path="aboutMe"  type = "text" class = "form-control" rows="3" id = "aboutMe" placeholder = "About Me" required="true"/>
					      </div>
					   </div>
					   <div class = "form-group">
					      <label for = "userName" class = "col-sm-2 control-label">User Name</label>
							
					      <div class = "col-sm-4">
					         <spring:input pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" path="userName"  type = "text" onkeyup="checkAvailability();return false;" class = "form-control" id = "userName" placeholder = "User Name" required="true"/>
					     	 <span>*Username must have 2-20 chars</span><br>
					     	 <span id="availability" ></span>
					     	 <font color="red"> <spring:errors path="userName" /> </font>
					      </div>
					      <label for = "password" class = "col-sm-2 control-label">Password</label>
							
					      <div class = "col-sm-4">
					         <spring:input pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
					           minlength="8" maxlength="20" path="password"  type = "password" class = "form-control" id = "password" placeholder = "Password" required="true"/>
					           <span>*Password must contain UpperCase, LowerCase, Number/SpecialChar and min 8 Chars</span>
					      </div>
					   </div>
					   <div class = "form-group">
					      <label for = "captcha" class = "col-sm-2 control-label">Captcha</label>
							
					      <div class = "col-sm-4">
					         <div class="g-recaptcha" id="captcha" data-sitekey="6LcH8iITAAAAAH0Z9M_RYPp9UsO4JHJ_JoOEh8OO"></div>
					      </div>
					      <label for = "retypePassword" class = "col-sm-2 control-label">Retype Password</label>
							
					      <div class = "col-sm-4">
					         <input type = "password" class = "form-control" id = "retypePassword" placeholder = "Retype Password" onkeyup="checkPass();return false;" required="true" />
					      <span id="confirmMessage" class="confirmMessage"></span>
					      </div>
					      
					   </div>
					   <div class = "form-group">
					      <div class = "col-sm-offset-2 col-sm-10">
					         <input type = "submit"  id="submit-button" class = "btn btn-default" value="Register">
					      </div>
					   </div>
						<script>
						var emailcheck=false;
						var usernamecheck=false;
						var xmlHttp;
				        xmlHttp = new XMLHttpRequest();
				        
						function checkAvailability()
						{
							
							if (xmlHttp == null)
				            {
				                alert("Your browser does not support AJAX!");
				                return;
				            }
							var username=document.getElementById("userName").value;
							var usernameField=document.getElementById("userName");
							var success=document.getElementById("success");
							var alert=document.getElementById("alert");
							//Set the colors we will be using ...
						    var goodColor = "#66cc66";
						    var badColor = "#ff6666";
						//	var query = "username=" + username;
				            xmlHttp.onreadystatechange = function stateChanged()
				            {
				                if (xmlHttp.readyState == 4)
				                {
				                	var availability=xmlHttp.responseText;
				                	if(availability=="yes"){
				                		success.innerHTML="Username available";
				                		usernameField.style.backgroundColor = goodColor;
				                		success.style.visibility = "visible";
				                		alert.style.visibility = "hidden";
				                		usernamecheck=true;
				                		
				                	}
				                	else if(availability=="empty"){
				                		alert.innerHTML="Please enter valid username";
				                		usernameField.style.backgroundColor =badColor;
				                		alert.style.visibility = "visible";
				                		success.style.visibility = "hidden";
				                		usernamecheck=false;
				                		document.getElementById("submit-button").addEventListener("click", function(event){
				                		    event.preventDefault()
				                		});
				                	}
				                	else{
				                		alert.innerHTML="Username unavailable";
				                		usernameField.style.backgroundColor =badColor;
				                		alert.style.visibility = "visible";
				                		success.style.visibility = "hidden";
				                		usernamecheck=false;
				                		document.getElementById("submit-button").addEventListener("click", function(event){
				                		    event.preventDefault()
				                		});
				                	}
				                	
				                }
				            };
				            xmlHttp.open("POST", "checkAvailability?username="+username, true);
				           // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				            xmlHttp.send();
				            return false;
				        
						}
						function checkEmail()
						{
							
							if (xmlHttp == null)
				            {
				                alert("Your browser does not support AJAX!");
				                return;
				            }
							var email=document.getElementById("emailID").value;
							var emailField=document.getElementById("emailID");
							var success=document.getElementById("success");
							var alert=document.getElementById("alert");
							//Set the colors we will be using ...
						    var goodColor = "#66cc66";
						    var badColor = "#ff6666";
						//	var query = "username=" + username;
				            xmlHttp.onreadystatechange = function stateChanged()
				            {
				                if (xmlHttp.readyState == 4)
				                {
				                	var emailExist=xmlHttp.responseText;
				                	if(emailExist=="yes"){
				                		alert.innerHTML="Email ID already exist";
				                		emailField.style.backgroundColor = badColor;
				                		success.style.visibility = "hidden";
				                		alert.style.visibility = "visible";
				                		document.getElementById("submit-button").disabled = true;
				                		emailcheck=false;
				                		document.getElementById("submit-button").addEventListener("click", function(event){
				                		    event.preventDefault()
				                		});
				                	}
				                	else
				                		{
				                			emailcheck=true;
				                		}
				                	
				                }
				            };
				            xmlHttp.open("POST", "checkEmail?email="+email, true);
				           // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				            xmlHttp.send();
				            return false;
				        
						}
						function checkPass()
						{
						    //Store the password field objects into variables ...
						    var pass1 = document.getElementById('password');
						    var pass2 = document.getElementById('retypePassword');
						    //Store the Confimation Message Object ...
						    var message = document.getElementById('confirmMessage');
						    //Set the colors we will be using ...
						    var goodColor = "#66cc66";
						    var badColor = "#ff6666";
						    //Compare the values in the password field 
						    //and the confirmation field
						    if(pass1.value == pass2.value){
						        //The passwords match. 
						        //Set the color to the good color and inform
						        //the user that they have entered the correct password 
						        pass2.style.backgroundColor = goodColor;
						        message.style.color = goodColor;
						        message.innerHTML = "Passwords Match!"
						        	document.getElementById("submit-button").disabled = false;
						    }else{
						        //The passwords do not match.
						        //Set the color to the bad color and
						        //notify the user.
						        pass2.style.backgroundColor = badColor;
						        message.style.color = badColor;
						        message.innerHTML = "Passwords Do Not Match!"
						        	document.getElementById("submit-button").disabled = true;
						    }
						}  
						
						window.onload = function() {
						  var recaptcha = document.forms["myForm"]["g-recaptcha"];
						  recaptcha.required = true;
						  recaptcha.oninvalid = function(e) {
						    // do something
						    alert("Please complete the captcha");
						  }
						}
						
						$(document).ready(function(){
					        var date_input=$('input[name="date"]'); //our date input has the name "date"
					        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
					        date_input.datepicker({
					            format: 'mm/dd/yyyy',
					            container: container,
					            todayHighlight: true,
					            autoclose: true,
					            minDate: moment().add(1, 'd').toDate()
					        })
					    });	
					    
					    
						 </script>
					</spring:form>
               </section>
            </div>
        </div>
 </header>
 
 <header>
<div class="header-content">
            <div class="header-content-inner">
            <section id="registerMerchandise">
                <h1>Merchandise Registration</h1>
                <hr>
                <p> Registration Form here</p>
              </section>
            </div>
        </div>
 </header>  
    <section id="contact" class="bg-primary" >
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Have any questions ? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:admin@hobbylocale.com">feedback@hobbylocale.com</a></p>
                </div>
            </div>
        </div>
    </section>

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
