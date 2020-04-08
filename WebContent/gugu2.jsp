<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu2</title>
</head>
<style>
table { border-collapse: collapse;}
</style>
<body>
	<table border=1>
		<tr>
			<% for(int i=2;i<10;i++){ %>
				<td>
				<% for(int j=1;j<10;j++){ %>
					<%=i %>x<%=j %>=<%=i*j %>
					<br/>
				<% } %>
				</td>
			<% } %>
	   </tr>
	</table>
</body>
</html>