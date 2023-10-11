<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: pink;">
<c:forEach items="${list}" var="dto">
게시판 번호: ${dto.id}<br>
게시판 제목: 
	<a href="bbs_one?id=${dto.id}">${dto.title}</a><br>
게시판 글쓴이: ${dto.writer}
<hr color="blue">
</c:forEach>
</body>
</html>