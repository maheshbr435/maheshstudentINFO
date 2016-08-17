<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>User Info</title>
    <style>
    #n{
    text-transform: uppercase;
    color:green;
    }
    
    #info{
    text-align:left;
     position: relative;
     padding: 20px;
         background-color:rgba(25, 25, 25, 0.1);
         color: black;
         margin: 50px 500px 50px 500px;
         padding: 20px;
         letter-spacing:1px;
         border-radius:25px;
         }
      b{
      text-transform: uppercase;
      }
       
    </style>
    </head>
 
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
 <div id="info">
    <h4>Personal Information of<span id="n"> ${user.fullname}</span></h4>
 
    Full Name: <b>${user.fullname}</b><br/>
     Email: <b>${user.email}</b><br/>
    Phone: <b>${user.phone }</b><br/>
    Gender: <b>${user.gender }</b><br/>
    University: <b>${user.university }</b><br/>
    Grade: <b>${user.grade }</b><br/>
Goal: <b>${user.goal }</b><br/>
 </div>
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>