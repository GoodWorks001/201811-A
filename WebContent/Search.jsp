<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%--タブのタイトル表示 --%>
<title>商品検索画面</title>

<%--ページに飛ぶ定義 --%>
<style type="text/css">
<!-- #space{margin-bottom:50px;} -->
</style>
</head>
<body>
<center>

	<%--表題 --%>
	<h1>検索</h1>

	<%--サンプル 1 ～サンプル 3 までのドロップダウンを設置 --%>
	<table>
	<tr>
	<td><input type = "text" name = "search" size="40" maxlength="20"></td></tr>
	</table>
	<pre>

	</pre>
	<font size="2">カテゴリ</font>
	<select name ="sample">
	<option value = "サンプル 1">サンプル 1</option>
	<option value = "サンプル 2">サンプル 2</option>
	<option value = "サンプル 3">サンプル 3</option>
	</select></tr>

	<%--検索ボタンの設置 --%>
	<p><input type = "submit" value = "検索"></p>

	<%--商品の一覧表の定義 --%>
	<table border width="450" id="space">
	<tr>
	<th>商品名</th>
	<th>価格</th>
	<th>詳細</th>
	</tr>

	<tr>
	<td>&nbsp;炊飯器</td>
	<td>&nbsp;&yen;14,800</td>
	<center>
	<%--詳細ボタンを設置 --%>
	<td>
	<form action="search" method="POST">
	<input type = "hidden" name = "pro_cd" value = "1">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type = "submit" value = "詳細">
	</form></td>
	</center>
	</tr>

	<tr>
	<td>&nbsp;GOD</td>
	<td>&nbsp;&yen;10</td>
	<%--詳細ボタンを設置 --%>
	<td>
	<form action="search" method="POST">
	<input type = "hidden" name = "pro_cd" value = "2">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type = "submit" value = "詳細">
	</form></td>
	</tr>

	<tr>
	<td>&nbsp;パソコン</td>
	<td>&nbsp;&yen;99,800</td>
	<%--詳細ボタンを設置 --%>
	<td>
	<form action="search" method="POST">
	<input type = "hidden" name = "pro_cd" value = "3">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type = "submit" value = "詳細">
	</form></td>
	</tr>

	</table>
</body>
</html>