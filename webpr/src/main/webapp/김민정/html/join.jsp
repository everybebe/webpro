<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color: red;
}
span{
	font-size: 1.5em;  
	color: blue;
}
table {
	border: 2px solid black;
	border-collapse : collapse;
}
td {
	width: 300px;
	height: 50px;
	text-align: center;
}
</style>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8"); /* 한글 깨짐 방지 */
String userId = request.getParameter("id"); 
String userpw = request.getParameter("pw"); 
String userpw2 = request.getParameter("pw2"); 
String username = request.getParameter("name"); 
String usertel = request.getParameter("tel"); 
String usermail = request.getParameter("mail"); 
String userbir = request.getParameter("bir"); 
String homepage = request.getParameter("homepage"); 
String usergender = request.getParameter("gender"); 

%>


<table border="1">
	<tr>
		<td>아이디</td>
		<td><%= userId %></td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td><%=userpw %></td>
	</tr>
	
	<tr>
		<td>비밀번호 확인</td>
		<td><%= userpw2 %></td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><%= username %></td>
	</tr>
	
	<tr>
		<td>휴대폰번호</td>
		<td><%= usertel %></td>
	</tr>
	
	<tr>
		<td>이메일</td>
		<td><%= usermail %></td>
	</tr>
	
	<tr>
		<td>생일</td>
		<td><%= userbir %></td>
	</tr>

	<tr>
		<td>홈페이지</td>
		<td><%= homepage %></td>
	</tr>
	
	<tr>
		<td>성별</td>
		<td><%= usergender %></td>
	</tr>
					
</table>

</body>



</html>