<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%--タブのタイトル表示 --%>
<title>ログイン画面</title>

<%--ページに飛ぶ定義 --%>
<form action="login" method="POST">

</head>
<body>
<center>
	<%--表題 --%>
	<h1>ログイン</h1>

	<%--ログイン失敗した場合 --%>
	<%--もしエラーになった場合の定義（nullにはデータが何か入っていることを定義） --%>
	 <% if(request.getAttribute("error")!=null){ %>
	<%--表示します--%>
	 <%= request.getAttribute("error") %>
	 <% }%>

	 <%--それぞれ項目を定義 --%>
<table>
	<tr>
	<th>名前</th>
	<td><input type = "text" name = "name"></td></tr>
	<tr>
	<th>パスワード</th>
	<td><input type = "password" name = "password"></td></tr>

	<%--LOGINボタンの設置 --%>
	</table>
	<p><input type = "submit" value = "LOGIN">
</center>
</form>

</body>
</html>