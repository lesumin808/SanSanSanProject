<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../board/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../board/css/book.css">
</head>
<body>
	<jsp:include page="/Sidebar.jsp" />
	<section class="post_container">
<h1>지역 일정</h1>
	<c:forEach var="booking" items="${bookings}">
    <div id="Wrap">
        <div class="box">
                <div>${booking.bno}</div>
                <div><i class="far fa-calendar-check"></i>${booking.header}</div>
                <div class="line"><h1>${booking.title}</h1></div>
                <div><i class="far fa-compass"></i>${booking.loc}</div>
                <div><i class="far fa-user"></i>${booking.min_nop} / ${booking.nop}</div>
                <div><button class="viewDate" type="button" onclick="location.href='../booking/view.do?bno=${booking.bno}'">일정보기</button></div>
        </div>
    </div>
	</c:forEach>
	</section>
</body>
</html>