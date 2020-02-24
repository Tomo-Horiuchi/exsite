<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style>
			.main{
				width: 987px;
				height: 100vh;
				text-align: center;
				background: yellow;
				position: relative;
			}
			a{
				font-size: 60px;
				text-decoration: none;
			}
			.main-box{
				position: absolute;
				top:0;
				left:0;
				right:0;
				bottom: 0;
				width: 50%;
    			margin: auto;
    			height: 50%;
    			text-align: center;
			}

			.main__box{
				width: 80%;
				border-bottom: 5px solid blue;
				margin-top: 60px;
			}
		</style>
	</head>
	<body>
		<div class="main">
			<div class="main-box">
				<div class="main__box">
					<a href="add.jsp">問題の作成</a>
				</div>
				<div class="main__box">
					<a href="delete.jsp"> 問題の削除</a>
				</div>
				<div class="main__box">
					<a href="fix.jsp">問題の修正</a>
				</div>
			</div>
		</div>
	</body>
</html>