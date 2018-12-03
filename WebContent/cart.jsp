<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="Data" scope ="request"  class ="app.DatailBean"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>カート画面</title>
<style type="text/css">
<!-- th,td{padding-left:70px;} -->
<!-- th,td{padding-right:70px;} -->
</style>
</head>
<body>
<center>
<h1>カート</h1>
<table border="1" cellspacing="0" cellpadding="0">
<tr>
<th>商品名</th>
<th>単価</th>
<th>数量</th>
</tr>
  <tr>
    <td><%=Data.getName() %></td>
    <td>&yen;<%=Data.getPrice()%></td>
    <td><%=request.getAttribute("Quantity") %></td>
  </tr>
  <tr>
    <th colspan="2">消費税</th>
    <td>&yen;<%=(int)(Data.getPrice()*((Integer)request.getAttribute("Quantity")).intValue()*0.08) %></td>
  </tr>
  <tr>
    <th colspan="2">合計金額</th>
    <td>&yen;<%=(int)(Data.getPrice()*((Integer)request.getAttribute("Quantity")).intValue()*1.08) %></td>
  </tr>
</table>
<a href="Search.jsp"><input type = "button" value ="買い物を続ける"></a>
<form action = "cart" method = "POST">
<input type ="submit" value ="購入">
<input type ="hidden" name="name" value="<%=Data.getName() %>">
<input type ="hidden" name="price" value="<%=Data.getPrice()%>">
<input type ="hidden" name="quantity" value="<%=request.getAttribute("Quantity") %>">
</form>
</center>

</body>
</html>