<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>

<section>
    <div class="jumbotron">
        <div class="container">
            <h1>
                <spring:message code="labels.cumpelstore.title" />
            </h1>
        </div>
    </div>
    <div class="pull-right" style="padding-right: 50px">
        <a href="?language=pl"> <spring:message code="labels.language.pl" /></a> | <a href="?language=en"> <spring:message code="labels.language.en" /></a>
    </div>
</section>
<c:if test="${message!=null}">
    <div class="alert alert-info text-center" >
        <strong>Info!</strong> ${message}
    </div>
</c:if>
<div class="container">
    <div class="col-md-4 col-md-offset-4">
        <div class="panel panel-default">
            <div class="panel-body">
                <form action="<c:url value="/login"></c:url>" method="post">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" name='username' type="text">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name='password' type="password" value="">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                        <input class="btn btn-lg btn-success btn-block" type="submit" value="<spring:message code="labels.login" />">
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>