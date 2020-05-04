<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String name="";
String sex=null;
String err=null;

request.setCharacterEncoding("utf-8");
if(request.getMethod().equals("post")){
	name=request.getParameter("name");
	sex=request.getParameter("sex");
	if(name==null || name.length()==0){
		err="이름을 입력하세요.";
	}
	else if(sex==null|| sex.length()==0){
		err="성별을 입력하세요";
	}
}
%>
<body>
	<form method="post">
		이름</br>	
		<input type="text" name="name" value="<%= name%>">
		</br></br>
		성별</br>
		<input type="radio" name="sex" value="male"<%="남자".equals(sex)?"checked":"" %>%>남자
		<input type="radio" name="sex" value="female"<%="여자".equals(sex)?"checked":"" %> %>>여자
		</br>
		
		<button type="submit">회원등록</button></br>
		
		<table>
			<tr>
				<td>이름</td>
				<td><%= name %>
			</td>
			<tr>
				<td>성별</td>
				<td><%=sex %></td>
			</tr>
		</table>
		
		
	</form>
</body>
</html>