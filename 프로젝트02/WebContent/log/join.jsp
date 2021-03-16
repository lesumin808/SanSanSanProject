<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>산, 산, 산 - 회원가입</title>
<link rel="stylesheet" href="/log/css/join.css">
</head>

<body>
	<jsp:include page="/Sidebar2.jsp" />
	 <section class="post_container">
        <div class="join_container">
            <form action="">

                <h2>회원가입</h2>
                <div class="join_list">
                    <div>
                        <ul class="join_info">
                            <li>이름</li>
                            <li>닉네임</li>
                            <li>아이디</li>
                            <li>비밀번호</li>
                            <li>주민등록번호</li>
                            <li>전화번호</li>
                            <li>주소</li>
                        </ul>
                    </div>
                    <div class="join_input">
                        <ul>
                            <li>
                                <input type="text" name="mname">
                            </li>
                            <li>
                                <input type="text" name="nname">
                            </li>
                            <li>
                                <input type="text" name="id" placeholder="ID">
                            </li>
                            <li>
                                <input type="password" name="pwd" placeholder="Password">
                            </li>
                            <li>
                                <input type="text" name="rrn1" size="10" maxlength="6"> -
                                <input type="password" name="rrn2" size="10" maxlength="7">
                            </li>
                            <li>
                                <div class="phone_no">
                                    <select name="phone1">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                        <option value="070">070</option>
                                    </select> -
                                    <input type="text" name="phone2" size="6"> -
                                    <input type="text" name="phone3" size="6">
                                </div>
                            </li>

                            <li>
                                <input type="text" size="30" name="address" placeholder="서울특별시 서초구 서초동">
                            </li>
                        </ul>
                    </div>

                </div>
                <div class="join_btn">
 					<button type="submit" class="post_btn w">돌아가기</button>
                    <button type="submit" class="post_btn w">가입하기</button>
                </div>
            </form>
        </div>
    </section>
</body>

</html>