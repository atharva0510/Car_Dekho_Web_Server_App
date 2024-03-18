package com.jspiders.cardekhocasestudy_jsp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhocasestudy_jsp.Entity.CarEntity;
import com.jspiders.cardekhocasestudy_jsp.jdbc.CarDB;

@WebServlet("/edit_car_id")
public class EditCarID extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private RequestDispatcher requestDispatcher;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		boolean flag = true;
		List<CarEntity> allCar = CarDB.allCar();
		for (CarEntity carEntity : allCar) {
			if (carEntity.getId() == id) {
				req.setAttribute("id", id);
				requestDispatcher = req.getRequestDispatcher("edit_car.jsp");
				requestDispatcher.forward(req, resp);
				flag = false;
				break;
			}
		}
		if (flag) {
			req.setAttribute("message", "Invalid Car ID..!!!");
			requestDispatcher = req.getRequestDispatcher("edit_car_id.jsp");
			requestDispatcher.forward(req, resp);
		}
	}

}
