<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>TEST4</title>
</head>
<body>
<%@page isErrorPage="true" %>
<p>数値を入力してください。</p>
<button onclick="history.back()">戻る</button>
<br>
<p><%=exception %></p>
<table border=1>
<tr>
<td><strong>エラーメッセージ</strong></td>
<td><%= exception.getMessage() %></td>
</tr>
<tr>
<td><strong>例外を文字列に変換</strong></td>
<td><%= exception.toString() %></td>
</tr>
<tr>
<td><strong>スタックトレース</strong></td>
<td>
<%
exception.printStackTrace(new java.io.PrintWriter(out));
%>
</td></tr>
</body>
</html>