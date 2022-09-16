<%@ page import="java.util.Map" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Map<String, Object> articleRow = (Map<String, Object>)request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<h1><%=articleRow.get("id") %>번 게시물 수정</h1>
	
	<form action="doModify" method="post">
		<input type="hidden" name="id" value="${param.id}" />
		<div>
			번호 : <%=articleRow.get("id") %>
		</div>
		<div>
			날짜 : <%=articleRow.get("regDate") %>
		</div>
		<div>
			제목 : <input value="<%=articleRow.get("title") %>" autocomplete="off" placeholder="제목을 입력해주세요" name="title" type="text" />
		</div>
		<div>
			내용 : <textarea autocomplete="off" placeholder="내용을 입력해주세요" name="body"><%=articleRow.get("body") %></textarea>
		</div>
		<div>
			<button type="submit">수정</button>
			<a href="list">리스트로 돌아가기</a>
		</div>
	</form>
	
	
</body>
</html>