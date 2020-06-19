<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>table</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="row">
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <span class="navbar-brand">마당 로컬</span>
                </div>
                <p class="navbar-text ">고객 리스트, 책 리스트, 주문 리스트</p>
                <c:choose>
                <c:when test="${ empty sessionScope.loginuser }">
                <a class="navbar-text pull-right" href="login">로그인</a>
                <a class="navbar-text pull-right" href="register">회원가입</a>
                </c:when>
                <c:when test="${ sessionScope.loginuser == 'admin' }">
                <a class="navbar-text pull-right" href="adminPage?membernum=${ loginuser.membernum }">${ loginuser.email }님 환영합니다.</a>
                <a class="navbar-text pull-right" href="logout">로그아웃</a>
                </c:when>
                <c:otherwise>
                <a class="navbar-text pull-right" href="myPage?membernum=${ loginuser.membernum }">${ loginuser.email }님 환영합니다.</a>
                <a class="navbar-text pull-right" href="logout">로그아웃</a>
                </c:otherwise>
                </c:choose>
            </div>
        </nav>
    </div>
</body>
</html>
