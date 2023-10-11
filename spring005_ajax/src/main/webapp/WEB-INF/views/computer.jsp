<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
ajax 호출의 결과!!
<hr>
<table>
	<tr>
		<td>컴퓨터 종류</td>
		<td>${computerDTO.com}</td>
	</tr>
	<tr>
		<td>컴퓨터 가격</td>
		<td>${computerDTO.price}원</td>
	</tr>
	<tr>
		<td>마우스 종류</td>
		<td>${computerDTO.mouse}</td>
	</tr>
	<tr>
		<td>마우스 가격</td>
		<td>${computerDTO.price2}원</td>
	</tr>
	<tr>
		<td>총합계</td>
		<td>${total}원</td>
	</tr>
</table>