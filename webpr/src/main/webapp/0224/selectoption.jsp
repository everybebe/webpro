<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border:1px solid black;
}

</style>
</head>
<body>
<% 
	String uid = request.getParameter("id");
	String name = request.getParameter("name");
	String foods[] = request.getParameterValues("foods");
	String foods2[] = request.getParameterValues("foods2");

	String str = "";
	for(String ss: foods) {
		str += ss + "<br>";
	}
	
	String str2 = "";
	for(String ss: foods2) {
		str2 += ss + "<br>";
	}

%>

<table border="1">

	<tr>
		<td>아이디</td>
		<td><%=uid%></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=name%></td>
	</tr>
	
	<tr>
		<td>좋아하는 음식</td>
		<td><%=str%></td>
	</tr>

	<tr>
		<td>좋아하는 음식</td>
		<td><%=str2%></td>
	</tr>
	
	</table>
</body>
</html>