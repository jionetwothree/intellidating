<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
	%>
	<header>
		<div>
			<p>
			<h2><a href="main.jsp">인텔리데이팅</a></h2>
			</p>
		</div>
	</header>
	<nav>
		<div>
			<ul>
				<li><a href="searchbook.jsp">책 검색하기</a></li>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.jsp">마이페이지</a>
				<li><a href="logoutService">로그아웃</a></li>
			</ul>
			<%
				}
			%>
			<hr />
		</div>
	</nav>
	<div>
		<h1>
			<a href="#">인텔리데이팅 이용규칙</a>
		</h1>
		<hr />
	</div>

	<div>
		<section>
			<h2>
				<%
					if (m_dto == null) {
				%>
				<h1>로그인을 해주세요</h1>
				<%
					} else {
				%>
				<h1><%=m_dto.getNickname()%></h1>
				님의 취향은 #소설 #로맨스 #주식투자(이)군요!
				<%} %>
			</h2>
		</section>
	</div>

	<div>
		<section>
		<%
					if (m_dto == null) {
				%>
			<p>
			<h3><!-- 인기있는 모임 --></h3>
			</p>
			<p>
				<a href="#">전체보기</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임2</a>
				</h3>
			</div> 

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">독서 모임9</a>
				</h3>
			</div>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3><!-- 인기있는 책 --></h3>
			</p>
			<p>
				<a href="#">전체보기</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">독서 모임9</a>
				</h3>
			</div>
		</section>
	</div>
	<%} else { %>
	<p>
			<h3><!-- 취향에 맞는 모임 --></h3>
			</p>
			<p>
				<a href="#">전체보기</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">독서 모임9</a>
				</h3>
			</div>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3><!-- 취향에 맞는 책 --></h3>
			</p>
			<p>
				<a href="#">전체보기</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">독서 모임8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">독서 모임9</a>
				</h3>
			</div>
		</section>
	</div>
	<% } %>
	<footer>
		<div>
			<p>
				<a href="#">자주 묻는 질문</a>
			</p>
			<p>
				<a href="#">문의하기</a>
			</p>
			<p>
				<a href="#">블로그</a>
			</p>
			<br> <br> <br>
			<p>주식회사 인텔리데이팅</p>
		</div>
	</footer>




</body>
</html>