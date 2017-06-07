<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <title>Customers List</title>
</head>

<section class="container">
    <div class="row">
        <c:forEach items="${customers}" var="customer">
            <div class="thumbnail">
                <div class="caption">
                    <h3>${customer.firstname}</h3>
                    <p>${customer.lastname}</p>
                    <p>${customer.address.country}</p>
                    <p>${customer.address.city}</p>
                    <p>${customer.address.street} ${customer.address.houseNumber}</p>
                    <p>
                        <a href=" <spring:url value="/customers/customer?id=${customer.id}" /> "
                           class="btn btn-primary"> <span class="glyphicon-info-sign glyphicon"/></span>
                            <spring:message code="labels.details"/></a>
                        <a href=" <spring:url value="/customers/removeCustomer?id=${customer.id}" /> "
                           class="btn btn-danger"> <span class="glyphicon-info-sign glyphicon"/></span>
                            <spring:message code="labels.remove"/></a>
                        <a href=" <spring:url value="/customers/modifyCustomer?id=${customer.id}" /> "
                           class="btn btn-danger"> <span class="glyphicon glyphicon-pencil glyphicon"/></span>
                            <spring:message code="labels.modify"/></a>

                    </p>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
