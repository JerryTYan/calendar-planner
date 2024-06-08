package com.cs56.calendarplanner.controller;

import com.cs56.calendarplanner.dao.UserDAO;
import com.cs56.calendarplanner.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
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
