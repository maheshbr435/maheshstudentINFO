<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Create Product</title>
    <style>
      #main{
         text-align:center;
         }
         #form1{
         display: inline-block;
         }
         div.cit {
         background-color:rgba(25, 25, 25, 0.1);
         color: black;
         margin: 20px 40px 20px 40px;
         padding: 20px;
         letter-spacing:3px;
         } 
         .login{
         position: relative;
         widows: 250px;
         padding: 10px;
         display: inline-block;
         align:center;   
         }
         .login input[type=text]{
         width:350px;
         height: 40px;
         background-color: rgba(25, 25, 25, 0.1);
         border: 0px solid black;
         border-radius: 2px;
         color: black;
         font-family: 'Exo',sans-serif;
         font-size: 16px;
         font-weight: 400;
         padding: 6px;
         letter-spacing:1px;
          margin-top:3px;
         }
         .login input[type=password]{
         width:350px;
         height: 40px;
         border: 0px solid black;
         background-color: rgba(25, 25, 25, 0.1);
         border-radius: 2px;
         color:black;
         font-family: 'Exo',sans-serif;
         font-size: 16px;
         font-weight: 400;
         padding: 6px;
         margin-top: 3px; 
         letter-spacing:1px;
         }
           .login input[type=submit]:hover{
         outline: none;
         background:green;
         color:white;
         }
        
         .login input[type=submit]{
         width:350px;
         height: 45px;
         background:rgba(25, 25, 25, 0.1);
         border: 0px solid #fff;
         cursor: pointer;
         border-radius: 5px;
         color:black;
         font-family: 'Exo',sans-serif;
         font-size: 16px;
         font-weight: 400;
         padding: 6px;
         margin-top: 10px;
         letter-spacing:4px;
          
         }
         
         .login input[type=text]:focus{
         text-align:center;
         outline: none;
         border: 1px solid black;
         background-color: rgba(25, 25, 25, 0.5);
         letter-spacing:3px;
        
         }
         .login input[type=password]:focus{
         outline: none;
         border: 1px solid black;
         background-color: rgba(25, 25, 25, 0.5);
         letter-spacing:3px;
         text-align:center;
         }
    </style>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
    
    
    
 
     <div id="main">
         <p style="color: red;">${errorString}</p>
         <div class="cit">
            <form name="login" method="POST" action="doRegistration">
               <h3>Provide Login Details</h3>
               <div class="login">
               <input type="text" placeholder="username" value= "${user.username}" name="username" required><br>
                  <input type="text" placeholder="password" value= "${user.password}" name="password" required><br>
                     <input type="text" placeholder="fullname" value= "${user.fullname}" name="fullname" required><br>
                        <input type="text" placeholder="email" value= "${user.email}" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required><br>
                           <input type="text" placeholder="phone" value= "${user.phone}" name="phone" pattern="(?:\(\d{3}\)|\d{3})[- ]?\d{3}[- ]?\d{4}" required><br>
                              <input type="text" placeholder="gender" value= "${user.gender}" name="gender" pattern="M|F|m|f" required title="m or f"><br>
                                 <input type="text" placeholder="university" value= "${user.university}" name="university" required><br>
                                    <input type="text" placeholder="grade" value= "${user.grade}" name="grade" pattern="A|B|C|D|a|b|c|d|f|F|" required title="EX: A (A,B,C,D,F)"><br>
                                       <input type="text" placeholder="goal" value= "${user.goal}" name="goal"><br>
                 
                  <input type="submit" id="demoButton"  value="Register"><br/>
                  <a href="${pageContext.request.contextPath}/">Cancel</a><br/>
               </div>
            </form>
            
         </div>
      </div>
    <jsp:include page="_footer.jsp"></jsp:include>
    
 </body>
</html>