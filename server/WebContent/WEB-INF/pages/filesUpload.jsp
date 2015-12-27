<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <title><fmt:message key="webapp.name"/></title>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${ctx}/images/lamp.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/webjars/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/styles/app.css">
    <link href="${ctx}/styles/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${ctx}/styles/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/templatemo_style.css" rel="stylesheet" type="text/css">	
    <script type="text/javascript" src="${ctx}/webjars/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/webjars/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/app.js"></script>
    <script src="${ctx}/styles/js/fileinput.js" type="text/javascript"></script>
    <script src="${ctx}/styles/js/fileinput_locale_zh.js" type="text/javascript"></script>

</head>
<body>
	<h2>上传多个文件 </h2>


	<form action="filesUpload" method="post" enctype="multipart/form-data" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30">
		<div class="form-group">
			<div class="col-xs-12">
				<div class="control-wrapper">
					选择文件:<input type="file" name="files" class="file"
						value="${deal.image}" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-12">
				<div class="control-wrapper">
					选择文件:<input type="file" name="files" class="file"
						value="${deal.image}" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-12">
				<div class="control-wrapper">
					选择文件:<input type="file" name="files" class="file"
						value="${deal.image}" />
				</div>
			</div>
		</div>
	
		<div class="form-group">
			<div class="col-md-12">
				<div class="control-wrapper">
					<input type="submit" value="Submit" class="btn btn-info">
				</div>
			</div>
		</div>
	</form>
</body>