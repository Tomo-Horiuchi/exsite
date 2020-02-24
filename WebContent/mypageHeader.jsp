<%@ page contentType="text/html; charset=UTF-8"%>
<%HttpSession s=request.getSession();%>
<%String name=(String)request.getSession().getAttribute("name");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet/JSP Samples</title>
<style>
	a.head{
	float:left;
	width:330px;
	height:45px;
	font-size:30px;
	text-align: center;
	background-color:lightblue;
	border: 1px solid black;
	}
	div.head{
	float:left;
	width:320px;
	height:45px;
	font-size:30px;
	text-align: center;
	background-color:lightblue;
	border: 1px solid black;
	}

	h2.mypage{
		margin-top:75px;
		margin-left:100px;
		width:800px;
		height:30px;
		text-align: center;
		border: 1px solid black;
		background-color:yellow;
		clear: both;
	}
	.genre{
		margin-top:20px;
		margin-left:150px;
		width:600px;
		height:45px;
		text-align: center;
		border: 1px solid black;
		background-color:lightgreen;
		clear: both;
	}

	h1.question{
		margin-top:75px;
		margin-left:150px;
		width:600px;
		height:80px;
		text-align: center;
		border: 1px solid black;
		background-color:yellow;
		clear: both;
	}
	.question-box{
		margin-bottom:20px;
		margin-left:150px;
		width:600px;
		height:250px;
		border: 1px solid black;
		clear: both;
	}
	.question-box__text{
		margin-top:20px;
		margin-left:150px;
		width:600px;
		height:100px;
		border: 1px solid black;
		clear: both;
	}
	.question-box__answer{
		margin-left:150px;
		width:600px;
		height:150px;
		border: 1px solid black;
		clear: both;
	}
	.question-box__submit{
		margin-left:250px;
		width:400px;
		height:50px;
		text-align: center;
		background-color:yellow;
		clear: both;
	}
	h1.result{
		margin-left:150px;
		width:700px;
		height:100px;
		text-align: center;
		border: 1px solid black;
		background-color:yellow;
		clear: both;
	}
	h2.result{
		margin-left:200px;
		width:600px;
		height:45px;
		text-align: center;
		border: 1px solid black;
		background-color:yellow;
		clear: both;
	}
	h2.msg{
		margin-left:200px;
		width:600px;
		height:45px;
		text-align: center;
		clear: both;
	}
	.result-box{
		margin-bottom:20px;
		margin-left:200px;
		width:600px;
		height:250px;
		border: 1px solid black;
		clear: both;
	}
	.result-box__text{
		width:600px;
		height:100px;
		border: 1px solid black;
		clear: both;
	}
	.result-box__answer{
		width:600px;
		height:150px;
		border: 1px solid black;
		clear: both;
	}
	a.result{
	margin-left:400px;
	width:600px;
	height:80px;
	font-size:30px;
	text-align: center;
	background-color:aqua;
	border: 1px solid black;
	clear: both;
	}



</style>
</head>
<body>

<a class="head" href="mypage.jsp">マイページ</a>
<a class="head" href="toppage.jsp">ログアウト</a>
<div class="head"><%=name%>さん</div>


