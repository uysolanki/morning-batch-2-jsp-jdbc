<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@ page errorPage="MyError.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int eno=Integer.parseInt(request.getParameter("teno"));

String drivername=application.getInitParameter("drivername");
String dburl=application.getInitParameter("dburl");
String dbusername=application.getInitParameter("dbusername");
String dbpassword=application.getInitParameter("dbpassword");

Class.forName(drivername);
Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword);
String query="delete from servletemp where eno=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1, eno);

int n=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("/viewAllEmployees.jsp");
rd.forward(request, response);
ps.close();
con.close();

%>
</body>
</html>