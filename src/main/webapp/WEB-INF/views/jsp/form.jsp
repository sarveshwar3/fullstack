<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri = "http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Site made with Mobirise Website Builder v4.5.2, https://mobirise.com -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.5.2, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/mbr-2-1620x1080.jpg"
	type="image/x-icon">
<meta name="description" content="Web Site Generator Description">
<title>USER ISSUE SUBMITION</title>
<link rel="stylesheet"
	href="assets/web/assets/mobirise-icons/mobirise-icons.css">
<link rel="stylesheet" href="assets/tether/tether.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="assets/socicon/css/styles.css">
<link rel="stylesheet" href="assets/dropdown/css/style.css">
<link rel="stylesheet" href="assets/animatecss/animate.min.css">
<link rel="stylesheet" href="assets/theme/css/style.css">
<link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css"
	type="text/css">



</head>
<body>
<section class="menu cid-qE9E6o5M0s" once="menu" id="menu1-19"
		data-rv-view="4343"> <%
                        Date today = new Date();
						SimpleDateFormat date_format = new 	SimpleDateFormat("dd-MM-yyyy");
											String ddMMyyyyToday  = date_format.format(today);
                        %> 
                        <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<div class="hamburger">
			<span></span> <span></span> <span></span> <span></span>
		</div>
	</button>
	<div class="menu-logo">
		<div class="navbar-brand">
			<span class="navbar-logo"> <a href="index.html"> <img
					src="assets/images/mbr-2-1620x1080.jpg" alt="Mobirise" title=""
					media-simple="true" style="height: 3.8rem;">
			</a>
			</span> <span class="navbar-caption-wrap"><a
				class="navbar-caption text-white display-4"
				href="https://mobirise.com">COMPAMY NAME</a></span>
		</div>
	</div>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
			<li class="nav-item"><a
				class="nav-link link text-white display-4" href="page4.html"> <span
					class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>Services
			</a></li>
			<li class="nav-item"><a
				class="nav-link link text-white display-4"
				href="page1.html#content4-p" target="_blank"> <span
					class="mbri-search mbr-iconfont mbr-iconfont-btn"></span>About Us
			</a></li>
		</ul>
		<div class="navbar-buttons mbr-section-btn">
			<a class="btn btn-sm btn-primary display-4" href="page2.html">SIGN
				UP</a> <a class="btn btn-sm btn-primary display-4" href="page5.html">ADMIN</a>
			<a class="btn btn-sm btn-primary display-4" href="page6.html">USER
				ISSUE</a> <a class="btn btn-sm btn-primary display-4" href="page3.html">SIGN
				IN</a>
		</div>
	</div>
	</nav> </section>
	<section class="engine">
	<a href="https://mobirise.co/k">free bootstrap template</a></section>
	<section class="mbr-section form1 cid-qE9YcE426c" id="form1-1g"
		data-rv-view="4340">




	<div class="container">
		<div class="row justify-content-center">
			<div class="title col-12 col-lg-8">
				<h2
					class="mbr-section-title align-center pb-3 mbr-fonts-style display-2">SUBMIT
					ISSUES</h2>
				<h3
					class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-5">OUR
					TEAM WILL RESPOND WITHIN 2 WORKING DAYS</h3>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="row justify-content-center">
		<div class="media-container-column col-lg-8">
			<input type="hidden" data-form-email="true"
						value="GxYq8x02Nw0cRoUddhuY4WI5eEyWHWl2d4gz0J779yW6DVOJ+XSP2Ytzlv90euZYV0tsLNv5pxHM3pTbC6vmIGk6EZxYo8W5YYm0YLa8UDrPXhXNcpguOfJygQ8/rWhK"/>
  <spring:url value="save" var = "saveURL"/>
 <form:form action = "${saveURL}"  method = "POST" modelAttribute = "customerForm">
 
 <form:hidden path = "id"/>
 
                       <div class="form-group">
  <!-- CREATES A LABEL CALLED ISSUE_TYPE WITH SIZE 4 -->
						<label for="issue_type" class="control-label col-md-4">Issue
							Type:</label>
						<!-- CREATING A SELECTOR -->
						<div class="col-md-6 selectpicker">
							<form:select path="issue_types" class="form-control">
								<option>type1</option>
								<option>type2</option>
								<option>type3</option>
								<option>type4</option>
								<option>type5</option>
							</form:select>
						</div>
					</div>

					<div class="col-md-4 multi-horizontal" data-for="date">
						<div class="form-group">
							<label class="form-control-label mbr-fonts-style display-7"
								for="phone-form1-r">Date</label>
							<form:input type="text" class="form-control" path="date"
								value="<%=ddMMyyyyToday %>" data-form-field="date"
								placeholder = "Date" id="date" readonly="true"/>
						</div>
					</div>
					<div class="col-md-4 multi-horizontal" data-for="description">
						<div class="form-group" data-for="description">
							<label class="form-control-label mbr-fonts-style display-7"
								for="message-form1-1g">Description</label>
							<form:textarea type="text" class="form-control"
								path="issue_description" rows="7" data-form-field="description"
								id="message-form1-1g"></form:textarea>
						</div>
					</div>
					
					<a href="history" target = "_blank">history</a>
					<div class="col-md-4 multi-horizontal" data-for="reopendate">
						<div class="form-group">
							<label class="form-control-label mbr-fonts-style display-7"
								for="phone-form1-r">Reopen</label>
							<form:input type="date" class="form-control" path="reopen_date"
								data-form-field="date" placeholder="Date" id="phone-form1-r" />
						</div>
					</div>
					<div class="col-md-4 multi-horizontal" data-for="status">
						<div class="form-group">
							<label class="form-control-label mbr-fonts-style display-7"
								for="phone-form1-r">STATUS</label>
							<form:input type="text" class="form-control" path="status"
								data-form-field="ID" value="open" 
								id="name-form1-r" readonly="true" />
						</div>
					</div>
                 <span class="input-group-btn"><button type = "submit"
						class="btn btn-primary btn-form display-4" onClick = "submitForm()">SEND FORM</button></span>
					

     </form:form>
     
 </div>
 </div></div>
 <script>
 function submitForm() {
	   // Get the first form with the name
	   // Usually the form name is not repeated
	   // but duplicate names are possible in HTML
	   // Therefore to work around the issue, enforce the correct index
	   var frm = document.getElementsByName('complain')[0];
	   frm.submit(); // Submit the form
	   frm.reset();  // Reset all form data
	   return false; // Prevent page refresh
	}
 </script>
	</section>
 <section once="" class="cid-qE9TYHyuSR" id="footer7-1a"
		data-rv-view="4345">





	<div class="container">
		<div class="media-container-row align-center mbr-white">
			<div class="row row-links">
				<ul class="foot-menu">





					<li class="foot-menu-item mbr-fonts-style display-7">&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a
						class="text-white mbr-bold" href="page1.html" target="_blank">About
							us</a>
					</li>
					<li class="foot-menu-item mbr-fonts-style display-7"><a
						class="text-white mbr-bold" href="page4.html" target="_blank">Services</a>
					</li>
					<li class="foot-menu-item mbr-fonts-style display-7"></li>
					<li class="foot-menu-item mbr-fonts-style display-7"></li>
					<li class="foot-menu-item mbr-fonts-style display-7"></li>
				</ul>
			</div>
			<div class="row social-row">
				<div class="social-list align-right pb-2">






					<div class="soc-item">
						<a href="https://twitter.com/mobirise" target="_blank"> <span
							class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
					<div class="soc-item">
						<a href="https://www.facebook.com/pages/Mobirise/1616226671953247"
							target="_blank"> <span
							class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
					<div class="soc-item">
						<a href="https://www.youtube.com/c/mobirise" target="_blank">
							<span
							class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
					<div class="soc-item">
						<a href="https://instagram.com/mobirise" target="_blank"> <span
							class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
					<div class="soc-item">
						<a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
							<span
							class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
					<div class="soc-item">
						<a href="https://www.behance.net/Mobirise" target="_blank"> <span
							class="socicon-behance socicon mbr-iconfont mbr-iconfont-social"
							media-simple="true"></span>
						</a>
					</div>
				</div>
			</div>
			<div class="row row-copirayt">
				<p
					class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">©
					Copyright 2017 Mobirise - All Rights Reserved</p>
			</div>
		</div>
	</div>
	</section>


	<script src="assets/web/assets/jquery/jquery.min.js"></script>
	<script src="assets/popper/popper.min.js"></script>
	<script src="assets/tether/tether.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/smoothscroll/smooth-scroll.js"></script>
	<script src="assets/viewportchecker/jquery.viewportchecker.js"></script>
	<script src="assets/dropdown/js/script.min.js"></script>
	<script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
	<script src="assets/theme/js/script.js"></script>
	<script src="assets/formoid/formoid.min.js"></script>


	<input name="animation" type="hidden">
</body>
</html>