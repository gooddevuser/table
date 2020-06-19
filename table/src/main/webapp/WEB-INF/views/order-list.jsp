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
    <div class="row"><!-- 주문 리스트 시작 -->
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">주문 리스트</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <div class="pull-right">
    
    							<button type="button" class="btn btn-primary" onclick="location.href='orderWrite'">
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>등록
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        
                        <tr>    
                            <th class="hidden-xs">주문 번호</th>
                            <th class="col-text">고객 번호 </th>
                            <th class="col-text">책 번호</th>
                            <th class="col-tools">할인 금액</th>
                            <th class="col-tools">구매 날짜</th>
                        </tr>
                        
                        </thead>
                        <tbody>
                        <c:forEach items="${ orders }" var="order">
                        <tr data-status="completed">
                            <td><a href="Detail/${ order.orderid }">${ order.orderid }</a></td>
							<td>${ order.custid }</td>
                            <td>${ order.bookid }</td>
                            <td>${ order.saleprice }</td>
                            <td>${ order.orderdate }</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="panel-footer">
                    <div class="row">
                        
                    </div>
                </div>
            </div>
        </div>
    </div><!-- 주문 리스트 끝-->
</div>
</body>
</html>
