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
	    width: 104px;
	    height: 100%;
	    border: 0px;
	    background-color: rgba( 255, 255, 255, 0.0 );
	  }
	</style>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
<jsp:include page="/WEB-INF/views/mypagebar.jsp" />
<div class="row"><!-- 고객 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">내 정보 수정하기</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr> 
                        	<th class="col-text">회원 번호</th>
                        	<th class="col-text">회원 등급</th> 
                        	<th class="col-text">회원 가입날짜</th>   
                            <th class="col-text">회원 아이디</th>
                            <th class="col-text">회원 비밀번호</th>
                            <th class="col-tools">회원 이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form id="mypage-update-form" role="form" action="mypageUpdate" method="post">                  
                        <tr data-status="completed"> 
                        	<td>
                        	${ loginuser.membernum }
                            </td>  
                            <td>
                            ${ loginuser.usertype }
                            </td>  
                            <td>
                            ${ loginuser.regdate }
                            </td>
                            <td>
                            ${ loginuser.memberid }
                            </td>
                            <td>
                            <input type="text" id='passwd' name='passwd' value='${ loginuser.passwd }'></input>
                            </td>
                            <td>
                            <input type="text" id='email' name='email' value='${ loginuser.email }'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="update-button" type="button" class="btn btn-primary" onclick="location.href='customerDetail?custid=${ customer.custid }'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>수정하기</button>
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
    
    <div class="row"><!-- 고객 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">등급 안내</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr> 
                        	<th class="col-text">회원 번호</th>
                        	<th class="col-text">회원 등급</th> 
                        	<th class="col-text">회원 가입날짜</th>   
                            <th class="col-text">회원 아이디</th>
                            <th class="col-text">회원 비밀번호</th>
                            <th class="col-tools">회원 이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form id="mypage-update-form" role="form" action="mypageUpdate" method="post">                  
                        <tr data-status="completed"> 
                        	<td>
                        	${ loginuser.membernum }
                            </td>  
                            <td>
                            ${ loginuser.usertype }
                            </td>  
                            <td>
                            ${ loginuser.regdate }
                            </td>
                            <td>
                            ${ loginuser.memberid }
                            </td>
                            <td>
                            <input type="text" id='passwd' name='passwd' value='${ loginuser.passwd }'></input>
                            </td>
                            <td>
                            <input type="text" id='email' name='email' value='${ loginuser.email }'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="update-button" type="button" class="btn btn-primary" onclick="location.href='customerDetail?custid=${ customer.custid }'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>수정하기</button>
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
    
        <div class="row"><!-- 고객 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">구매 내역</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr> 
                        	<th class="col-text">회원 번호</th>
                        	<th class="col-text">회원 등급</th> 
                        	<th class="col-text">회원 가입날짜</th>   
                            <th class="col-text">회원 아이디</th>
                            <th class="col-text">회원 비밀번호</th>
                            <th class="col-tools">회원 이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form id="mypage-update-form" role="form" action="mypageUpdate" method="post">                  
                        <tr data-status="completed"> 
                        	<td>
                        	${ loginuser.membernum }
                            </td>  
                            <td>
                            ${ loginuser.usertype }
                            </td>  
                            <td>
                            ${ loginuser.regdate }
                            </td>
                            <td>
                            ${ loginuser.memberid }
                            </td>
                            <td>
                            <input type="text" id='passwd' name='passwd' value='${ loginuser.passwd }'></input>
                            </td>
                            <td>
                            <input type="text" id='email' name='email' value='${ loginuser.email }'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="update-button" type="button" class="btn btn-primary" onclick="location.href='customerDetail?custid=${ customer.custid }'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>수정하기</button>
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
    
            <div class="row"><!-- 고객 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">적립금 내역</h3>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr> 
                        	<th class="col-text">회원 번호</th>
                        	<th class="col-text">회원 등급</th> 
                        	<th class="col-text">회원 가입날짜</th>   
                            <th class="col-text">회원 아이디</th>
                            <th class="col-text">회원 비밀번호</th>
                            <th class="col-tools">회원 이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form id="mypage-update-form" role="form" action="mypageUpdate" method="post">                  
                        <tr data-status="completed"> 
                        	<td>
                        	${ loginuser.membernum }
                            </td>  
                            <td>
                            ${ loginuser.usertype }
                            </td>  
                            <td>
                            ${ loginuser.regdate }
                            </td>
                            <td>
                            ${ loginuser.memberid }
                            </td>
                            <td>
                            <input type="text" id='passwd' name='passwd' value='${ loginuser.passwd }'></input>
                            </td>
                            <td>
                            <input type="text" id='email' name='email' value='${ loginuser.email }'></input>
                            </td>
                        </tr>
                        </form>
                        </tbody>
                    </table>
					<div class="col col-xs-6 text-right">
                            <div class="pull-left">
    
    							<button id="update-button" type="button" class="btn btn-primary" onclick="location.href='customerDetail?custid=${ customer.custid }'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>수정하기</button>
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
</div>
</body>
</html>
