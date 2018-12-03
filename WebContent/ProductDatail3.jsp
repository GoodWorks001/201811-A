<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean id="Data" scope ="request"  class ="app.DatailBean"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品詳細画面</title>
</head>
<body>
<center>
<h1>商品紹介</h1>
<table border="1" cellspacing="0" cellpadding="0">
<tr>
<td width ="150">商品名</td><td width = "300"><%=Data.getName() %></td>
</tr>
<tr>
<td>カテゴリ</td><td><%=Data.getCat_id()%></td>
</tr>
<tr>
<td>価格</td><td>&yen;<%=Data.getPrice()%></td>
</tr>
<tr>
<td>在庫</td><td><%=Data.getStock()%></td>
</tr>
<tr>
<td>商品紹介</td><td><%=Data.getMsg() %></td>
</tr>
</table>

<form action="fifth" method="POST">
個数
<input type="hidden" name="pro_name" value="パソコン">
<input type="hidden" name="pro_price" value="<%=Data.getPrice()%>">
<select name="quantity">
<option value="1">1</option>
</select>
<input type = "submit" value ="カートへ">
</form>
<a href="Search.jsp"><input type = "button" value ="戻る"></a>
</center>
</body>
</html>