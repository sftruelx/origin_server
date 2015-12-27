<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp" %>
<html lang="en">
<head>
    <title> <fmt:message key="webapp.name"/></title>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${ctx}/images/lamp.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/webjars/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/styles/app.css">
    <link href="${ctx}/styles/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/styles/css/templatemo_style.css" rel="stylesheet" type="text/css">	
    <script type="text/javascript" src="${ctx}/webjars/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/webjars/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/app.js"></script>
    <decorator:head/>
</head>
<body<decorator:getProperty property="body.id" writeEntireProperty="true"/><decorator:getProperty property="body.class" writeEntireProperty="true"/>>
<a name="top"></a>

    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value='/'/>">My Application</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="nav navbar-nav">
                <li><a href="${ctx}/" title="Home">Home</a></li>
                <li><a href="${ctx}/users" title="View Users">Users</a></li>
                <!-- Add new menu items here -->
                <security:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
                    <li class="logout"><a id="logout" href="${ctx}/logout">Logout</a></li>
                </security:authorize>
            </ul>
        </div>
        <script type="text/javascript">
            $('a[href="${pageContext.request.requestURI}"]').parent().addClass('active');
        </script>
    </div>

    <div class="container">
        <div class="row">
            <%@ include file="/messages.jsp"%>
            <decorator:body/>
        </div>
    </div>

    <div id="footer" class="container">
        <p>
            Created by Larry<img src="${ctx}/images/lamp.png">
        </p>
    </div>
</body>
</html>
