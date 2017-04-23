<%--
  Created by IntelliJ IDEA.
  User: Rafi
  Date: 24/07/2016
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title><spring:message code="labels.customer.create"/></title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>
                <spring:message code="labels.customer.create"/>
            </h1>
        </div>
    </div>
    <div class="pull-right" style="padding-right: 50px">
        <a href="?language=pl"> <spring:message code="labels.language.pl"/></a> | <a href="?language=en">
        <spring:message code="labels.language.en"/></a>
    </div>
</section>

<section class="container">
    <form:form modelAttribute="customer" class="form-horizontal" enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
        <fieldset>
            <legend>
                <spring:message code="labels.customer.create"/>
            </legend>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.firstname"/></label>
                <div class="col-lg-10">
                    <form:input id="firstname" path="firstname" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.lastname"/></label>
                <div class="col-lg-10">
                    <form:input id="lastname" path="lastname" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.country"/></label>
                <div class="col-lg-10">
                    <form:input id="address.country" path="address.country" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.city"/></label>
                <div class="col-lg-10">
                    <form:input id="address.city" path="address.city" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.zipCode"/></label>
                <div class="col-lg-10">
                    <form:input id="address.zipCode" path="address.zipCode" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.street"/></label>
                <div class="col-lg-10">
                    <form:input id="address.street" path="address.street" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.houseNumber"/></label>
                <div class="col-lg-10">
                    <form:input id="address.houseNumber" path="address.houseNumber" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.role"/></label>
                <div class="col-lg-10">
                    <form:input id="user.role" path="user.role" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.login.login"/></label>
                <div class="col-lg-10">
                    <form:input path="user.login" type="text" class="form:input-large"/>
                    <form:errors path="user" cssClass="text-danger"></form:errors>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.login.password"/></label>
                <div class="col-lg-10">
                    <form:input id="user.password" path="user.password" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value="Dodaj"/>
                    <a class="btn btn-default" href="<spring:url value="/customers" />"> <span
                            class="glyphicon glyphicon-hand-left"></span>
                            <spring:message code="labels.return"/>
                </div>
            </div>

        </fieldset>
    </form:form>
</section>


</body>
</html>
