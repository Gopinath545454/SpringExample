<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Connector Version 2.1.0 - Config</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/style.css" />

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
			<li><a href="#">General</a></li>
			<li><a href="magentoRegions">MagentoRegions</a></li>
		</ul>
	</div>
</div>
<div id="content-container">
	<div id="content-container2">
		<div id="content-container3">
			<div id="content">
				
				<div>
							<form action="addNewMagentoRegion" method="post">
							<div  class="magentoAddResult">${ errors }</div>
							<table>
								<tbody>
									<tr>
										<td>Site</td>
										<td><input type="text" name="magentoSite" value="" /></td>
									</tr>
									<tr>
										<td>StoreId</td>
										<td><input type="text" name="magentoStoreId" value="" /></td>
									</tr>
									<tr>
										<td>Site Code</td>
										<td><input type="text" name="magentoSiteCode" value="" /></td>
									</tr>
									<tr>
										<td>Site Name</td>
										<td><input type="text" name="magentoSiteName" value="" /></td>
									</tr>
									<tr>
										<td>Store Name</td>
										<td><input type="text" name="magentoStoreName" value="" /></td>
									</tr>
									<tr>
										<td>Site Description</td>
										<td><input type="text" name="magentoSiteDescription" value="" /></td>
									</tr>
									<tr>
										<td>Company</td>
										<td><input type="text" name="company" value="" /></td>
									</tr>
									<tr>
										<td>Division</td>
										<td><input type="text" name="division" value="" /></td>
									</tr>
									<tr>
										<td>Facility</td>
										<td><input type="text" name="facility" value="" /></td>
									</tr>
									<tr>
										<td>Warehouse</td>
										<td><input type="text" name="warehouse" value="" /></td>
									</tr>
									<tr>
										<td>Language</td>
										<td><input type="text" name="language" value="" /></td>
									</tr>


									<tr>
										<td colspan="2"><input type="submit" value="Submit" /></td>
									</tr>
								</tbody>
							</table>
							</form>
				
				
				
				
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