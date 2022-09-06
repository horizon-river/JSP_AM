package com.KoreaIT.java.am;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home/printDan")
public class HomeMainServlet2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		response.getWriter().append("9단<br>");
		
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		for(int i = 1; i <= 9; i++) {
			response.getWriter().append(String.format("%d * %d = %d<br>", dan , i , dan * i));
		}
	}
}
