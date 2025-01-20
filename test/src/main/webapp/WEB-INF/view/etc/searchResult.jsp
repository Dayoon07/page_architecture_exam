<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${ searchWord }</title>
	
	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/resources/js/jquery-3.7.1.js"></script>
</head>
<body>

	<header class="w-full bg-white border-gray border-b py-2 px-4 flex justify-between items-center">
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
	
	<div class="container mx-auto p-6 rounded-lg">
		<form action="${ cl }/search" method="get" autocomplete="on" class="block w-96 relative">
			<input type="text" name="rs" id="rs" placeholder="E.Travel 의 궁금하신 점을 검색해보세요." required 
				class="w-96 px-4 py-2 border-black border rounded-lg my-3 pr-20">
            <button type="submit" class="absolute top-3 right-0 w-12 h-10 flex justify-center items-center">
                <img src="${ cl }/resources/img/reading-glasses-icon.png" class="block w-7 h-7">
            </button>
		</form>
	
		<div id="allQuestion" class="w-full my-6">
			<div class="w-full flex items-center bg-gray-200 p-2">
				<div class="w-1/5 font-semibold text-gray-700">분류</div>
				<div class="w-4/5 font-semibold text-gray-700">질문</div>
			</div>
			<div class="w-full overflow-y-scroll border" style="min-height: 350px; max-height: 650px;">
				<c:if test="${ not empty searchResult }">
					<c:forEach var="sr" items="${ searchResult }">
						<div class="flex items-center border-b border-gray-300 py-2">
							<div class="w-1/5 text-gray-600 pl-2">${ sr.category }</div>
							<div class="w-4/5 text-gray-600">
								<a href="${ cl }/qna?qnaId=${ sr.id }">${ sr.qnaTitle }</a>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${ empty searchResult }"><p>검색 결과가 없습니다</p></c:if>
			</div>
		</div>
	</div>
	
	<footer class="w-full fixed bottom-4">
		<p class="text-gray-500 text-center">COPYRIGHT 1999.2024 DB INSURANCE Co., Ltd, ALL RIGHTSRESERVED.</p>
	</footer>

</body>
</html>