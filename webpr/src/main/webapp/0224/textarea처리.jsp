<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
	margin: 50px auto;
}

td {
	width: 250px;
	height: 30px;
	text-align: center;
}

td:nth-child(1) {
	background-color: beige;
}

div {
	width:500px;
	border: 1px solid blue;
	margin:50px auto;
	padding: 10px;
	height: 500px;
}
p{
	border: 1px solid green;
}
p:nth:child(1) {
	background-color: pink;
}
p:nth:child(2) {
	height: 85%;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); /* 한글 깨짐 방지 */

	String username = request.getParameter("name");
	String userid = request.getParameter("id");
	String usertel = request.getParameter("tel");
	String userarea = request.getParameter("area");

	
	String rep = userarea.replaceAll("\r", "").replaceAll("\n", "<br>");

%>
<table border="1">

	<tr>
		<td>이름</td>
		<td><%= username%></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%= userid%></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%= usertel%></td>
	</tr>

	<tr>
		<td>내용</td>
		<td><%=rep%></td>
	</tr>

	</table>
	
	<div>
		<p><span>자기소개</span>
		<p><span><%=rep%></span>
		
	</div>	

</body>
</html>