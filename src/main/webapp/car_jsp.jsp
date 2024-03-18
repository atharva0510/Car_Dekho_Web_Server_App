<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	font-size: large;
}

body {
	font-family: 'Salsa' !important;
	background-color: blanchedalmond !important;
}

#sec1 {
	display: flex;
	height: 60px;
	width: 100%;
	flex-wrap: wrap; justify-content : space-between;
	border-bottom: 2px solid;
	justify-content: space-between;
}

#head1 {
	display: inline-block;
	font-size: larger;
}

.btn {
	padding: 10px;
	border-radius: 10px;
	color: white;
	cursor: pointer;
	text-align: center;
	line-height: 50px;
	text-decoration: none;
	border: 1px solid black;
	margin-left: 5px;
}

#sec2 {
	height: 450px;
	width: 500px;
	margin: auto;
	margin-top: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	flex-direction: column;
	border: 1px solid;
	border-radius: 30px;
	background-color: white;
}

#d1 {
	width: 450px;
	font-size: 21px;
	border-bottom: 2px solid;
	text-align: center;
}

#form {
	height: 280px;
	width: 400px;
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: space-evenly;
	background-color: rgba(255, 255, 255, 0.2);
}

#d3 {
	border-top: 2px solid;
	width: 450px;
	margin-bottom: 5px;
}

input {
	font-family: 'Salsa' !important;
}

.inp {
	height: 30px;
	width: 180px;
	border-radius: 5px;
	color: black;
	font-size: medium;
	text-align: center;
}

#sub1 {
	margin-top: 20px;
	height: 40px;
	width: 120px;
	border-radius: 10px;
	cursor: pointer;
	color: black;
}
</style>
</head>
<body>
	<section id="sec1">
		<div>
			<a href="http://localhost:8080/cardekhocasestudy_jsp/select_car"
				class="btn" style="background-color: #ffc107; color: black;">HOME</a>
			<a class="btn" style="background-color: floralwhite; color: black;">SEARCH
				CAR</a>
		</div>
		<div>
			<h1 id="head1">....CAR DEKHO APP....</h1>
		</div>
		<div>
			<a href="http://localhost:8080/cardekhocasestudy_jsp/edit_car_id.jsp"
				style="background-color: #6c757d;" class="btn">EDIT</a> <a
				href="http://localhost:8080/cardekhocasestudy_jsp/delete_car.jsp"
				style="background-color: #dc3545;" class="btn">DELETE</a>
		</div>
	</section>
	<section id="sec2">
		<div id="d1">
			<h1 id="head2">ENTER CAR DETAILS</h1>
		</div>
		<div id="d2" align="center">
			<form action="add_car" method="post">
				<div id="form">
					<input type="text" class="inp" name="id" id=""
						placeholder="Enter Car ID"> <input type="text" class="inp"
						name="name" id="" placeholder="Enter Car Name"> <input
						type="text" class="inp" name="model" id=""
						placeholder="Enter Car Model"> <input type="text"
						class="inp" name="brand" id="" placeholder="Enter Car Brand">
					<input type="text" class="inp" name="colour" id=""
						placeholder="Enter Car  Colour"> <input type="text"
						class="inp" name="fuelType" id="" placeholder="Enter Car FuelType">
					<input type="text" class="inp" name="price" id=""
						placeholder="Enter Car Price">
				</div>
				<div id="d3">
					<input style="background-color: #0d6efd; color: white;"
						type="submit" id="sub1" value="ADD CAR">
				</div>
			</form>
		</div>
	</section>
	<section>
		<div align="center">
			<%!String message;%>
			<%
			message = (String) request.getAttribute("message");
			if (message != null) {
			%>
			<h2><%=message%></h2>
			<%
			}
			%>
		</div>
	</section>
</body>
</html>