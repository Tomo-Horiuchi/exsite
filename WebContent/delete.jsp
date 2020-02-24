<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="header.html" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<sql:query var="list" dataSource="jdbc/book" sql="select * from genre" ></sql:query>
<p>削除するジャンルを選んでください</p>
<form action ="Delete.action" method="post">
	<select name="genre_id">
		<c:forEach var="p" items="${list.rows}">
		<option value="${p.id}">${p.genre_name}</option>

		</c:forEach>
	</select>
	<input type="submit" value="選択">
</form>
<%@include file="footer.html" %>