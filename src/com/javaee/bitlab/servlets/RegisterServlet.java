package com.javaee.bitlab.servlets;

import com.javaee.bitlab.database.DBConnection;
import com.javaee.bitlab.database.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String fullName = request.getParameter("fullName");
        if (password.equals(password2)) {
           User user =  DBConnection.findUserThroughEmail(email);
           if (user != null){
               request.setAttribute("error", "email must be unique");
               request.setAttribute("fullName", fullName);
               request.getRequestDispatcher("/register.jsp").forward(request, response);
           }else {
               DBConnection.RegisterUser(new User(null, email, password, fullName));
               response.sendRedirect("/login?register_success");
           }
        } else {
            request.setAttribute("error", "password is incorrect");
            request.setAttribute("email", email);
            request.setAttribute("fullName", fullName);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
