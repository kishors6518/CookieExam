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
	if(request.getParameter("usname").equals("Kishor") && request.getParameter("psw").equals("root"))
	{
		out.print("Login Succesful");
		out.print("Session id is :"+session.getId());
	}
	else
	{
		response.sendRedirect("Error.jsp");
	}
%>
<form action="InvalidateSession.jsp" method="post">
Invalidate Session: <input type="text" name="invalidate" placeholder="YES/NO"><br>
<input type="submit" value="Invalidate">
</form>

</body>
</html>