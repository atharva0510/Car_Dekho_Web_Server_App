package com.jspiders.cardekhocasestudy_jsp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhocasestudy_jsp.jdbc.CarDB;

@WebServlet("/add_car")
public class AddCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String model = req.getParameter("model");
		String brand = req.getParameter("brand");
		String colour = req.getParameter("colour");
		String fuelType = req.getParameter("fuelType");
		double price = Double.parseDouble(req.getParameter("price"));

		int res = CarDB.addCar(id, name, model, brand, colour, fuelType, price);
		if (res == 1) {
			req.setAttribute("message", "Car Add Successfully!!!");
		} else {
			req.setAttribute("message", "Car Add Not Successfully!!!");
		}

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("car_jsp.jsp");
		requestDispatcher.forward(req, resp);
	}

}
