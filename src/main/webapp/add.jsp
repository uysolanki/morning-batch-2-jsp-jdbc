<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int n1,n2,n3;
   double areaCircle(int radius)
   {
	   return 3.14*radius*radius;
   }
%>

<%
n1=Integer.parseInt(request.getParameter("t1"));
n2=Integer.parseInt(request.getParameter("t2"));
n3=n1+n2;
out.print(n3);
out.print(areaCircle(n1));
%>

<h1> The Area is <%= areaCircle(n1) %></h1>
<b><%= n3 %></b>

<%



%>

<h1> </h1>

<%



%>
</body>
</html>