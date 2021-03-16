<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산, 산, 산 - 상세정보</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="../board/css/booksel.css">
<style>
#location {
	margin-bottom: 200px;
}
</style>
</head>
<body>
	<jsp:include page="/Sidebar.jsp" />
	<div class="post_container">
		<div id="wrap">
			<div id="conWrap">
				<div id="titleWrap" class="clearfix">
					글번호 ${mountain.mtno}
					<h1>${mountain.mtname}</h1>
					<div id="picture">
						<img src="../board/images/${mountain.mtno}.jpg">
					</div>
				</div>
				<div id="context">
					<i class="fas fa-map-marker-alt"></i> 위치 : ${mountain.loc}
					<p>내용</p>
					${mountain.exp}
				</div>
				<table id="location">
					<tr>
						<td style="border: 1px solid #cecece;"><a
							href="${mountain.loclink}" target="_blank"><img
								src="${mountain.locimg}" width="460" height="340" alt="지도 크게 보기"
								title="지도 크게 보기" border="0" style="vertical-align: top;" /></a></td>
					</tr>
				</table>
				<div id="joinWrap">
					<div id="btnWrap">
						<button id="testBtn" class="btn" type="submit" value="추천일정 보기"
							onclick="">추천일정 보기</button>
					</div>
				</div>
			</div>
		</div>
	</div>




	<div class="modal fade" id="testModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<button type="button" class="close" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</button>
					<h3 class="modal-title" id="exampleModalLabel">동일한 지역 일정확인</h3>
				</div>
				<div class="modal-body">이 위치의 일정을 확인하시겠습니까?</div>
				<div class="modal-footer">
					<a class="btn yes" id="modalY"
						href="../booking/loc.do?loc=${mountain.loc}">예</a>
					<button class="btn" type="button" data-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		$('#testBtn').click(function(e) {
			e.preventDefault();
			$('#testModal').modal("show");
		});
	</script>
</body>
</html>