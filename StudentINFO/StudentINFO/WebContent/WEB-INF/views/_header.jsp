<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
#header0{
float: left;
padding:20px;
background-color:grey;
width:100%;
}
#student{
color:white;
font-size:35px;
}
h1 {
    letter-spacing: 3px;
    font-size:50px;
}

#up{
text-transform: uppercase;
font-size:20px;
float:right;
color:#b4b4b4;
position:relative;
}
</style>


<div id="header0">

     <h1><span id="student"><b>Student </b></span><b>INFO</b></h1>
     
  <h1 id="up">Welcome ${user.fullname}</h1>
  
  </div>

