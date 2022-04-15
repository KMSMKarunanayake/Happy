<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="koboCss/kobo.css">
	<link rel="stylesheet" type="text/css" href="koboCss/styles.css">
	<link rel="stylesheet" type="text/css" href="koboCss/header.css">
	
<style>
input[type=text], select {
  width: 100%;
  font-size:20px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=date], select {
  width: 100%;
  font-size:20px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 100%;
  font-size:20px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size:30px;
}



input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}


</style>	
 
 <title> Add Victory Logs </title>
 
 <header>	
 
	<hr>

<ul class="one" position=fixed;>

<li><lable style="font-size:30px;">HAPPY TAILS</lable></li>
<li><a href="#">HOME</a></li>
<li><a href="#">MEMBERS</a></li>
<li><a href="#">PETS</a></li>
<li><a href="victoryViewAll.jsp">VICTORY LOGS</a></li>
<li><a href="#">STOCKS</a></li>
<li><a href="#">ABOUT US</a></li>


</ul>
 	
 </head>
 <hr>
<body>
<!-- Connection for employee table -->	
<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/happytailsdb","root","");
	String sql="Select * from employee_details" ;
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);


%>
	
	<div align=center id ="bor" style="background-image: url(koboImages/vivtoryinsert.jpg);background-repeat: no-repeat;" >
	<form  action="victoryinsert" id = "insertkobo" method = "post" >
	<h1>ADD LOGS</h1><br/>
	
	<!-- user inputs -->
	
		<!-- Coordinators Name get from Employee table -->
	<!-- Coordinators Name get from Employee table -->
	
		Coordinator Name :<br> <select id="fname" name="cname"><% while(rs.next()){%>
  		<option value="<%=rs.getString("empFullName") %>"><%=rs.getString("empFullName") %></option>
<% 
	}
				
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
</select>    
	
	<br><br>Program Type      : <br><input type = "text" name ="program" id ="fname" placeholder = "Program Type"   required><br><br>
	
	City  : <br><input type = "text" name ="city" id ="fname" placeholder = "Conducted city"  required><br><br>
	
	Location           :<br> <input type = "text" name ="location" id ="fname" placeholder = "Conducted location"  required><br><br>
	
    Date              : <br> <input type = "Date" name ="date" id ="fname"  required><br><br>
	
	Budget Rs.           :<br><input type = "number" name ="budget" id ="fname" placeholder = "Budget Rs."  required><br><br>
	
	<br>
	<input  type = "submit"  name = "submit" value = "Submit"><br><br>

	</form>
	<br> <br>
	<a href="victoryViewAll.jsp"><button style= "background-color:#b30000; COLOR:WHITE; width:300px;height:50px;margin-left:20cm;" ><b>Cancel</b></button></a>	
		 <br>	
	 <br><br><br><br><br><br><br>
</div>
</body>
 <hr>
</html>