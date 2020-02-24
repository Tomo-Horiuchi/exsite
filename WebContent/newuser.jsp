<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="header.html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<sql:query var="list" dataSource="jdbc/book" sql="select * from user" ></sql:query>

<style>
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
.button_wrapper{
   text-align:center;

}
.table {
    border-collapse: separate;
    border-spacing: 3px;
}






</style>
<a href="login.jsp"><h1>ログインへ</h1></a>
<a href="toppage.jsp"><h1>トップページ</h1></a>
<a href="newuser.jsp"><h1>新規会員登録はこちら</h1></a>



<form action="NewUser.action" method="post">
<c:forEach var="c" items="${user}">
    ${c.mailaddress }
    $c.name}
    ${c.password }
</c:forEach>

<div class="button_wrapper">
<table border="1" align="center" cellpadding="15">

<tr bgcolor="yellow">
<td>新規会員登録画面</td>
</tr>


<tr>
<td>ユーザー名<input type="text" name="username"><br>
<p>メールアドレス<input type="text" name="address"><br></p>
<p><font color="red">※英数字8桁以上</font></p>
パスワード<input type="password" name="password"><br>

<p><input type="submit" value="登録" style="width:100px;" cellpacing="10"></p>
</td>
</tr>
</div>
</table>

</form>






<%@include file="footer.html"%>