<%@ page contentType="text/html; charset=UTF-8"%>

<%@include file="mypageHeader.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1 class="question">${genreName}</h1>

<form action="Question.action" method=post>

	<%int i=0; %>

	<c:forEach var="q" items="${question_list}">
		<%i+=1;%>
		<div class="Question-box">
			<div class="question-box__text">${q.text}</div>
			<div class="question-box__answer">
				<input type="radio" name="question<%=i%>"value="1" required>1.${q.answer1}<br>
				<input type="radio" name="question<%=i%>"value="2" required>2.${q.answer2}<br>
				<input type="radio" name="question<%=i%>" value ="3" required>3.${q.answer3}<br>
				<input type= "radio" name="question<%=i%>" value="4" required>4.${q.answer4}<br>
			</div>
		</div>
	</c:forEach>
	<input class="question-box__submit"  type="submit" value="回答">
</form>

<%@include file="mypageFooter.html" %>