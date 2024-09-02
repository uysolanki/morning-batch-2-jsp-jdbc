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
String ename=request.getParameter("tename");
int sal=Integer.parseInt(request.getParameter("tsal"));
String city=request.getParameter("scity");
String gender=request.getParameter("rgen");
String dept=request.getParameter("sdept");
String dob=request.getParameter("ddob");

String drivername=application.getInitParameter("drivername");
String dburl=application.getInitParameter("dburl");
String dbusername=application.getInitParameter("dbusername");
String dbpassword=application.getInitParameter("dbpassword");

//try
//{
	Class.forName(drivername);
	Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword);
	String query="insert into servletemp values(?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setInt(1, eno);
	ps.setString(2, ename);
	ps.setInt(3, sal);
	ps.setString(4, city);
	ps.setString(5, gender);
	ps.setString(6, dept);
	ps.setString(7, dob);
	
	int n=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("/homepage.jsp");
	rd.forward(request, response);
	ps.close();
	con.close();
//}
//catch(Exception e1)
//{
//	System.out.println(e1);
//}


%>

</body>
</html>