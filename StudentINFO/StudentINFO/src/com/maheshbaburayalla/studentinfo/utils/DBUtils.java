package com.maheshbaburayalla.studentinfo.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




import com.maheshbaburayalla.studentinfo.beans.UserAccount;

public class DBUtils {

 public static UserAccount findUser(Connection conn, String username, String password) throws SQLException {

  String sql = "Select a.fullname, a.email, a.phone, a.gender, a.university, a.grade, a.goal from user_registration a " + " where a.username = ? and a.password= ? ";

  PreparedStatement pstm = conn.prepareStatement(sql);
  pstm.setString(1, username);
pstm.setString(2, password);
  ResultSet rs = pstm.executeQuery();

  if (rs.next()) {
   
   String fullname = rs.getString("fullname");
   String email = rs.getString("email");
   String phone = rs.getString("phone");
   String gender =  rs.getString("gender");
   String university = rs.getString("university");
   String grade = rs.getString("grade");
   String goal = rs.getString("goal");
   
   UserAccount user = new UserAccount();
   user.setFullname(fullname);
   user.setEmail(email);
   user.setPhone(phone);
   user.setGender(gender);
   user.setUniversity(university);
   user.setGrade(grade);
   user.setGoal(goal);
   return user;
  }
  return null;
 }

 public static UserAccount findUser(Connection conn, String username) throws SQLException {

  String sql = "Select a.fullname, a.email, a.phone, a.gender, a.university, a.grade, a.goal from user_registration a " + " where a.username = ? ";

  PreparedStatement pstm = conn.prepareStatement(sql);
  pstm.setString(1, username);

  ResultSet rs = pstm.executeQuery();

  if (rs.next()) {
   
   String fullname = rs.getString("fullname");
   String email = rs.getString("email");
   String phone = rs.getString("phone");
   String gender =  rs.getString("gender");
   String university = rs.getString("university");
   String grade = rs.getString("grade");
   String goal = rs.getString("goal");
   
   UserAccount user = new UserAccount();
   user.setFullname(fullname);
   user.setEmail(email);
   user.setPhone(phone);
   user.setGender(gender);
   user.setUniversity(university);
   user.setGrade(grade);
   user.setGoal(goal);
   return user;
  }
  return null;
 }






 


 
 //register
 public static void register(Connection conn, UserAccount user) throws SQLException {
	  String sql = "Insert into user_registration(username, Password, fullname, email, phone, gender, university, grade, goal) values (?,?,?,?,?,?,?,?,?)";

	  PreparedStatement pstm = conn.prepareStatement(sql);

	  pstm.setString(1, user.getUsername());
	  pstm.setString(2, user.getPassword());
	  pstm.setString(3, user.getFullname());
	  pstm.setString(4, user.getEmail());
	  pstm.setString(5, user.getPhone());
	  pstm.setString(6, user.getGender());
	  pstm.setString(7, user.getUniversity());
	  pstm.setString(8, user.getGrade());
	  pstm.setString(9, user.getGoal());
	  pstm.executeUpdate();
	 }


}