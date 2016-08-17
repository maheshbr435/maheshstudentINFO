package com.maheshbaburayalla.studentinfo.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.maheshbaburayalla.studentinfo.beans.UserAccount;
import com.maheshbaburayalla.studentinfo.utils.DBUtils;
import com.maheshbaburayalla.studentinfo.utils.MyUtils;

@WebServlet(urlPatterns = {
 "/doRegistration"
})
public class DoRegistrationServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

 public DoRegistrationServlet() {
  super();
 }

 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
  Connection conn = MyUtils.getStoredConnection(request);

  String username = (String) request.getParameter("username");
  String password = (String) request.getParameter("password");
  String fullname = (String) request.getParameter("fullname");
  String email = (String) request.getParameter("email");
  String phone = (String) request.getParameter("phone");
  String gender = (String) request.getParameter("gender");
  String university = (String) request.getParameter("university");
  String grade = (String) request.getParameter("grade");
  String goal = (String) request.getParameter("goal");
  UserAccount user = new UserAccount(username, password, fullname, email, phone, gender, university, grade, goal);

  String errorString = null;


  // Product ID is the string literal [a-zA-Z_0-9]
  // with at least 1 character
  String regex = "\\w+";

  if (password == null || !password.matches(regex)) {
   errorString = "Please fill all entries";
  }

  if (errorString == null) {
   try {
    DBUtils.register(conn, user);
   } catch (SQLException e) {
    e.printStackTrace();
    errorString = e.getMessage();
   }
  }

  // Store information to request attribute, before forward to views.
  request.setAttribute("errorString", errorString);
  request.setAttribute("product", user);

  // If error, forward to Edit page.
  if (errorString != null) {
   RequestDispatcher dispatcher = request.getServletContext()
    .getRequestDispatcher("/WEB-INF/views/registrationView.jsp");
   dispatcher.forward(request, response);
  }

  // If everything nice.
  // Redirect to the product listing page.            
  else {
   response.sendRedirect(request.getContextPath() + "/login");
  }

 }

 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
  doGet(request, response);
 }

}