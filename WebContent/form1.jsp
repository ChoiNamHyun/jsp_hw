<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<% String s=request.getParameter("form1");
	   int number=(s==null)? -1 : Integer.parseInt(s);
	   ++number;
	 %>
	 
<form>
	<input type="text" name="form1" value="<%= number %>">
	<input type="submit" value="++">
</form>
</body>
</html>