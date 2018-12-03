<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入確認画面</title>
<style type="text/css">
<!-- #button1{float:left;margin-right:10px;} -->
<!-- #button2{float:left;} -->
<!-- #main_button{clear:both;margin-left:420px;margin-top:10px;} -->
<!-- th,td{padding-left:70px;} -->
<!-- th,td{padding-right:70px;} -->
</style>
</head>
<body>
<center>
<h1>購入してよろしいでしょうか？？</h1>
<table border="1" cellspacing="0" cellpadding="0">
  <tr>
    <th>商品名</th>
    <th>単価</th>
    <th>数量</th>
  </tr>
  <tr>
    <td><%=request.getAttribute("name") %></td>
    <td>&yen;<%=request.getAttribute("price") %></td>
    <td><%=request.getAttribute("quantity") %></td>
  </tr>
  <tr>
    <th colspan="2">消費税</th>
    <td>&yen;<%= (int)((((Integer)request.getAttribute("price")).intValue())*(((Integer)request.getAttribute("quantity")).intValue())*0.08) %></td>
  </tr>
  <tr>
    <th colspan="2">合計金額</th>
    <td>&yen;<%= (int)((((Integer)request.getAttribute("price")).intValue())*(((Integer)request.getAttribute("quantity")).intValue())*1.08) %></td>
  </tr>
</table>
<div id="main_button">
<div id="button1">
<a href="Search.jsp"><input type="submit" value="いいえ"></a>
</div>
<div id="button2">
<form action="pch" method="POST">
  <input type="submit" value="はい">
  <input type="hidden" name="name" value="商品名">
  <input type="hidden" name="num" value="数量">
</form>
</div>
</div>
</center>
</body>
</html>