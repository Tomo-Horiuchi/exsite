<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<sql:query var="list" dataSource="jdbc/book" sql="select * from genre" ></sql:query>
<html>
	<head>
		<meta charset="UTF-8">

		<style>

			body{
				width: 900px;
			}
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
			.ans{
				margin: 30px 0 0 5px;
			}
			.answer{

				width: 850px;

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
				width: 100px;
				height: 30px;
			}

			.submit{
				width: 900px;
			}

			.answer-in{
				width:900px;
			}
		</style>
	</head>
	<body>
		<div class="main">
			<form action="Add.action" method="POST" id="form">
				<select name="genre_id" class="genre">
					<option value="0">ジャンル</option>
					<c:forEach var="p" items="${list.rows}">
						<option value="${p.id}">${p.genre_name}</option>

					</c:forEach>
				</select>

				<div class = "text-area">
					<div class=" text-area__top">問題文</div>
					<div class=" text-area__main"><textarea rows="6" cols="50" name="text"></textarea></div>
				</div>

				<div class="answer-area">
					<div class="answer-top">選択肢</div>
					<div class="ans">1.<input type="text" name="answer1" class="answer"></div>
					<div class="ans">2.<input type="text" name="answer2" class="answer"></div>
					<div class="ans">3.<input type="text" name="answer3" class="answer"></div>
					<div class="ans">4.<input type="text" name="answer4" class="answer"></div>
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
					<input type="text" name="score" value="0">
				点
				<div class="submit">
					<input type="submit" value="追加" class="button">
				</div>
			</form>
		</div>
	</body>
</html>