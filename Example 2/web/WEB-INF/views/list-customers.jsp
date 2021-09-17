<%--
  Created by IntelliJ IDEA.
  User: Peter Hoc
  Date: 11/18/2018
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customers</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/fontawesome/css/fontawesome.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/bootstrap/js/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

    <style>
        .pt-3-half {
            padding-top: 1.4rem;
        }
    </style>
</head>
<body>

<div class="container">

    <div class="card">
        <div class="card-header">
            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Customers</h3>
        </div>

        <a href="<c:url value="/add-customer"/>" class="btn btn-primary float-right">Add customer</a>

        <div class="card-body">
            <table class="table table-striped table-hover table-bordered table-responsive-md text-center">
                <thead class="thead-light">
                <tr>
                    <th scope="col" class="text-center">Id</th>
                    <th scope="col" class="text-center">First name</th>
                    <th scope="col" class="text-center">Last name</th>
                    <th scope="col" class="text-center">Email</th>
                    <th scope="col" class="text-center">Delete</th>
                    <th scope="col" class="text-center">Update</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${customers}" var="customer">
                <tr>
                    <th class="pt-3-half" scope="row">${customer.id}</th>
                    <td class="pt-3-half">${customer.firstName}</td>
                    <td class="pt-3-half">${customer.lastName}</td>
                    <td class="pt-3-half">${customer.email}</td>
                    <td>
                        <a type="button" class="btn btn-danger btn-sm my-0"
                           href="<c:url value="/delete-customer/${customer.id}"  />">Remove</a>
                    </td>
                    <td>
                        <a type="button" class="btn btn-default btn-sm my-0"
                           href="<c:url value="/update-customer/${customer.id}"  />">Update</a>
                    </td>
                </tr>
                </c:forEach>
                <tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
