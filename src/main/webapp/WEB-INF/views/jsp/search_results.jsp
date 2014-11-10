<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Copili - Inicio</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.structure.min.css" />
    <link rel="stylesheet" href="${contextPath}/resources/css/foundation.min.css" />
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400|Kreon' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${contextPath}/resources/css/copili.css" />
    <script src="${contextPath}/resources/js/vendor/modernizr.js"></script>
</head>
<body>

<div id="main-container">

<div class="row" id="header">
    <div class="large-4 columns">
        <img src="${contextPath}/resources/img/logo-copili-horizontal-color-st.png" style="height: 90px; padding: 15px;"/>
    </div>
    <div class="large-8 columns">
        <p id="current-section" style="font-size: 36px; text-align: right; padding-right: 20px; font-family: 'Kreon'; height: 42px; padding-top: 30px;;">
            Aprende / Experiencia / Cambio
        </p>
    </div>
</div>

<div class="row" id="sections">
    <div class="large-12 columns large-centered">
        <ul class="breadcrumbs">
            <li><a href="${contextPath}/home">Inicio</a></li>
            <li onClick="filterBySection('all')"><a href="#">Migración</a></li>
            <li id="breadcrumb-section" class="current"><a href="#"></a></li>
        </ul>
    </div>
</div>

<div class="row">

<div class="large-2 columns" id="menu">
    <ul>
        <li id="menu-learn" onClick="filterBySection('learn')">
            <img src="${contextPath}/resources/img/learn.png" title="Aprende">
        </li>
        <li id="menu-experience" onClick="filterBySection('experience')">
            <img src="${contextPath}/resources/img/experience.png" title="Experiencia">
        </li>
        <li id="menu-change" onClick="filterBySection('change')">
            <img src="${contextPath}/resources/img/change.png" title="Cambio">
        </li>
    </ul>
</div>

<div class="large-10 columns" id="copi-container">



<jsp:include page="includes/learn.jsp"/>
<jsp:include page="includes/experience.jsp"/>
<jsp:include page="includes/change.jsp"/>



</div>

</div>

</div>

<script src="${contextPath}/resources/js/vendor/jquery.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/jquery.autocomplete.min.js"></script>
<script src="${contextPath}/resources/js/foundation.min.js"></script>
<script src="${contextPath}/resources/js/copili.js"></script>
<script>
    $(document).foundation();
</script>
</body>
