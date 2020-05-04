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
int num=0;
if(s!=null){
	num=Integer.parseInt(s);
}
else{
	s="0";
}
%>
<body>

<form>
<input type="text" name="mid1" value="<%=s %>">
<button type="submit">단</button>
</form>

<table>
	<%for(int i=1;i<=9;i++){ %>
		<tr>
			<td><%=s %> x <%=i %> = <%= num*i %></td>
		</tr>
	<% } %>			
</table>
</body>
</html>