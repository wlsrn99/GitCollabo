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
				url: "computer",
				data: {
					com: $('#com').val(),
					price: $('#price').val(),
					mouse: $('#mouse').val(),
					price2: $('#price2').val()
				},
				success: function(views_result) {
					//alert("성공!")
					//alert(views_result)
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
컴퓨터 종류: <input id="com"><br>
컴퓨터 가격: <input id="price"><br>
마우스 종류: <input id="mouse"><br>
마우스 가격: <input id="price2"><br>
<input id="b1" type="button" value="컴퓨터 구매 항목 확인">
<hr color="red">
<div id="result"></div>
</body>
</html>