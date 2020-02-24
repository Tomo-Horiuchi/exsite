<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="UTF-8">
		<style>
			body{
				width: 980px;
			}
			.button{
				float: right;
				background: yellow;
				width: 100px;
				height: 30px;
				margin-top: 30px;
			}

			.text-area{
				margin-top:30px;
				width: 900px;
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
			.text-area__main{
				width: 900px;
				height: 100px;
				border: 1px solid black;
			}
			.clearfix::after {
  				content: "";
			  	display: block;
			  	clear: both;
			}
		</style>
	</head>

	<body>


		<c:forEach var="p" items="${delete_list}">
			<div class = "text-area">
				<form action="Delete2.action" method="post" class="clearfix">
					<div class=" text-area__top">問題文</div>
					<div class=" text-area__main">	${p.text}</div>
					<input type="hidden"  name="id"value="${p.id}">
					<input type="submit" value="削除" class="button">
				</form>
			</div>
		</c:forEach>
	</body>
</html>