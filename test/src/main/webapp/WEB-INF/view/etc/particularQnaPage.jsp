<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${ qnaQuestionInfo.qnaTitle }</title>
	
	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/resources/js/jquery-3.7.1.js"></script>
</head>
<body class="text-xl">

	<header class="w-full bg-white py-2 px-4 border-gray border-b flex justify-between items-center">
        <div>
        	<img src="#" alt="logo" width="200" height="40" class="border">
        </div>
        <div>
        	<c:if test="${ not empty sessionScope.user }">
        		<p class="py-2 px-4">${ sessionScope.user.name }님 안녕하세요!</p>
        	</c:if>
        </div>
    </header>

    <nav class="w-full items-center">
    	<a href="${ cl }/login"><button id="mainbtn1" class="text-black py-2 px-4">로그인</button></a>
        <a href="${ cl }/main"><button id="mainbtn2" class="text-white py-2 px-4 bg-blue-500 cursor-pointer">자주묻는질문</button></a>
        <c:if test="${ not empty sessionScope.user }">
			<a href="${ cl }/write"><button id="mainbtn3" class="text-black py-2 px-4">질문 작성하기</button></a>
		</c:if>
    </nav>
	
	<div class="container m-4 p-4">
		<button onclick="history.back()" class="cursor-pointer hover:underline">돌아가기</button><br><br>
		<p>분류 : ${ qnaQuestionInfo.category }</p><br>
		<p>질문</p>
		<p>${ qnaQuestionInfo.qnaTitle }</p><br>
		<p>질문 내용</p>
		<textarea rows="15" class="w-full border resize-none" readonly>${ qnaQuestionInfo.qnaContent }</textarea>
	</div>
	
</body>
</html>