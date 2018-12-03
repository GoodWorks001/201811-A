<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入完了画面</title>
<style type="text/css">
<!-- #button1{float:left;margin-right:10px;} -->
<!-- #button2{float:left;} -->
<!-- #main_button{clear:both;margin-left:400px;} -->
</style>
</head>
<body>
<center>
<h1>お買い上げありがとうございました！</h1>
<div id="main_button">
<div id="button1">
<a href="Search.jsp"><input type="button" value="買い物を続ける"></a>
</div>
<div id="button2">
<form action="login" method="POST">
  <input type="submit" value="ログアウト">
</form>
</div>
</div>
</center>
</body>
</html>