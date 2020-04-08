<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu1</title>
</head>
<style>
table { border-collapse: collapse;}
table td { width: 80px;}

</style>
<body>
	<table border=1>
		<% for(int j=1;j<10;j++){
			out.println("<tr>");
			for(int i=2;i<10;i++){
				out.println("<td>"+i+"x"+j+"= "+i*j+"</td>");
			}
			out.println("</tr>");
		}%>
	</table>
</body>
</html>