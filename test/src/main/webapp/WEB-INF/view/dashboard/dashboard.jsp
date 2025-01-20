<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>대시보드</title>
</head>
<body>
	<header class="w-full justify-center mb-5">
        <div class="w-full flex justify-between items-center">
            <div></div>
            <div class="flex items-center px-2">
                <div>
                    <ul class="flex items-center">
                        <li class="w-40 py-1 px-2">회사명 : DB화재</li>
                        <li class="w-40 py-1 px-2">담당자 : 담당자</li>
                        <li class="w-40 py-1 px-2">권한 : 관리자</li>
                        <li class="w-52 py-1 px-2">영업담당부서 : 부서명</li>
                    </ul>
                </div>
                <c:if test="${ not empty sessionScope.user }">
	        		<div class="flex items-center">
		        		<p class="py-2 px-4">${ sessionScope.user.name }님 안녕하세요!</p>
	                    <a href="#" class="text-blue-500 underline cursor-pointer pr-5">비밀번호 변경</a>
	                    <form action="${ cl }/logout" method="post" autocomplete="off">
	                    	<input type="hidden" name="id" value="${ sessionScope.user.id }" required readonly>
	                        <button type="submit" class="bg-white text-blue-500 underline cursor-pointer">로그아웃</button>
	                    </form>
	                </div>
	        	</c:if>
            </div>
        </div>
        <div class="max-w-screen-lg mx-auto flex items-center">
            <div>
                <a href="#">
                    <img src="#" alt="#" style="width: 200px; height: 40px;">
                </a>
            </div>
            <div>
                <nav class="flex items-center">
                    <a href="#" class="px-6 py-2 border-l border-r">계약가입</a>
                    <a href="#" class="px-6 py-2 border-l border-r">계약변경</a>
                    <a href="#" class="px-6 py-2 border-l border-r">실적조회</a>
                    <a href="#" class="px-6 py-2 border-l border-r">플랜조회</a>
                    <a href="#" class="px-6 py-2 border-l border-r">키타관리</a>
                </nav>
            </div>
        </div>
    </header>

    <div class="container mx-auto shadow-lg p-5 border-gray-100 border-t">
        <div class="w-full">
            <h1 class="text-3xl mb-5">이달의 실적 : 당월</h1>
            <div class="w-full flex justify-center items-center">
                <div class="bg-orange-400 border-black border rounded-xl w-96 p-6 m-3 shadow-lg hover:shadow-xl transition duration-300 ease-in-out">
                    <div class="text-left">
                        <p class="text-xl text-white font-semibold">보험료</p>
                    </div>
                    <div class="text-right">
                        <p class="text-2xl text-white font-bold">00000 원</p>
                    </div>
                </div>
                <div class="bg-gray-400 border-black border rounded-xl w-96 p-6 m-3 shadow-lg hover:shadow-xl transition duration-300 ease-in-out">
                    <div class="text-left">
                        <p class="text-xl text-white font-semibold">선계약건수</p>
                    </div>
                    <div class="text-right">
                        <p class="text-2xl text-white font-bold">000000 건</p>
                    </div>
                </div>
                <div class="bg-yellow-400 border-black border rounded-xl w-96 p-6 m-3 shadow-lg hover:shadow-xl transition duration-300 ease-in-out">
                    <div class="text-left">
                        <p class="text-xl text-white font-semibold">설계건수</p>
                    </div>
                    <div class="text-right">
                        <p class="text-2xl text-white font-bold">10,000,000,000 건</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container flex mx-auto shadow-lg p-5">
        <div class="w-3/5 p-3 mr-5 border-black border">
            <div class="w-full flex justify-between items-center mb-4">
                <h1 class="text-gray-500">공지사항</h1>
                <a href="#" class="block btn border-black border text-white bg-blue-600 p-1">+전체보기</a>
            </div>
			<div class="w-full text-center flex items-center border-black border bg-blue-300">
				<div class="w-1/5">No</div>
				<div class="w-3/5 border-black border-l border-r">제목</div>
				<div class="w-1/5">등록일</div>
			</div>
            <div class="w-full text-center flex items-center border-black border-b border-r border-l">
				<div class="w-1/5">1</div>
                <div class="w-3/5 border-black border-l border-r">공지사항 제목</div>
				<div class="w-1/5">2024.01.20</div>
			</div>
        </div>
        
        <div class="w-2/5 p-3 ml-5 border-black border">
		    <div class="w-full flex justify-between items-center mb-4">
		        <h1 class="text-gray-500">사용자 ID 관리</h1>
		        <a href="#" class="block btn border-black border text-white bg-blue-600 p-1">+전체보기</a>
		    </div>
		    <div style="width: 540px;" class="text-center flex items-center border-black border">
				<div class="w-2/5">담당자 ID</div>
				<div class="w-1/5 border-black border-l border-r">성명</div>
				<div class="w-2/5">전화번호</div>
			</div>
            <div style="width: 557px;" class="max-h-20 overflow-y-scroll">
            	<c:forEach var="users" items="${ dashboardFindAll }">
            		<div class="w-full text-center flex items-center border-black border-b border-r border-l">
	                    <div class="w-2/5">${ users.userid1 } ${ users.userid2 } ${ users.userid3 }</div>
	                    <div class="w-1/5 border-black border-l border-r">${ users.name }</div>
	                    <div class="w-2/5">${ users.tel }</div>
	                </div>
            	</c:forEach>
            </div>
		</div>
    </div>

    <div class="container px-5 mx-auto flex justify-between mt-5 mb-60">
        <div class="mr-5">
            <a href="#" class="block bg-blue-700 text-white w-60 px-5 py-5 text-center">개인정보처리방침</a>
            <a onclick="openDashboardModal()" class="block bg-blue-700 text-white w-60 px-5 py-5 text-center my-5 cursor-pointer">개인정보동의 필수안내</a>
            <a href="#" class="block bg-blue-700 text-white w-60 px-5 py-5 text-center my-5">보험금청구안내</a>
        </div>
        <div class="w-full ml-5 border">
            <canvas id="myChart"></canvas>
        </div>
    </div>

    <div id="dashboardModal" class="fixed top-0 left-0 w-full h-full bg-gray-500 z-70 opacity-30 hidden"></div>

    <div id="dashboardPopup" class="fixed h-96 bg-white p-2 z-80 hidden" style="width: 600px; top: 30%; left: 50%; transform: translate(-50%, -30%);">
        <p class="text-black text-3xl text-right pr-2 cursor-pointer" id="closeDashboardModalBtn">&times;</p>
    </div>

    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
    <script src="${ cl }/resources/js/dashboardChart.js"></script>
    <script src="${ cl }/resources/js/dashboardModal.js"></script>
</body>
</html>