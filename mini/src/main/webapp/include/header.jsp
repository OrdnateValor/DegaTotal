<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<!-- Project Sources -->
<script src="/resources/script.js"></script>
<link rel="stylesheet" type="text/css" href="../include/OVStyle.css">
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--BootStarp 4.1.1  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css">
<!-- summernote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<!-- header page -->
<nav class='navbar sticky-top navbar-expand navbar-dark bg-secondary'>
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/main.jsp"><img class="nav-item"
				src="/resources/imgs/destiny2_icon_384.png" width="64"> 데가 종합</a>
		</div>
		<a class="btn btn-dark btn-lg" href="/postList.do">번지 소식</a> <a
			class="btn btn-dark btn-lg" href="/itemList.do">아이템 DB</a>
		<div>
			<c:choose>
				<c:when test="${sid != null }">
					<!-- 로그인 상태 -->
					<div class="nav-item d-flex justify-content-around">
						<a href="/Member/userMypage.jsp"> <img
							src="/resources/imgs/${userImg }" class="image" width="48rem">
						</a>
						<div class="align-self-center">
							<a href="/Member/userMypage.jsp" class="col-sm-4" style="color: white; font-weight: bold;"> ${userNm } 님</a>
							<a href="javascript:logout()" class="btn btn-sm btn-primary">로그아웃</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<!-- 로그아웃 상태 -->
					<a class="btn btn-primary btn-sm" href="/Member/loginUser.jsp">Login</a>
					<a class="btn btn-success btn-sm" href="/Member/userJoin.jsp">JoinUs</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
