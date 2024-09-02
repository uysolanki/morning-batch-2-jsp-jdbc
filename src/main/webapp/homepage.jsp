<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="MyError.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<script>
function confirmDelete() {
    return confirm("Are you sure you want to delete this item?");
}
</script>
<body>
<%
String drivername=application.getInitParameter("drivername");
String dburl=application.getInitParameter("dburl");
String dbusername=application.getInitParameter("dbusername");
String dbpassword=application.getInitParameter("dbpassword");

Class.forName(drivername);
Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword);
String query="select * from servletemp";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
%>
<div style="padding: 10px">
<a href="EmployeeRegistration.html" class="btn btn-primary">ADD Employee</a>
</div>
<%--  <a href="deleteEmp.html" class="btn btn-danger">Delete Employee</a> --%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Employee Number</th>
      <th scope="col">Employee Name</th>
      <th scope="col">Salary</th>
      <th scope="col">City</th>
      <th scope="col">Gender</th>
      <th scope="col">Department</th>
      <th scope="col">Date of Birth</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%
   while(rs.next())
   {
    out.print("<tr>");
    out.print("<th scope='row'>" +rs.getInt(1) + "</th>");
    out.print("<th scope='row'>" +rs.getString(2) + "</th>");
    out.print("<th scope='row'>" +rs.getInt(3) + "</th>");
    out.print("<th scope='row'>" +rs.getString(4) + "</th>");
    out.print("<th scope='row'>" +rs.getString(5) + "</th>");
    out.print("<th scope='row'>" +rs.getString(6) + "</th>");
    out.print("<th scope='row'>" +rs.getString(7) + "</th>");
    out.print("<th scope='row'><a href='deleteemp.jsp?teno="+rs.getInt(1)+"' class='btn btn-danger' onclick='return confirmDelete();'>Delete</a></th>");
    out.print("</tr>");
   }
   %>
   </tbody>
</table>
<%
rs.close();
st.close();
con.close();
%>
</body>
</html>