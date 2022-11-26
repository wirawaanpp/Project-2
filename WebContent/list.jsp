<%
	if(session.getAttribute("user")==null){
		response.sendRedirect("login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>View List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
.button {
  border: none;
  border-radius: 25px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  float: right;
}
.button1 {background-color: LightSalmon;}	
h1 {
  text-align: left;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 125;
}
</style>
</head>

<body>
<br><br><br>
<nav 
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
		<h1><%="Welcome : " %><c:out value='${record.username}' />
			</h1>
			 
				<div  class="collapse navbar-collapse" id="navbarResponsive">
			<img src="getimage?id=<c:out value='${record.id}' />" class="center" width="125" height ="125"  border="1" >
			
		
				<ul  class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("user") %></a></p></li>
						
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("id") %></a></p></li>
						
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><button  type="submit" class="button button1">Logout</button></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<br><br><br><br>
	<div class="row">
	<div class="container">
			<h3 class="text-center">View Previous Record</h3>
			<hr>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>NO</th>
						<th>Name</th>
						<th>Email</th>
						<th>File</th>
						
						<th>operation</th>
					</tr>
				</thead>
				<tbody>

						<tr>
							<td><c:out value="${record.id}" /></td>
							<td><c:out value="${record.name}" /></td>
							<td><c:out value="${record.email}" /></td>
							<td><c:out value="${record.file}" /></td>
							<td><a href="edit?id=<c:out value='${record.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${record.id}' />">Delete</a></td>
								
						</tr>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>