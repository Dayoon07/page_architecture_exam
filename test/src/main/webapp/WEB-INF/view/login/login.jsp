<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인 페이지</title>
	
	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/resources/js/jquery-3.7.1.js"></script>
	<script src="${ cl }/resources/js/passwordModal.js"></script>
	<script src="${ cl }/resources/js/loginRegex.js"></script>
</head>
<body>

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
    	<a href="${ cl }/login"><button id="mainbtn1" class="text-white py-2 px-4 bg-blue-500 cursor-pointer">로그인</button></a>
        <a href="${ cl }/main"><button id="mainbtn2" class="text-black py-2 px-4">자주묻는질문</button></a>
        <c:if test="${ not empty sessionScope.user }">
			<a href="${ cl }/write"><button id="mainbtn3" class="text-black py-2 px-4">질문 작성하기</button></a>
		</c:if>
    </nav>

	<div id="loginpage">
		<form action="${ cl }/loginF" method="post"	autocomplete="off" id="loginForm" class="max-w-screen-sm mx-auto border-black border rounded-2xl p-5 mt-10">
			<div class="w-4/5 h-auto mx-auto flex items-center justify-between">
				사용자 아이디
				<div class="flex justify-between items-center">
					<input type="text" name="userid1" id="userid1" required	class="w-28 border-black border px-4 py-1" maxlength="8">
					<input type="text" name="userid2" id="userid2" required class="w-28 border-black border px-4 py-1 mx-3" maxlength="4">
					<input type="text" name="userid3" id="userid3" required class="w-28 border-black border px-4 py-1" maxlength="2">
				</div>
			</div>
			<div class="w-4/5 h-auto mx-auto flex items-center justify-between my-2">
				사용자 비밀번호 <input type="text" name="password" id="password" required class="border-black border px-4 py-1" style="width: 360px;" maxlength="8">
			</div>
			<div class="w-40 ml-44">
				ID 저장 <input type="checkbox">
			</div>
			<div class="w-4/5 ml-44">
				<button type="submit" class="px-10 py-1 bg-gray-400 text-white hover:bg-gray-500" id="submitBtn">로그인</button>
				<button type="button" class="px-10 py-1 bg-gray-400 text-white hover:bg-gray-500" id="passwordChangeModalBtn">비밀번호 변경</button>
			</div>
		</form>
	</div>

	<footer class="w-full fixed bottom-4">
		<p class="text-gray-500 text-center">COPYRIGHT 1999.2024 DB INSURANCE Co., Ltd, ALL RIGHTSRESERVED.</p>
	</footer>
	
	<div id="passwordChangeModal" class="fixed top-0 left-0 w-full h-full z-50 bg-white hidden z-50">
		<div class="w-96 mx-auto p-4 bg-white rounded-lg mt-24 z-60 border">
			<button class="fixed top-4 right-8 text-4xl cursor-pointer" id="passwordChangeModalCloseBtn">&times;</button>
			<form action="${ cl }/changePassword" method="post" autocomplete="off">
				<input type="text" name="password" id="password" value="${ sessionScope.user.password }" 
					class="border py-2 px-4" style="width: 350px;" required><br>
				<button type="submit" class="w-full px-4 py-2 bg-blue-500 mt-4 cursor-pointer text-white hover:bg-blue-400">비밀번호 변경</button>
			</form>
		</div>
	</div>

</body>
</html>