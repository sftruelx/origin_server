  
  <!DOCTYPE html>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">

<head>    
    <script src="${ctx}/styles/js/fileinput.js" type="text/javascript"></script>
    <script src="${ctx}/styles/js/fileinput_locale_zh.js" type="text/javascript"></script>
   <link href="${ctx}/styles/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
</head>
    <body>
        <div class="container kv-main">
            <div class="page-header">
            <h1>File Input </h1>
            </div>
            <form enctype="multipart/form-data" action="filesUpload" method="post">
            	<input type="file" name="files" class="file" value="${deal.image}"/>
                <br>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
            </form>
            <hr>
        </div>
    </body>
	
