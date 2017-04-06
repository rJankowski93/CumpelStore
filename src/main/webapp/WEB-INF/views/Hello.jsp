<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>Product by Id:</h1>   <h3>${Product1.name} </h3>

<%--<h1>Product by id:</h1>   <h3>${Product2.name} </h3>--%>

<h1>Product by category:</h1>
<c:forEach items="${Product3}" var="product">
    <h3>${product.name}</h3>
</c:forEach>

<h1>Promotion product:</h1>
<c:forEach items="${Product4}" var="product">
    <h3>${product.name}</h3>
</c:forEach>

<h1>Products where units greater than:</h1>
<c:forEach items="${Product5}" var="product">
    <h3>${product.name}</h3>
</c:forEach>