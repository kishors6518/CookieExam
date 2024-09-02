<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	if(request.getParameter("invalidate").equalsIgnoreCase("Yes"))
	{
		session.invalidate();
		out.print("Session Invalidate");
	}
	else if(request.getParameter("invalidate").equalsIgnoreCase("No"))
	{
		out.print("Do not want invalidate");
	}
	else
	{
		out.print("Enter the proper response");
	}
%>

</body>
</html>