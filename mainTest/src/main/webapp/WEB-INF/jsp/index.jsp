<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>메인 페이지</title>
</head>
<body class="bg-gray-100 text-gray-900">

	<a href="${ cl }/write" class="block text-center bg-blue-500 text-white py-2 px-4 rounded-md mb-6 hover:bg-blue-600 transition">질문 작성하기</a>

	<div class="container mx-auto p-6 rounded-lg">
		<div class="flex items-center w-full justify-around bg-gray-800 text-white rounded-md overflow-hidden">
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'DB질문')">DB질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Java질문')">Java질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Spring질문')">Spring질문</button>
			<button class="tablinks block w-60 py-2 px-4 text-center hover:bg-gray-600 transition" onclick="openTab(event, 'Front질문')">Front질문</button>
		</div>

		<div id="DB질문" class="tabcontent w-full my-6" style="display: none;">
			<div class="w-full flex items-center bg-gray-200 p-2 rounded-md">
				<div class="w-1/5 font-semibold text-gray-700">분류</div>
				<div class="w-4/5 font-semibold text-gray-700">질문</div>
			</div>
			<c:forEach var="mta" items="${ dbQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>

		<div id="Java질문" class="tabcontent w-full my-6" style="display: none;">
			<!-- Java질문 내용 -->
			<div class="w-full flex items-center bg-gray-200 p-2 rounded-md">
				<div class="w-1/5 font-semibold text-gray-700">분류</div>
				<div class="w-4/5 font-semibold text-gray-700">질문</div>
			</div>
			<c:forEach var="mta" items="${ javaQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>

		<div id="Spring질문" class="tabcontent w-full my-6" style="display: none;">
			<!-- Spring질문 내용 -->
			<div class="w-full flex items-center bg-gray-200 p-2 rounded-md">
				<div class="w-1/5 font-semibold text-gray-700">분류</div>
				<div class="w-4/5 font-semibold text-gray-700">질문</div>
			</div>
			<c:forEach var="mta" items="${ springQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<div id="Front질문" class="tabcontent w-full my-6" style="display: none;">
			<div class="w-full flex items-center bg-gray-200 p-2 rounded-md">
				<div class="w-1/5 font-semibold text-gray-700">분류</div>
				<div class="w-4/5 font-semibold text-gray-700">질문</div>
			</div>
			<c:forEach var="mta" items="${ frontQuestion }">
				<div class="w-full flex items-center border-b border-gray-300 py-2">
					<div class="w-1/5 text-gray-600">${ mta.category }</div>
					<div class="w-4/5 text-gray-600">
						<a href="${ cl }/qna?qnaId=${ mta.id }">${ mta.qnaTitle }</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<!--
		CREATE TABLE mainTest(
		    id NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1 NOCACHE) PRIMARY KEY,
		    category VARCHAR2(50 CHAR) NOT NULL,
		    qna_title VARCHAR2(500 CHAR) NOT NULL,
		    qna_content CLOB NOT NULL,
		    views NUMBER DEFAULT 0
		);
	-->

	<script src="https://cdn.tailwindcss.com"></script>
	<script src="${ cl }/static/js/tabToggle.js"></script>
</body>
</html>