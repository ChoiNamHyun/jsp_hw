<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table { border-collapse: collapse; }
td { padding: 5px; border: solid 1px gray; font-family: arial; }
</style>
<title>Insert title here</title>
</head>
<%
String s=request.getParameter("mid1");
if(s==null) s="0";
int num=Integer.parseInt(s);
%>
<body>

<form>
<input type="text" name="mid1" value="<%=s %>">
<button type="submit" value="단"></button>
</form>
<table>
	
			
</table>
</body>
</html>