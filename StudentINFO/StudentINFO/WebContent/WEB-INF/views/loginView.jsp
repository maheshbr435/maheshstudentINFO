<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Login</title>
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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
         border: 1px solid black;
         border-radius: 2px;
         color: black;
         font-family: 'Exo',sans-serif;
         font-size: 16px;
         font-weight: 400;
         padding: 6px;
         letter-spacing:1px;
         }
         .login input[type=password]{
         width:350px;
         height: 40px;
         border: 1px solid black;
         background-color: rgba(25, 25, 25, 0.1);
         border-radius: 2px;
         color:black;
         font-family: 'Exo',sans-serif;
         font-size: 16px;
         font-weight: 400;
         padding: 6px;
         margin-top: 5px; 
         letter-spacing:3px;
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
         border: 1px solid #fff;
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
         letter-spacing:4px;
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
            <form name="login" method="POST" action="doLogin">
               <h3>Provide Login Details</h3>
               <div class="login">
                  <input type="text" placeholder="username" value= "${user.username}" name="username"><br>
                  <input type="password" placeholder="password" value= "${user.password}" name="password"><br>
                  Remember me<input type="checkbox" name="rememberMe" value= "Y" /></br>
                  <input type="submit" id="demoButton"  value="Login"></br>
                  <a href="${pageContext.request.contextPath}/">Cancel</a></br>
               </div>
            </form>
            <form method="POST" action="registration">
               Not a member? To Register  
               <input type="submit" value="Click here"/>
            </form>
         </div>
      </div>
      <jsp:include page="_footer.jsp"></jsp:include>
   </body>
</html>