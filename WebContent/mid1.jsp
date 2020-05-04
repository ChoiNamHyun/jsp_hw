<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table { border-collapse: collapse; }
td { padding: 5px; border: solid 1px gray; font-family: arial; }
</style>
<% 
String a=request.getParameter("mid1");
if(a==null) a="0";
%>

<body>
<input type="text" name="mid1" value="<%=a %>">
<button type="submit" value="단"></button>

<table>
	
		<% for(int i=0;i<=9;i++) { %>
			<tr>
				<% for(int j=1;j<=9;j++){ %>
					
					<%=i %> x <%=j %> = <%=i*j %>
					
				<%} %>
			</tr>
		<% } %>
</table>
</body>
</html>