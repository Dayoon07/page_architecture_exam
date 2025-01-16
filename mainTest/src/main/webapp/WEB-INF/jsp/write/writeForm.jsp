<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>질문 작성 폼</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

	<button onclick="history.back()">돌아가기</button>

	<div class="max-w-screen-md mx-auto mt-10 p-6 bg-white rounded-lg">
		<h1 class="text-2xl font-bold mb-6 text-center">질문 작성</h1>
		<form action="${ cl }/submitQuestion" method="post" class="space-y-4" autocomplete="off">
			<div>
				<label for="category" class="block text-gray-700 font-medium">분류</label>
				<select id="category" name="category" class="w-full mt-2 p-2 border border-gray-300 rounded-md">
					<option value="db">DB질문</option>
					<option value="java">Java질문</option>
					<option value="spring">Spring질문</option>
					<option value="front">프론트질문</option>
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
