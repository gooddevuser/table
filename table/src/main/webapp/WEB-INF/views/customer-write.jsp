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
<div class="row"><!-- 고객 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">고객 리스트</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>    
                            <th class="hidden-xs">고객 번호</th>
                            <th class="col-text">고객 이름</th>
                            <th class="col-text">주소</th>
                            <th class="col-tools">연락처</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form id="customer-write-form" role="form" action="customerWrite" method="post">
                        <tr data-status="completed">
                            <td>
                            <input type="text" id='custid' name='custid'></input>
                            </td>
                            <td>
                            <input type="text" id='name' name='name'></input>
                            </td>
                            <td>
                            <input type="text" id='address' name='address'></input>
                            </td>
                            <td>
                            <input type="text" id='phone' name='phone'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="write-button" type="button" class="btn btn-primary" onclick="location.href='customerWrite'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>글쓰기</button>
                            </div>
<div class="pull-left">
    
    							<button type="button" class="btn btn-primary" onclick="location.href='customerList'">
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
    </div><!-- 고객 리스트 끝-->
    <script type="text/javascript">
	$(function() {
		$('#write-button').on('click', function(event) {
			//1. 유효성 검사				
			if ($('#custid').val() == '') {
				alert('고객 번호를 입력하세요');
				$('#custid').focus();
				return;
			}
			if ($('#name').val() == '') {
				alert('고객 이름을 입력하세요');
				$('#name').focus();
				return;
			}
			if ($('#address').val() == '') {
				alert('주소를 입력하세요');
				$('#address').focus();
				return;
			}
			if ($('#phone').val() == '') {
				alert('연락처를 입력하세요');
				$('#phone').focus();
				return;
			}

			//2. 오류가 없다면 서버로 전송
			$('#customer-write-form').submit();
		});
	});
  </script>
</body>
</html>
