package com.bank.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "admin".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);
            response.sendRedirect("admindashboard.jsp");
        } else {
            request.setAttribute("loginError", "Enter correct login details");
            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
        }
    }
}