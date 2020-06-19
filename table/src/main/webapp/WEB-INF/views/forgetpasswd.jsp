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
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">비밀번호 찾기</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                <p id="memberid-message">가입시 등록한 아이디를 입력해주세요</p>
                <p id="email-message">가입시 등록한 이메일을 입력해주세요</p>
                <p id="passwd-message">가입시 등록한 비밀번호를 변경해주세요</p>
                    <table id="mytable" class="table table-striped table-bordered table-list">                    
                        <tbody>
                        <form id="passwdUpdate-form" role="form" method="post">
                        <tr>    
                            <td>
                            <input type="text" id='memberid' name='memberid' placeholder="회원 아이디"></input>
                            <input type="text" id='email' name='email' placeholder="회원 이메일"></input>
                            <input type="text" id='passwd' name='passwd' placeholder="회원 비밀번호"></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                        <div class="pull-left">
    						<button id="action-button" type="button" class="btn btn-primary">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
$(function() {
	
	$("#email-message").hide();
	$("#passwd-message").hide();
	$("#email").hide();
	$("#passwd").hide();
	$('#action-button').text("아이디 확인");	

	// 태그 가려 놓기

	$('#action-button').on('click', function (event) {
		event.preventDefault();
		var txt = $(this).text(); // #action-button의 텍스트 값 가져오기

		// 아이디 확인 일때
		if (txt == "아이디 확인") {
			var id = $('#memberid').val(); // memberid 값 가져오기
			if (id.length == 0) {
				alert('아이디를 입력하세요');
				$('#memberid').focus();
				return;
			}
			
			$.ajax({
				"url": "memberidConfirm",
				"method" : "post",
				"data": { "memberid": id }, //id값 하고 가져온 이름 값
				"success": function(result, status, xhr) {
					if (result == 'available') {
						$("#memberid-message").hide();
						$("#memberid").hide();
						
						$("#email-message").show();
						$("#email").show();
						
						$('#action-button').text("이메일 확인"); // 이메일 확인으로 변경
						
						alert('아이디가 확인되었습니다.');	
					} else {
						alert('유효한 아이디가 아닙니다.');
					}
				},
				"error": function(xhr, status, data) {
					alert('오류가 발생했습니다.');
				} 
			});
			
		}
		
		// 이메일 확인 일때
		if (txt == "이메일 확인") {
			var email = $('#email').val(); // memberid 값 가져오기
			if (email.length == 0) {
				alert('이메일을 입력하세요');
				$('#email').focus();
				return;
			}
			
			$.ajax({
				"url": "emailConfirm",
				"method" : "post",
				"data": { "email": email }, //id값 하고 가져온 이름 값
				"success": function(result, status, xhr) {
					if (result == 'available') {
						$("#email-message").hide();
						$("#email").hide();
						
						$("#passwd-message").show();
						$("#passwd").show();
						
						$('#action-button').text("비밀번호 수정"); // 비밀번호 수정으로 변경
						
						alert('이메일이 확인되었습니다.');	
					} else {
						alert('유효한 이메일이 아닙니다.');
					}
				},
				"error": function(xhr, status, data) {
					alert('오류가 발생했습니다.');
				} 
			});
			
		}

		// 비밀번호 수정 일때
		if (txt == "비밀번호 수정") {
			var id = $('#memberid').val();
			var email = $('#email').val();			
			var passwd = $('#passwd').val(); // memberid 값 가져오기
			if (passwd.length == 0) {
				alert('비밀번호를 입력하세요');
				$('#passwd').focus();
				return;
			}
			
			$.ajax({
				"url": "passwdUpdate",
				"method" : "post",
				"data": { "memberid": id , "email": email, "passwd": passwd }, //id값 하고 가져온 이름 값
				"success": function(result, status, xhr) {
					if (result == 'success') {												
						alert('비밀번호가 수정 되었습니다.');	
						location.href = 'login';
					} else {
						alert('비밀번호가 수정되지 않았습니다.');
					}
				},
				"error": function(xhr, status, data) {
					alert('오류가 발생했습니다.');
				} 
			});
						
		}
		
	});
});
	</script>
</body>
</html>
