package com.cs56.calendarplanner.controller;

import com.cs56.calendarplanner.dao.UserDAO;
import com.cs56.calendarplanner.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;

//@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() throws ServletException {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("signupUsername");
        String email = request.getParameter("signupEmail");
        String password = request.getParameter("signupPassword");

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setEmail(email);
        newUser.setPassword(password);

        boolean userCreated = userDAO.createUser(newUser);

        if (userCreated) {
            response.sendRedirect("login.jsp"); // Redirect to login page after successful registration
        } else {
            request.setAttribute("error", "Unable to create user. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/views/signup.jsp");
            dispatcher.forward(request, response);
        }
    }
}
