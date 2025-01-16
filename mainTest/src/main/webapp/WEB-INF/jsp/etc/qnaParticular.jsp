<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>${ qnaQuestionInfo.qnaTitle }</title>
</head>
<body class="text-xl">
	
	<div class="container m-4 p-4">
		<button onclick="history.back()" class="cursor-pointer hover:underline">돌아가기</button><br><br>
		<p>분류 : ${ qnaQuestionInfo.category }</p><br>
		<p>질문</p>
		<p>${ qnaQuestionInfo.qnaTitle }</p><br>
		<p>질문 내용</p>
		<p>${ qnaQuestionInfo.qnaContent }</p>
	</div>
	
	<script src="https://cdn.tailwindcss.com"></script>
</body>
</html>