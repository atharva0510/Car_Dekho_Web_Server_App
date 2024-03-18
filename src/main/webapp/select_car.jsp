<%@page import="com.jspiders.cardekhocasestudy_jsp.Entity.CarEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
	flex-wrap : wrap;
	justify-content:space-between;
	border-bottom: 2px solid;
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
	height: 400px;
	width: 250px;
	border: 2px solid;
	margin: 50px 20px;
	border-radius: 20px;
	padding: 15px;
	display: inline-block;
	background-color: #FFFFFF;
}

#head2 {
	text-align: center;
	border-bottom: 2px solid;
}

table {
	height: 350px;
	width: 300px;
}

.d2 {
	display: flex;
	justify-content: space-around;
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
				href="http://localhost:8080/cardekhocasestudy_jsp/edit_car_id.jsp"
				style="background-color: #6c757d;" class="btn">EDIT</a> <a
				href="http://localhost:8080/cardekhocasestudy_jsp/delete_car.jsp"
				style="background-color: #dc3545;" class="btn">DELETE</a>
		</div>
	</section>
	<%
	List<CarEntity> cars = (List<CarEntity>) request.getAttribute("cars");
	if (cars != null && cars.size() > 0) {
		for (CarEntity car : cars) {
	%>
	<section id="sec2">
		<div class="d1">
			<h1 id="head2"><%=car.getName()%></h1>
			<table>
				<tr>
					<td>ID:</td>
					<td><%=car.getId()%></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><%=car.getName()%></td>
				</tr>
				<tr>
					<td>Model:</td>
					<td><%=car.getModel()%></td>
				</tr>
				<tr>
					<td>Brand:</td>
					<td><%=car.getBrand()%></td>
				</tr>
				<tr>
					<td>Colour:</td>
					<td><%=car.getColour()%></td>
				</tr>
				<tr>
					<td>FuelType:</td>
					<td><%=car.getFuelType()%></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><%=car.getPrice()%></td>
				</tr>
			</table>
		</div>
	</section>
	<%
	}
	} else {
	%>
	<h1 style="font-size: 50px;'">Data Not Available..!!!</h1>
	<%
	}
	%>

</body>
</html>