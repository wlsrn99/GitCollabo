<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" 
	src="resources/js/jquery-3.7.0.js" ></script>
<script type="text/javascript">
	$(function() {
		//alert("dom tree 메모리에 로딩됨.")
		$('#b1').click(function() {
			$.ajax({
				url: "fruit",
				success: function(views_result) {
					console.log(views_result)
					$('#result').html(views_result)
				}, 
				error: function() {
					alert("실패!")
				}//error
			})
		}) //b1
		$('#b2').click(function() {
			$.ajax({
				url: "tour",
				success: function(views_result) {
					$('#result').html(views_result)
				}, 
				error: function() {
					alert("실패!")
				}//error
			})
		}) //b1
	}) //$
</script>
</head>
<body>
<button id="b1">과일목록 가지고 오자.!</button>
<button id="b2">여행목록 가지고 오자.!</button>
<hr color="red">
<div id="result"></div>
</body>
</html>