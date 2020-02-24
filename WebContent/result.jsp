<%@ page contentType="text/html; charset=UTF-8"%>

<%@include file="mypageHeader.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1 class="result">${name}さん${score}点でした。<br>${msg}</h1><br>

<h2 class="result">間違えた問題</h2>

<c:forEach var="q" items="${missList}">
	<div class="result-box">
		<div class="result-box__text">${q.text}</div>
		<div class="result-box__answer">
			<div>正しい回答:${q.answer}</div>
			<br>
			<c:choose>
				<c:when test="${q.answer==1}"><input type="radio" checked="checked" required>1.${q.answer1}<br></c:when>
				<c:when test="${q.answer!=1}"><input type="radio" disabled="disabled" required>1.${q.answer1}<br></c:when>
			</c:choose>
			<c:choose>
				<c:when test="${q.answer==2}"><input type="radio" checked="checked" required>2.${q.answer2}<br></c:when>
				<c:when test="${q.answer!=2}"><input type="radio" disabled="disabled" required>2.${q.answer2}<br></c:when>
			</c:choose>
			<c:choose>
				<c:when test="${q.answer==3}"><input type="radio" checked="checked" required>3.${q.answer3}<br></c:when>
				<c:when test="${q.answer!=3}"><input type="radio" disabled ="disabled" required>3.${q.answer3}<br></c:when>
			</c:choose>
			<c:choose>
				<c:when test="${q.answer==4}"><input type="radio" checked="checked" required>4.${q.answer4}<br></c:when>
				<c:when test="${q.answer!=4}"><input type="radio"disabled="disabled" required>4.${q.answer4}<br></c:when>
			</c:choose>
		</div>
	</div>
</c:forEach><br>

<a class="result" href="mypage.jsp">マイページへ</a>

<%@include file="mypageFooter.html" %>