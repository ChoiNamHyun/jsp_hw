<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu3</title>
</head>
<style>
	table { border-collapse:collapse; }
</style>
<body>
	<table border=1>
		<% for(int i=2;i<10;i++) { %>
			<% if(i==2 || i==6) { %>
				<tr>
			<% } %>
				<td>
			<% for(int j=1;j<10;j++) { %>
				<%=i %> x <%=j %> = <%=i*j %>
				<br/>
			<% } %>
				</td>
				<% if(i==5 || i==9){ %>
					</tr>
			    <% } %>
			<% } %>
	</table>

</body>
</html>