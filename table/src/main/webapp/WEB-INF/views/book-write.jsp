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
                            <h3 class="panel-title">책 리스트</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        
                        <tr>    
                            <th class="hidden-xs">책 번호</th>
                            <th class="col-text">책 이름</th>
                            <th class="col-text">출판사</th>
                            <th class="col-tools">가격</th>
                        </tr>
                        
                        </thead>
                        <tbody>
                        <form id="book-write-form" role="form" action="bookWrite" method="post">
                        <tr data-status="completed">
                            <td>
                            <input type="text" id='bookid' name='bookid'></input>
                            </td>
                            <td>
                            <input type="text" id='bookname' name='bookname'></input>
                            </td>
                            <td>
                            <input type="text" id='publisher' name='publisher'></input>
                            </td>
                            <td>
                            <input type="text" id='price' name='price'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="write-button" type="button" class="btn btn-primary" onclick="location.href='bookWrite'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>글쓰기</button>
                            </div>
<div class="pull-left">
    
    							<button type="button" class="btn btn-primary" onclick="location.href='bookList'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>목록보기</button>
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
		$('#write-button').on('click', function(event) {
			//1. 유효성 검사				
			if ($('#bookid').val() == '') {
				alert('고객 번호를 입력하세요');
				$('#bookid').focus();
				return;
			}
			if ($('#bookname').val() == '') {
				alert('고객 이름을 입력하세요');
				$('#bookname').focus();
				return;
			}
			if ($('#publisher').val() == '') {
				alert('주소를 입력하세요');
				$('#publisher').focus();
				return;
			}
			if ($('#price').val() == '') {
				alert('연락처를 입력하세요');
				$('#price').focus();
				return;
			}

			//2. 오류가 없다면 서버로 전송
			$('#book-write-form').submit();
		});
	});
  </script>
</body>
</html>
