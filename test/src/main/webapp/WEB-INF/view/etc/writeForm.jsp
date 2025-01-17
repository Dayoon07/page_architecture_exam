<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>질문 작성 폼</title>
	
	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/resources/js/jquery-3.7.1.js"></script>
</head>
<body>

	<header class="w-full bg-white py-2 px-4 border-gray border-b flex justify-between items-center">
        <div>
        	<img src="#" alt="logo" width="200" height="40" class="border">
        </div>
        <div>
        	<c:if test="${ not empty sessionScope.user }">
        		<p class="py-2 px-4">${ sessionScope.user.password }님 안녕하세요!</p>
        	</c:if>
        </div>
    </header>

    <nav class="w-full items-center">
    	<a href="${ cl }/login"><button id="mainbtn1" class="text-black py-2 px-4">로그인</button></a>
        <a href="${ cl }/main"><button id="mainbtn2" class="text-black py-2 px-4">자주묻는질문</button></a>
        <c:if test="${ not empty sessionScope.user }">
			<a href="${ cl }/write"><button id="mainbtn3" class="text-white py-2 px-4 bg-blue-500 cursor-pointer">질문 작성하기</button></a>
		</c:if>
    </nav>

	<button onclick="history.back()" class="m-5 hover:underline">돌아가기</button>

	<div class="max-w-screen-md mx-auto p-6 bg-white rounded-lg">
		<h1 class="text-2xl font-bold mb-6 text-center">질문 작성</h1>
		<form action="${ cl }/qnaQuestion" method="post" class="space-y-4" autocomplete="off">
			<div>
				<label for="category" class="block text-gray-700 font-medium">분류</label>
				<select id="category" name="category" class="w-full mt-2 p-2 border border-gray-300 rounded-md">
					<option value="DB">DB질문</option>
					<option value="Java">Java질문</option>
					<option value="Spring">Spring질문</option>
					<option value="Front">프론트질문</option>
				</select>
			</div>
			<div>
				<label for="qnaTitle" class="block text-gray-700 font-medium">질문 제목</label>
				<input type="text" id="qna_title" name="qnaTitle" required
					class="w-full mt-2 p-2 border border-gray-300 rounded-md" />
			</div>
			<div>
				<label for="qnaContent" class="block text-gray-700 font-medium">질문 내용</label>
				<textarea id="qna_content" name="qnaContent" required rows="6"
					class="w-full mt-2 p-2 border border-gray-300 rounded-md"></textarea>
			</div>
			<div>
				<button type="submit"
					class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition">
					작성 완료
				</button>
			</div>
		</form>
	</div>

</body>
</html>
