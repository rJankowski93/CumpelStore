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
                        <input class="btn btn-lg btn-success btn-block" type="submit" value="Zaloguj">
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>