<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Site made with Mobirise Website Builder v4.5.2, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.5.2, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/mbr-2-1620x1080.jpg" type="image/x-icon">
  <meta name="description" content="Website Generator Description">
  <title>ADMIN</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/as-pie-progress/css/progress.min.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="assets/animatecss/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<section class="section-table cid-qE9ZOJ47G3 mbr-parallax-background" id="table1-1i" data-rv-view="4278">

  
  
  <div class="container container-table">
      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2">ISSUES</h2>
      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5"></h3>

      
      <div class="table-wrapper">
        <div class="container">
          <div class="row search">
            <div class="col-md-6"></div>
            <div class="col-md-6">
                <div class="dataTables_filter">
                  <label class="searchInfo mbr-fonts-style display-7">Search:</label>
                  <input class="form-control input-sm" disabled="">
                </div>
            </div>
          </div>
        </div>

        <div class="container scroll">
           <table class = "table table-bordered">
            <tr>
                <th width = "40">Id </th>
				<th width="80">Issue type</th>
				<th width="80">Issue date</th>
				<th width="200">Issue_Description</th>
				<th width="80">Issue reopen</th>
				<th width="80">Parent_id</th>
				<th width ="120">Issue status</th>
				<th width="150">Action</th>
			</tr>
		
  <c:forEach items = "${tracking}" var="customer">
     <tr>	
   <td><c:out value = "${customer.id }"/></td>
   <td><c:out value = "${customer.issue_types}"/></td>
   <td><c:out value = "${customer.date }"/></td>
   <td><c:out value = "${customer.issue_description }"/></td>
    <td><c:out value ="${customer.reopen_date}"/></td>
   <td><c:out value ="${customer.parent_id }"/></td>
   <td><c:out value ="${customer.status }"/></td>
 <spring:url value ="update/${customer.id}" var = "updateURL"/>
 <td><a href = "${updateURL }">update</a>


 <spring:url value ="/customer/delete/${customer.id}" var = "deleteURL"/>
 <a href = "${deleteURL }">delete</a></td>
  </c:forEach>
</table>
        </div>
        <div class="container table-info-container">
          <div class="row info">
            <div class="col-md-6">
              <div class="dataTables_info mbr-fonts-style display-7">
                <span class="infoBefore">Showing</span>
                <span class="inactive infoRows"></span>
                <span class="infoAfter">entries</span>
                <span class="infoFilteredBefore">(filtered from</span>
                <span class="inactive infoRows"></span>
                <span class="infoFilteredAfter">total entries)</span>
              </div>
            </div>
            <div class="col-md-6"></div>
          </div>
        </div>
      </div>
    </div>
</section>
  
</body>
</html>