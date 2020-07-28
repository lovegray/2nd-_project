<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Massively by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css"/></noscript>
	<style>
		#inputselect > li{ text-align: center ; }
	</style>
  </head>
<body class="is-preload">
    <!-- Wrapper -->
    <div id="wrapper" class="fade-in">
      <!-- Intro -->
      <div id="intro">
        <h1>
			<img src="images/icon.png"><br>
			GAMBANG
		  </h1>
		<p>
			Real estate fake house discrimination
        </p>
        <ul class="actions">
          <li>
            <a
              href="#header"
              class="button icon solid solo fa-arrow-down scrolly"
              >Continue</a
            >
          </li>
        </ul>
      </div>

      <!-- Header -->
      <header id="header">
		<a href="index.html" class="logo">
			<img src="images/icon.png">
			GAMBANG</a>
      </header>

      <!-- Nav -->
      <nav id="nav">
        <ul class="links">
			<li class="active"><a href="index.html">MAIN</a></li>
			<li><a href="generic.html">GAMBANG How to use</a></li>
			<li><a href="elements.html">Q & A</a></li>
        </ul>
        <ul class="icons">
          <li>
            <a href="#" class="icon brands fa-twitter"
              ><span class="label">Twitter</span></a
            >
          </li>
          <li>
            <a href="#" class="icon brands fa-facebook-f"
              ><span class="label">Facebook</span></a
            >
          </li>
          <li>
            <a href="#" class="icon brands fa-instagram"
              ><span class="label">Instagram</span></a
            >
          </li>
          <li>
            <a href="#" class="icon brands fa-github"
              ><span class="label">GitHub</span></a
            >
          </li>
        </ul>
      </nav>


				<!-- Main -->
				<div id="main">

					<section>
						<form method="post" action="SelectCon.do">
						  <div class="fields">
							<div class="field">
							  <label for="num">매물번호 입력</label>
							  <input type="text" name="num" id="num" />
							</div>
						  </div>
						  <ul class="actions" id="inputselect">
							<li><input type="submit" value="조회"/></li>
						  </ul>
						</form>
					  </section>

				</div>






									<!-- Footer -->
									<footer id="footer">
										<section class="split contact">
											<section>
												<h3>Social</h3>
												<ul class="icons alt">
													<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
													<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
													<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
													<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
												</ul>
											</section>
										</section>
									</footer>


      <!-- Copyright -->
      <div id="copyright">
        <ul>
          <li>&copy; 감방</li>
          <li>Design by. 집구해조</a></li>
        </ul>
      </div>
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