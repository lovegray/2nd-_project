<%@page import="com.model.OneroomDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>GAMBANG</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
	<%
		OneroomDTO dto = (OneroomDTO) session.getAttribute("num");
	%>
	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Intro -->
		<div id="intro">
			<h1>
				<img src="images/icon.png"><br> GAMBANG
			</h1>
			<p>Real estate fake house discrimination</p>
			<ul class="actions">
				<li><a href="#header"
					class="button icon solid solo fa-arrow-down scrolly">Continue</a></li>
			</ul>
		</div>
		<!-- Header -->
		<header id="header">
			<a href="index.html" class="logo"> <img src="images/icon.png">
				GAMBANG
			</a>
		</header>
		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li class="active"><a href="index.html">MAIN</a></li>
				<li><a href="generic.html">MANUAL</a></li>
				<li><a href="elements.html">Q & A</a></li>
			</ul>
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">GitHub</span></a></li>
			</ul>
		</nav>
		<!-- Main -->
		<div id="main">
			<section class="info1">
				<h2>감별결과 해석</h2>
				<%
					if (dto.getNum_count() == 0) {
				%>매물번호 :
				<%=dto.getNum()%>
				<%
					}
				%>
				<%
					int percent = 0;
					int Num_count = 0;
					int Insurance = 0;
					int Building_registration = 0;
					int difference_monthlyfee = 0;
					int difference_charter = 0;
					int Land_ledger = 0;
					int Building_book = 0;
					if (dto.getBuilding_registration() == 1) {
				%>
				<%
					percent += 0;
						Building_registration += 0;
				%>
				<!-- 실사진 -->
				<%
					} else {
				%>
				<%
					percent += 10;
						Building_registration += 10;
				%>
				<%
					}
					;
				%>
				<%
					if (dto.getNum_count() == 1) {
				%>
				<%
					percent += 0;
						Num_count += 0;
				%>
				<!-- 매물번호 -->
				<%
					} else {
				%>
				<%
					percent += 20;
						Num_count += 20;
				%>
				<%
					}
					;
				%>
				<%
					if (dto.getInsurance() == 1) {
				%>
				<%
					percent += 0;
						Insurance += 0;
				%>
				<!-- 보증보험 -->
				<%
					} else {
				%>
				<%
					percent += 10;
						Insurance += 10;
				%>
				<%
					}
					;
				%>
				<%
					if (dto.getLand_ledger() == 1) {
				%>
				<%
					percent += 0;
						Land_ledger += 0;
				%>
				<!-- 상세설명 -->
				<%
					} else {
				%>
				<%
					percent += 10;
						Land_ledger += 10;
				%>
				<%
					}
					;
				%>
				<%
					if (dto.getBuilding_book() == 1) {
				%>
				<%
					percent += 0;
						Building_book += 0;
				%>
				<!-- 즉시입주가능 -->
				<%
					} else {
				%>
				<%
					percent += 10;
						Building_book += 10;
				%>
				<%
					}
					;
				%>
				<!-- 월세차액비율 -->
				<%
					if (dto.getDifference_monthlyfee() > 0) {
				%>
				<%
					percent += (20 * dto.getDifference_monthlyfee() / 100);
						difference_monthlyfee += 20 * dto.getDifference_monthlyfee() / 100;
				%>

				<%
					} else {
				%>
				<%
					percent += 0;
						difference_monthlyfee += 0;
				%>
				<%
					}
					;
				%>
				<!-- 전세차액비율 -->
				<%
					if (dto.getDifference_charter() > 0) {
				%>
				<%
					percent += (20 * dto.getDifference_charter() / 100);
						difference_charter += 20 * dto.getDifference_charter() / 100;
				%>

				<%
					} else {
				%>
				<%
					percent += 0;
						difference_charter += 0;
				%>
				<%
					}
					;
				%>
				<div></div>
				<h3>허위 매물일 확률</h3>
				<br>
				<h1 align=center><%=percent%>%
				</h1>
			</section>

			<section>
				<table border="1">
					<thead>
						<tr>
							<th colspan=7><h3><%=dto.getNum()%>의 가중치(%)
								</h3></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><br>월세차액</td>
							<td><br>보증금차액</td>
							<td>매물등록번호<br>8자리<br>미만
							</td>
							<td>상세내용 <br>공제보험<br>미포함
							</td>
							<td>상세내용 <br>건물등기<br>미포함
							</td>
							<td>상세내용 <br>토지대장<br> 미포함
							</td>
							<td>상세내용 <br>건축물대장<br>미포함
							</td>

						</tr>
						<tr>
							<td><%=difference_monthlyfee%></td>
							<td><%=difference_charter%></td>
							<td><%=Num_count%></td>
							<td><%=Insurance%></td>
							<td><%=Building_registration%></td>
							<td><%=Land_ledger%></td>
							<td><%=Building_book%></td>


						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan=7 align="center"><h2>
									총합계:<%=percent%>%
								</h2></td>
						</tr>
					</tfoot>

				</table>

			</section>

			<section class="info2">
				<h3 align="center"><%=dto.getNum()%>의 정보
				</h3>
				<br>
				<h6 align="right">(금액단위 : 만원)</h6>
				<table border="1" align="center">
					<tr>
						<td align="center">번호</td>
						<td align="center">주소</td>
						<td align="center">공인중개사</td>
						<td align="center">월세</td>
						<td align="center">보증금</td>
						<td align="center">면적</td>
						<td align="center">층</td>
					</tr>
					<tr>
						<td align="center"><%=dto.getNum()%></td>
						<td align="center"><%=dto.getAdress()%></td>
						<td align="center"><%=dto.getRealtor()%></td>
						<td align="center"><%=dto.getMonthlyfee()%></td>
						<td align="center"><%=dto.getCharter()%></td>
						<td align="center"><%=dto.getArea()%></td>
						<td align="center"><%=dto.getFloor()%></td>
					</tr>
				</table>
			</section>
			<!-- Footer -->
		</div>
		<!-- Footer -->
		<footer id="footer">
			<section class="split contact">
				<section>
					<h3>Social</h3>
					<ul class="icons alt">
						<li><a href="#" class="icon brands alt fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands alt fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands alt fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands alt fa-github"><span
								class="label">GitHub</span></a></li>
					</ul>
				</section>
			</section>
		</footer>
		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; 감방</li>
				<li>Design by. 집구해조</li>
			</ul>
		</div>
		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>