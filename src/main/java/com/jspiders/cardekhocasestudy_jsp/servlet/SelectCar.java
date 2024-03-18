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

@WebServlet("/select_car")
public class SelectCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<CarEntity> searchCar = CarDB.allCar();
		req.setAttribute("cars",searchCar);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("select_car.jsp");
		requestDispatcher.forward(req, resp);
	}

}
