<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript"></script>
<meta charset="UTF-8">
<title>산, 산, 산 -</title>
<style>
.title_m {
	width: 100vh;
	display: flex;
	margin-bottom: 20px;
	color: black;
}
</style>
</head>
<body>
	<jsp:include page="/Sidebar.jsp" />

	<div class="post_container">
		<div class="title_m">
			<h2>▲ 산</h2>
		</div>
		<table class="table"
			style="width: 810px; margin: auto; margin-left: 50px">
			<thead>
				<tr>
					<th class="tg1">번호</th>
					<th class="tg2">이름</th>
					<th class="tg3">위치</th>
					<th class="tg4"></th>
				</tr>
			</thead>
			<c:forEach var="mountain" items="${mountains}">
				<tr class="trtable">
					<td class="tg1">${mountain.mtno}</td>
					<td class="tg2">${mountain.mtname}</td>
					<td class="tg3">${mountain.loc}</td>
					<td class="tg4"><button type="button"
							class="btn btn-outline-secondary"
							onclick='location.href="select.do?mtno=${mountain.mtno}"'>자세히</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>