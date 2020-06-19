<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>table</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<style>
	  input {
	    width: 100%;
	    height: 100%;
	    border: 0px;
	    background-color: rgba( 255, 255, 255, 0.0 );
	  }
	</style>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="row"><!-- 책 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">로그인 하기</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">                    
                        <tbody>
                        <form id="login-form" role="form" action="login" method="post">
                        <tr>    
                            <td class="hidden-xs">회원 아이디</td>
                            <td>
                            <input type="text" id='memberid' name='memberid'></input>
                            </td>
                        </tr>                        
                        <tr data-status="completed">
                            <td class="col-text">회원 비밀번호</td>
                            <td>
                            <input type="text" id='passwd' name='passwd'></input>
                            </td>                            
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="login-button" type="button" class="btn btn-primary" onclick="location.href='home'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>로그인 하기</button>
                                <button id="forgetpasswd-button" type="button" class="btn btn-primary" onclick="location.href='forgetPasswd'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>비밀번호 찾기</button>
                            </div>
                        </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        
                    </div>
                </div>
            </div>
        </div>
    </div><!-- 책 리스트 끝-->
    <script type="text/javascript">
	$(function() {
		$('#login-button').on('click', function(event) {
			//1. 유효성 검사				
			if ($('#memberid').val() == '') {
				alert('회원 아이디를 입력하세요');
				$('#memberid').focus();
				return;
			}
			if ($('#passwd').val() == '') {
				alert('회원 비밀번호를 입력하세요');
				$('#passwd').focus();
				return;
			}
			//2. 오류가 없다면 서버로 전송
			$('#login-form').submit();
		});
	});
  </script>
</body>
</html>
