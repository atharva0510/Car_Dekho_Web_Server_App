package com.jspiders.cardekhocasestudy_jsp.jdbc;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspiders.cardekhocasestudy_jsp.Entity.CarEntity;

public class CarDB {

	private static Driver driver;
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;
	private static String query;

	private static void openConnection() throws SQLException {
		driver = new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(driver);
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4", "root", "root");
	}

	public static int addCar(int id, String name, String model, String brand, String colour, String fuelType,
			double price) {

		int res = 0;
		try {
			openConnection();

			query = "INSERT INTO car_jsp VALUES(?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, model);
			preparedStatement.setString(4, brand);
			preparedStatement.setString(5, colour);
			preparedStatement.setString(6, fuelType);
			preparedStatement.setDouble(7, price);
			res = preparedStatement.executeUpdate();
			if (res == 1) {
				System.out.println("Car Add successfully!!!");
			}

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}

	public static List<CarEntity> allCar() {

		List<CarEntity> cars = new ArrayList<CarEntity>();

		try {
			openConnection();

			query = "Select * from car_jsp";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				CarEntity car = new CarEntity();
				car.setId(resultSet.getInt(1));
				car.setName(resultSet.getString(2));
				car.setModel(resultSet.getString(3));
				car.setBrand(resultSet.getString(4));
				car.setColour(resultSet.getString(5));
				car.setFuelType(resultSet.getString(6));
				car.setPrice(resultSet.getDouble(7));
				cars.add(car);
			}

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cars;

	}

	private static void closeConnection() throws SQLException {
		if (resultSet != null) {
			resultSet.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
		DriverManager.deregisterDriver(driver);
	}

	public static int deleteCar(int id) {
		int res = 0;
		try {
			openConnection();

			query = "delete from car_jsp where id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			res = preparedStatement.executeUpdate();
			if (res == 1) {
				System.out.println("Car Delete successfully!!!");
			}

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}

	public static int editCar(int id, String name, String model, String brand, String colour, String fuelType,
			double price) {

		int res = 0;
		try {
			openConnection();

			query = "UPDATE car_jsp set name = ?, model = ?, brand = ?, colour = ?, fuelType = ?, price = ? where id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, model);
			preparedStatement.setString(3, brand);
			preparedStatement.setString(4, colour);
			preparedStatement.setString(5, fuelType);
			preparedStatement.setDouble(6, price);
			preparedStatement.setInt(7, id);
			res = preparedStatement.executeUpdate();
			if (res == 1) {
				System.out.println("Car Add successfully!!!");
			}

			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}

}
