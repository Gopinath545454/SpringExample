<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Connector Version 2.1.0 - Config</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/style.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

  <script>
  $(function() {
    $( "#magentoRegionAccordion" ).accordion({
      collapsible: true
    });
  });
  
  $(document).ready(function() {
	    $('span.content-label').click(function () {
	        var dad = $(this).parent();
	        dad.find('span').hide();
	        dad.find('input[type="text"]').show().focus();
	    });

	    $('input[type=text]').focusout(function() {
	        var dad = $(this).parent();
	        $(this).hide();
	        dad.find('span').text( $(this).val() );
	        dad.find('span').show();
	    });
	});

  $(document).ready(function()
		  {
	  		for (var counter = 0;  $( "#magentoRegionForm" + counter ).length ; counter++) {

		      $( "#magentoSubmitId" + counter ).click(function()
		      {
		    	  var formElement = $(this).closest("form");
		    	  $.post( "updateMagentoRegion", formElement.serialize(), function(data) {
		    		  formElement.find( "div.magentoResult" ).empty().append( data );
		    	       }
		    	    )
		    	    .fail(function() {
		    	    	formElement.find( "div.magentoResult" ).empty().append( "update failed" );
		    	    });
		      });
		      
	  		}

		  });
  </script>

</head>
<body>



<div id="head-container">
	<div id="header">
		<h1>
			Connector config
		</h1>
	</div>
</div>
<div id="navigation-container">
	<div id="navigation">
		<ul>
			<li><a href="connectorConfig">General</a></li>
			<li><a href="magentoRegions">MagentoRegions</a></li>
		</ul>
	</div>
</div>
<div id="content-container">
	<div id="content-container2">
		<div id="content-container3">
			<div id="content">

					<div style="text-align: right;padding-bottom: 10px;"><a href="addNewMagentoRegion">Add New</a></div>
					<div id="magentoRegionAccordion">
						<c:forEach var="magentoregion" items="${magentoregions}" varStatus="magentoItr">
						<h3>${ fn:escapeXml(magentoregion.magentoStoreId) }</h3>
						<div>
							<form action="updateMagentoRegion" id="magentoRegionForm${ magentoItr.index }">
							<div  class="magentoResult"></div>
							<table>
								<tbody>
									<tr>
										<td>Site</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoSite) } </span><input type="text" name="magentoSite" value="${ fn:escapeXml(magentoregion.magentoSite) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>StoreId</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoStoreId) } </span><input type="text" name="magentoStoreId" value="${ fn:escapeXml(magentoregion.magentoStoreId) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>SiteCode</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoSiteCode) } </span><input type="text" name="magentoSiteCode" value="${ fn:escapeXml(magentoregion.magentoSiteCode) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Site Name</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoSiteName) } </span><input type="text" name="magentoSiteName" value="${ fn:escapeXml(magentoregion.magentoSiteName) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Store Name</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoStoreName) } </span><input type="text" name="magentoStoreName" value="${ fn:escapeXml(magentoregion.magentoStoreName) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Site Description</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.magentoSiteDescription) } </span><input type="text" name="magentoSiteDescription" value="${ fn:escapeXml(magentoregion.magentoSiteDescription) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Company</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.company) } </span><input type="text" name="company" value="${ fn:escapeXml(magentoregion.company) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Division</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.division) } </span><input type="text" name="division" value="${ fn:escapeXml(magentoregion.division) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Facility</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.facility) } </span><input type="text" name="facility" value="${ fn:escapeXml(magentoregion.facility) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Warehouse</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.warehouse) } </span><input type="text" name="warehouse" value="${ fn:escapeXml(magentoregion.warehouse) }" class="edit-input"/></td>
									</tr>
									<tr>
										<td>Language</td>
										<td><span class="content-label" style="width: 100%;"> ${ fn:escapeXml(magentoregion.language) } </span><input type="text" name="language" value="${ fn:escapeXml(magentoregion.language) }" class="edit-input"/></td>
									</tr>


									<tr>
										<td colspan="2"><input type="button" id="magentoSubmitId${ magentoItr.index }" value="Submit" /></td>
									</tr>
								</tbody>
							</table>
							</form>
						</div>
						</c:forEach>







					</div>
				</div>
	</div>
	</div>
	<div id="footer-container">
		<div id="footer">
			Copyright © Leanswift, 2014 
		</div>
	</div>
</div>






</body>
</html>