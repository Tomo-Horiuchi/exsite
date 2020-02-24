<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="header.html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

p1{font-size:14px;
height:20px;
background-color:yellow;
  text-align:center;
 display:inline-block;
}
.odd{background-color:yellow;
}
h1{font-size:15px;
text-align:center;
  display:inline-block;
border-width:100px;
margin-right: 100px;
top:100px;
width:330px;
height:20px;
background-color:aqua;
  padding: 0.5em 1em;
    margin: 2em 0;
    font-weight: bold;
    border: solid 3px #000000;
}
.box1 p {
    margin: 0;
    padding: 0;
}

div{
margin-top:10px;
padding:20px;

}
.aaa{margin-top:10px;
padding:20px;

}

</style>

<a href="login.jsp"><h1>ログインへ</h1></a>
<a href="toppage.jsp"><h1>トップページ</h1></a>
<a href="newuser.jsp"><h1>新規会員登録はこちら</h1></a>

<form action="Login.action" method="post">
 <c:forEach var="c" items="${user}">
  ${c.password}:${c.name}:${c.address}:${c.id}<br>
  </c:forEach>




<table border="1" align="center"cellpadding="10">
<p1>
<tr bgcolor="yellow">
<td><center>ログイン画面 </center></td>
</tr>
</p1>



<tr>
<td>
パスワード<input type="password" name="password"><br>
<p>メールアドレス<input type="text" name="mailaddress"></p>
<p><div><center><input type="submit" value="ログイン"></center></div></p>
</td>
</tr>
</div>
</table>
</form>




<%@include file="footer.html"%>