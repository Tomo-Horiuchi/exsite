<%@ page contentType="text/html; charset=UTF-8"%>

<%@include file="mypageHeader.jsp" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:query var="rs" dataSource="jdbc/book" sql="select*from genre"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h2 class="mypage">解きたいジャンルを選択して下さい</h2>

<c:forEach var="p" items="${rs.rows}">
	<form action ="Mypage.action" method="POST">
		<input type="hidden"  name ="genreId" value="${p.id}">
		<input type="hidden" name= "genreName" value="${p.genre_name}">
		<input class="genre" type="submit" value="${p.genre_name}">
	</form>
</c:forEach>

<%@include file="mypageFooter.html" %>