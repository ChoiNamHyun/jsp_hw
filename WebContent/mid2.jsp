<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	input { padding : 5px ;}
	button { padding : 0.4em 2em ;}
</style>
<title>Insert title here</title>
</head>
<%
String s1=request.getParameter("s1");
if(s1==null) s1="one";
%>
<body>

<form>
	<input type="radio" name="s1" value="one" <%="one".equals(s1) ? "checked":"" %> >one
	<input type="radio" name="s1" value="two" <%="two".equals(s1) ? "checked":"" %>>two
	<input type="radio" name="s1" value="three"<%="three".equals(s1) ? "checked" : ""%>>three
	</br>
	<input type="text" value="<%=s1 %>"></br>
	<button type="submit">OK</button>
	
	
	
	</form>
</body>
</html>