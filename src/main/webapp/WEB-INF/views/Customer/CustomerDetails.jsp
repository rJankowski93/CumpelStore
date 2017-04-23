<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title>Customer Details</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>
                Customer Details
            </h1>
        </div>
    </div>
</section>

<section class="container">
    <div class="row">
        <div class="col-md-5">
            <h2>${customer.firstname}</h2>
            <h3>${customer.lastname}</h3>
            <h4><fmt:formatDate value="${customer.registrationDate}" pattern="dd/MM/yyyy"/></h4>
            <p>
                <strong class="label label-warning">Address</strong>
            </p>
            <p>
                <strong>Country</strong>: ${customer.address.country}
            </p>
            <p>
                <strong>city</strong>: ${customer.address.city}
            </p>
            <p>
                <strong>zipCode</strong>: ${customer.address.zipCode}
            </p>
            <p>
                <strong>street</strong>: ${customer.address.street}
            </p>
            <p>
                <strong>houseNumber</strong>: ${customer.address.houseNumber}
            </p>
            <p>
                <a class="btn btn-default" href="<spring:url value="/customers" />"> <span
                        class="glyphicon glyphicon-hand-left"></span> Return
                </a>
            </p>
        </div>
    </div>
</section>

</body>
</html>
