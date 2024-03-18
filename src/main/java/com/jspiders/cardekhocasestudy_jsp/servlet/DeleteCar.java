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

@WebServlet("/delete_car")
public class DeleteCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		boolean flag = true;
		List<CarEntity> allCar = CarDB.allCar();
		for (CarEntity carEntity : allCar) {
			if (carEntity.getId() == id) {
				int res = CarDB.deleteCar(id);
				if (res == 1) {
					req.setAttribute("message", "Car Delete Successfully..!!!");
				} else {
					req.setAttribute("message", "Car Not Delete Successfully..!!!");
				}
				flag = false;
				break;
			}
		}
		if (flag) {
			req.setAttribute("message", "Invalid ID..!!!");
		}

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("delete_car.jsp");
		requestDispatcher.forward(req, resp);
	}

}
