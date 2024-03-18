package com.jspiders.cardekhocasestudy_jsp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhocasestudy_jsp.jdbc.CarDB;

@WebServlet("/edit_car")
public class EditCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] ids = req.getParameterValues("id");
		int id = Integer.parseInt(ids[0]);
		String name = req.getParameter("name");
		String model = req.getParameter("model");
		String brand = req.getParameter("brand");
		String colour = req.getParameter("colour");
		String fuelType = req.getParameter("fuelType");
		double price = Double.parseDouble(req.getParameter("price"));

		int res = CarDB.editCar(id, name, model, brand, colour, fuelType, price);
		if (res == 1) {
			req.setAttribute("message", "Car Edit Successfully!!!");
		} else {
			req.setAttribute("message", "Car Not Edit Successfully!!!");
		}
		req.setAttribute("id", id);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("edit_car.jsp");
		requestDispatcher.forward(req, resp);
	}

}
