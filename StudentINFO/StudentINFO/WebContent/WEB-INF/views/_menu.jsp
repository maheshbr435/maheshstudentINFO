<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 
 

<style>
ul {
    list-style-type: none;
    margin-top: 50px;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    width:100%;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: white;
}
</style>
  

<ul>
  <li><a href="${pageContext.request.contextPath}/">Home</a></li>
 <!--  <li><a href="${pageContext.request.contextPath}/productList">Product List</a></li>-->
  <li> <a href="${pageContext.request.contextPath}/userInfo">My Account Info</a></li>
  <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
</ul>


 
  
  
    
