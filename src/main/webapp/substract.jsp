<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page errorPage="MyError.jsp" %>
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<%-- <h1> Todays Date <%= new Date() %></h1>--%>
		<form>
		Enter Number 1 : <input type="text"	name="t1"> <br>
		Enter Number 2 : <input type="text"	name="t2"> <br>
			<input type="submit" name="s1" value="ADD">
		</form>
</body>
</html>		

		<%! int n1,n2,n3;
		double areaCircle(int radius)
		{
			return(Math.PI*radius*radius);
		}
		%>
		<%
		if(request.getParameter("s1")!=null)
		{
		n1=Integer.parseInt(request.getParameter("t1"));
		n2=Integer.parseInt(request.getParameter("t2"));
		n3=n1/n2;
		out.print(n3);
		}
		%>
		<h1><%= areaCircle(n3) %></h1>
