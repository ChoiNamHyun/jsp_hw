<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
	select,input { margin-bottom: 0.5em;}</style>
</head>
<body>
	<% String s= request.getParameter("number");
	   String number=(s==null)? "one": s ;
	   String 하나_selected = number.equals("one")?"selected":"";
	   String 둘_selected= number.equals("two")?"selected":"";
	   String 셋_selected= number.equals("three")?"selected":"";
	   	
	%>
	<form>
		<select name="number">
			<option value="one" <%=하나_selected %>>one</option>
			<option value="two" <%=둘_selected %>>two</option>
			<option value="three" <%=셋_selected %>>three</option>
		</select>
		<br/>
		
		<input type="text" value="<%= number %>"> <br/>
		<input type="submit" value="Ok">
	</form>
</body>
</html>