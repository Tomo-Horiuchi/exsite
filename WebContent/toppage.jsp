<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="header.html"%>
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
box1 p {
    margin: 0;

    padding: 0;
}
.button_wrapper{
   text-align:center;
   margin-top:50px;
.button_wrapper:input{
margin: 0px 20px;
display:inline-block;
border-width:50px;
margin-right: 50px;
top:100px;
width:200px;
height:20px;
background-color:aqua;
  padding: 0.5em 1em;
    margin: 2em 0;
    font-weight: bold;
    border: solid 3px #000000;

}
box1 p {
    margin: 0;

    padding: 0;
}


}


</style>

<a href="login.jsp"><h1>ログインへ</h1></a>
<a href="toppage.jsp"><h1>トップページ</h1></a>
<a href="newuser.jsp"><h1>新規会員登録はこちら</h1></a><br>



<form action="Login.action" method="post">
<div class=button_wrapper>
<table border="1" align="center"cellpadding="5" height=40 >
<tr bgcolor="aqua" >
<td>
<a href="login.jsp"><h2>ログイン画面へ</h2></a><br>
</td>
</tr>

<tr bgcolor="aqua">
<td>
<p><a href="newuser.jsp"><h2>新規会員登録はこちら</h2></a></p>
</td>
</tr>
</div>
</table>
</form>
<%@include file="footer.html"%>