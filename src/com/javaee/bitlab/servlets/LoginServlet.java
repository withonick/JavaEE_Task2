package com.javaee.bitlab.servlets;

import com.javaee.bitlab.database.DBConnection;
import com.javaee.bitlab.database.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Objects;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = DBConnection.findUserThroughEmail(email);
          if (user!= null && Objects.equals(user.getPassword(), password)) {
              HttpSession session = request.getSession();
              session.setAttribute("currentUser",user);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Wrong email or password");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}