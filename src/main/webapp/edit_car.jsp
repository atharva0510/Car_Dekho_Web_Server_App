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
	flex-wrap: wrap;
	justify-content: space-between;
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

#d1 {
	width: 450px;
	margin-bottom: 5px;
	border-bottom: 2px solid;
	text-align: center;
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

#form {
	height: 260px;
	width: 400px;
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: space-between;
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
	text-decoration: none;
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
			<a href="http://localhost:8080/cardekhocasestudy_jsp/car_jsp.jsp"
				style="background-color: #0d6efd;" class="btn">ADD CAR</a> <a
				href="http://localhost:8080/cardekhocasestudy_jsp/delete_car.jsp"
				style="background-color: #dc3545;" class="btn">DELETE</a>
		</div>
	</section>
	<section id="sec2">
		<form action="edit_car" method="post">
			<div id="d1">
				<h1 id="head2">ENTER EDIT CAR DETAILS</h1>
			</div>
			<div id="d2" align="center">
				<div id="form">
					<%int id = (int) request.getAttribute("id");%>
					<input type="text" class="inp" name="id" id=""
						value="<%= id%>" readonly="readonly"> <input type="text" class="inp"
						name="name" id="" placeholder="Enter Change Car Name"> <input
						type="text" class="inp" name="model" id=""
						placeholder="Enter Change Car Model"> <input type="text"
						class="inp" name="brand" id=""
						placeholder="Enter Change Car Brand"> <input type="text"
						class="inp" name="colour" id=""
						placeholder="Enter Change Car  Colour"> <input type="text"
						class="inp" name="fuelType" id=""
						placeholder="Enter Change Car FuelType"> <input
						type="text" class="inp" name="price" id=""
						placeholder="Enter Change Car Price">
				</div>
				<div id="d3">
					<input style="background-color: #6c757d; color: white;"
						type="submit" id="sub1" value="EDIT CAR">
				</div>
			</div>
		</form>
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