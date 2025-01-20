<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>메인 페이지</title>
	
	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/resources/js/jquery-3.7.1.js"></script>
	<script src="${ cl }/resources/js/tabToggle.js"></script>
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
	
		<div class="flex items-center w-full justify-around bg-gray-800 text-white overflow-hidden">
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'allQuestion')">전체</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'DB질문')">DB질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Java질문')">Java질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Spring질문')">Spring질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Front질문')">Front질문</button>
		</div>
		
		<div class="w-full flex items-center bg-gray-200 p-2">
			<div class="w-1/5 font-semibold text-gray-700">분류</div>
			<div class="w-4/5 font-semibold text-gray-700">질문</div>
		</div>
		
		<div id="allQuestion" class="tabcontent w-full border overflow-y-scroll" style="display: none; min-height: 350px; max-height: 650px;">
		    <c:forEach var="mta" items="${ allQuestion }">
		        <div class="w-full flex items-center border-b border-gray-300 py-2">
		            <div class="w-1/5 text-gray-600 pl-2">${ mta.category }</div>
		            <div class="w-4/5 text-gray-600">
		                <a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a> <!-- 수정된 부분 -->
		            </div>
		        </div>
		    </c:forEach>
		</div>
		
		<div id="DB질문" class="tabcontent w-full border overflow-y-scroll" style="display: none; min-height: 350px; max-height: 650px;">
		    <c:forEach var="mta" items="${ dbQuestion }">
		        <div class="w-full flex items-center border-b border-gray-300 py-2">
		            <div class="w-1/5 text-gray-600 pl-2">${ mta.category }</div>
		            <div class="w-4/5 text-gray-600">
		                <a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a> <!-- 수정된 부분 -->
		            </div>
		        </div>
		    </c:forEach>
		</div>

		<div id="Java질문" class="tabcontent w-full border overflow-y-scroll" style="display: none; min-height: 350px; max-height: 650px;">
			<!-- Java질문 내용 -->
			<c:forEach var="mta" items="${ javaQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600 pl-2">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>

		<div id="Spring질문" class="tabcontent w-full border overflow-y-scroll" style="display: none; min-height: 350px; max-height: 650px;">
			<!-- Spring질문 내용 -->
			<c:forEach var="mta" items="${ springQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600 pl-2">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<div id="Front질문" class="tabcontent w-full border overflow-y-scroll" style="display: none; min-height: 350px; max-height: 650px;">
			<c:forEach var="mta" items="${ frontQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600 pl-2">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<footer class="w-full fixed bottom-4">
		<p class="text-gray-500 text-center">COPYRIGHT 1999.2024 DB INSURANCE Co., Ltd, ALL RIGHTSRESERVED.</p>
	</footer>

</body>
</html>