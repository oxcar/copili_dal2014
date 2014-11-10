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
    <link rel="stylesheet" href="${contextPath}/resources/css/copili.css" />
    <script src="${contextPath}/resources/js/vendor/modernizr.js"></script>
</head>
<body>

<div id="main-container">
    <div class="row">

        <div id="home-logo" class="large-12 columns collapse">
            <img src="${contextPath}/resources/img/logo-copili-horizontal-color.png" alt=""/>
        </div>

        <form action="${contextPath}/search" method="post" id="searchForm">
        <div id="home-search-input" class="large-12 columns collapse">
            <div class="row">
                <div class="large-8 large-centered columns omega">
                    <input type="text" id="searchTerms" name="searchTerms" placeholder="Busca un tema que te interese" />
                </div>
                <div class="large-2 large-centered columns">
                    <button class="button tiny radius" style="width: 100%;" onclick="search()">Buscar</button>
                </div>
            </div>
        </div>
        </form>

        <div id="home-tags" class="large-12 columns collapse">
            <span onClick="loadTerm('Migracion')">#migracion</span>
            <span onClick="loadTerm('Ayotzinapa')">#ayotzinapa</span>
            <span onClick="loadTerm('ISIS')">#isis</span>
            <span onClick="loadTerm('Ebola')">#ebola</span>
            <span onClick="loadTerm('Medio ambiente')">#medio_ambiente</span>
        </div>

    </div>
</div>

<script src="${contextPath}/resources/js/vendor/jquery.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/jquery.autocomplete.min.js"></script>
<script src="${contextPath}/resources/js/angular.min.js"></script>
<script src="${contextPath}/resources/js/foundation.min.js"></script>
<script src="${contextPath}/resources/js/copili.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


