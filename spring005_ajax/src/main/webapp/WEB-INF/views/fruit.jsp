<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL  --%>
<ul type="circle">
<c:forEach items="${list}" var="one">
	<li>${one}</li>
</c:forEach>
</ul>