package com.maheshbaburayalla.studentinfo.beans;

public class UserAccount {

 public static final String GENDER_MALE = "M";
 public static final String GENDER_FEMALE = "F";

 
 private String username;
 private String password;
 private String fullname;
 private String email;
 private String phone;
 private String gender;
 private String university;
 private String grade;
 private String goal;

 public UserAccount(String username, String password, String fullname, String email, String phone, String gender, String university, String grade, String goal){
	 this.username=username;
	 this.password=password;
	 this.fullname=fullname;
	 this.email=email;
	 this.phone=phone;
	 this.gender=gender;
	 this.university=university;
	 this.grade=grade;
	 this.goal=goal;
	 }
 
 public UserAccount() {

 }

 public String getUsername() {
  return username;
 }

 public void setUsername(String username) {
  this.username = username;
 }

 public String getGender() {
  return gender;
 }

 public void setGender(String gender) {
  this.gender = gender;
 }

 public String getPassword() {
  return password;
 }

 public void setPassword(String password) {
  this.password = password;
 }


	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}
}