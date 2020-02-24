<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<sql:query var="list" dataSource="jdbc/book" sql="select * from genre" ></sql:query>
<html>
	<head>
		<meta charset="UTF-8">
	<style>
		.main{
				height: 100vh;
				width:987px;
				margin:0 10px;
			}
			.genre{
				margin-top: 40px;
				width: 170px;
				height: 35px;
			}

			.text-area{
				margin-top:30px;
				width: 200px;
				height: 200px;
			}

			.text-area__top{
			 	width: 170px;
			 	height: 30px;
			 	line-height: 30px;
				border: 1px solid black;
				color: red;
				display: inline;
				padding: 5px 20px;
			}
			textarea{
				width: 900px;
				height: 170px;
			}



			.answer-area{
				margin-top:10px;
			}

			.answer-top{
				border: 1px solid black;
				color: blue;
				display: inline;
				padding: 5px 30px;
					height: 30px;
				width: 170px;
				line-height: 30px;
			}

			.answer{
				margin: 30px 0 0 5px;


			}
			.solution{
				margin-top: 20px;
			}
			.solution__box{
				margin-left: 10px;
			}
			.solution__top{
				width: 170px;
				border: 1px solid black;
				color: purple;
				display: inline;
				padding: 5px 10px;
			}

			.score{
				display: inline-block;
				margin-top: 20px;
				color:orange;
				border: 1px solid black;
				padding: 5px 10px;
				height: 30px;
				line-height: 30px;
			}

			input{
				padding:5px 0;
			}

			.button{
				float: right;
				background: yellow;
				padding:5px 15px;
			}

			.submit{
				width: 50%;
			}

			.answer-in{
				width:900px;
			}
	</style>
	</head>

	<body>

	<%int i=1;%>
		<c:forEach var="p" items="${fix_list}">
		<% String genre_id = "${p.genre_id}"; %>
		<form action="Fix2.action">
			<input type="hidden" name="id"value="${p.id}">
			<select name="genre_id" class="genre" >
					<option value="0">ジャンル</option>
					<c:forEach var="q" items="${list.rows}">
					<% String select_id = "${q.id}"; %>
						<option value="${q.id}"
							<c:if test="${select_id==genre_id}">
								selected
							</c:if>
						>${q.genre_name}</option>

					</c:forEach>
				</select>

				<div class = "text-area">
					<div class=" text-area__top">問題文</div>
					<div class=" text-area__main"><textarea  cols="50" name="text">${p.text}</textarea></div>
				</div>

				<div class="answer-area">
					<div class="answer-top">選択肢</div>
					<div class="answer">1.<input type="text"class="answer-in" name="answer1"value="${p.answer1 }"></div>
					<div class="answer">2.<input type="text"class="answer-in" name="answer2"value="${p.answer2 }"></div>
					<div class="answer">3.<input type="text"class="answer-in" name="answer3"value="${p.answer3 }"></div>
					<div class="answer">4.<input type="text"class="answer-in" name="answer4"value="${p.answer4 }"></div>
				</div>

				<div class="solution">
					<div class="solution__top">解答</div>
						<select name="answer" class="solution__box">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
				</div>
				<div class="score">点数</div>
					<input type="text" name="score" value="${p.score}">
				点
				<div class="submit">
					<input type="submit" value="更新" class="button">
				</div>
			</form>

			<% i++; %>

		</c:forEach>
	</body>
</html>