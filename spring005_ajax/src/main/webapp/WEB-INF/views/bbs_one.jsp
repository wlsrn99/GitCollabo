<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="resources/js/jquery-3.7.0.js" ></script>
	<script type="text/javascript">
	$(function() {
		//alert("dom tree 메모리에 로딩됨.")
		$('#b1').click(function() {
			$.ajax({
				url: "reply_insert",
				data: {
					oriid: ${dto.id},
					content: $('#reply').val(),
					writer: '${user_id}'
				},
				success: function(views_result) {
					alert("성공!")
					alert(views_result)
					$('#result').append(views_result)
				}, 
				error: function() {
					alert("실패!")
				}//error
			})
		}) //b1
	}) //$
</script>
</head>
<body style="background:yellow; color: blue">
게시판 번호: ${dto.id}<br>
게시판 제목: ${dto.title}<br>
게시판 내용: ${dto.content}<br>
게시판 글쓴이: ${dto.writer}
<hr color="blue">
댓글작성: <input id="reply" style="background: black; color: white;">
<button id="b1" style="background: red; color: white;">작성완료</button>
<hr color="blue">
<div id="result" style="background: lime; height: 150px; width: 300px;">
<c:forEach items="${list}" var="dto">
<img alt="카사진" src="resources/img/carrun.jpeg" width="30" height="30">
  ${dto.writer}, ${dto.content} <br>
</c:forEach>
</div>
</body>
</html>