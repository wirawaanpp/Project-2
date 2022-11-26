<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	
body{
	background-image:linear-gradient(120deg,#2980b9, #8e44ad);
	<%--(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("IT.png");--%>
	
	background-size:cover;
}

.card{
	top: 50%;
	left: 50%;
	border-radius: 25px;
	transform: translate(-50%, 40%);
}

.button {
  width: 200px;
  border: none;
  color: white;
  padding: 15px 32px;
  border-radius: 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {background-color: #344D67;}	
.button2 {background-color: #344D67;}	
</style>
</head>
<body>
<input type = "hidden" id = "status" value="<%= request.getAttribute("status") %>">
<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<h2 class="form-title" align="center">Login Form</h2>
<br><br><br>

				<form method="post" action="login" class="login-form"
							id="login-form">
		
				<fieldset class="form-group">
					<label>Username</label> <input type="text"
						 class="form-control"
						name="user">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						 class="form-control"
						name="pass">
				</fieldset>
				
				<div style="float: left;" >
				<button type="submit" class="button button1">Submit</button> </div>
				
				</form>
				
				<div style="float: right;" ><a href="registration.jsp" class="signup-image-link"><button type="submit" class="button button2">Create an
							account</button></a></div>
							
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">

var status = document.getElementById("status").value;
if (status == "failed"){
	swal("Login Failed","Wrong Username or Password","error");
}
</script>
				
</body>
</html>