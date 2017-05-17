<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title><spring:message code="labels.registration"></spring:message></title>
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
        <div class="pull-right" style="padding-right: 50px">
            <a href="?language=pl"> <spring:message code="labels.language.pl" /></a> | <a href="?language=en"> <spring:message code="labels.language.en" /></a>
        </div>
    </div>
</section>

<div class="container">
    <div class="col-md-4 col-md-offset-4">
        <h1>
            <spring:message code="labels.registration"></spring:message>
        </h1>
        <div class="panel panel-default">
            <div class="panel-body">
                <form:form modelAttribute="customer" method="POST" enctype="utf8">
                    <fieldset>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.firstname"></spring:message>
                            </label>
                            <form:input path="firstname" value=""/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.lastname"></spring:message>
                            </label>
                            <form:input path="lastname" value=""/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.email"></spring:message>
                            </label>
                            <form:input path="email" value=""/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.login.login"></spring:message>
                            </label>
                            <form:input path="user.login" value=""/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.login.password"></spring:message>
                            </label>
                            <form:input path="user.password" value="" type="password"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.login.confirmPassword"></spring:message>
                            </label>
                            <input value="" name="matchingPassword" type="password"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.address.country"></spring:message>
                            </label>
                            <form:input path="address.country" value="" type="text"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.address.city"></spring:message>
                            </label>
                            <form:input path="address.city" value="" type="text"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.address.zipcode"></spring:message>
                            </label>
                            <form:input path="address.zipCode" value="" type="text"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.address.street"></spring:message>
                            </label>
                            <form:input path="address.street" value="" type="text"/>
                        </div>
                        <div class="form-group">
                            <label>
                                <spring:message code="labels.customer.address.houseNumber"></spring:message>
                            </label>
                            <form:input path="address.houseNumber" value="" type="text"/>
                        </div>
                        <input class="btn btn-lg btn-success btn-block" type="submit"
                               value="<spring:message code="labels.login.submit" />">
                    </fieldset>
                </form:form>
                <a href="<c:url value="/login" />">
                    <spring:message code="labels.login.login"></spring:message>
                </a>
            </div>
        </div>
    </div>
</div>

