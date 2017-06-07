<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<script>

</script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title><spring:message code="labels.modify" /></title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>
                <spring:message code="labels.modify"/>
            </h1>
        </div>
    </div>
    <div class="pull-right" style="padding-right: 50px">
        <a href="?language=pl"> <spring:message code="labels.language.pl"/></a> | <a href="?language=en">
        <spring:message code="labels.language.en"/></a>
    </div>
</section>

<section class="container">
    <form:form modelAttribute="customer" method="POST" class="form-horizontal" enctype="multipart/form-data">
        <fieldset>
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
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.email"/></label>
                <div class="col-lg-10">
                    <form:input id="email" path="email" type="text" class="form:input-large"/>
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
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.customer.address.zipcode"/></label>
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
                <label class="control-label col-lg-2 col-lg-2"><spring:message code="labels.login.login"/></label>
                <div class="col-lg-10">
                    <form:input id="user.login" path="user.login" type="text" class="form:input-large"/>
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
                    <input type="submit" id="btnAdd" class="btn btn-primary" value="Save"/>
                    <a class="btn btn-default" href="<spring:url value="/customers" />"> <span
                            class="glyphicon glyphicon-hand-left"></span>
                            <spring:message code="labels.return"/>
                    </a>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2" for="avatar"> <spring:message code="labels.customer.avatar"/>
                </label>
                <div class="col-lg-10">
                    <form:input id="avatar" path="avatar" type="file" class="form:input-large"/>
                </div>
            </div>

        </fieldset>
    </form:form>
</section>
</body>
</html>
