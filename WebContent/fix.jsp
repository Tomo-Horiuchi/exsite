<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<sql:query var="list" dataSource="jdbc/book" sql="select * from genre" ></sql:query>
<%@include file="header.html" %>

<p>修正するジャンルを選んでください</p>
<form action ="Fix.action" method="post">

	<select name="genre_id">
		<c:forEach var="p" items="${list.rows}">
		<option value="${p.id}">${p.genre_name}</option>

		</c:forEach>
	</select>
	<input type="submit" value="選択">
</form>
<%@include file="footer.html" %>