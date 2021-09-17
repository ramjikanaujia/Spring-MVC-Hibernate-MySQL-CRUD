<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add customer</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/bootstrap/js/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

</head>
<body>

<div class="container">
    <div class="card">
        <div class="card-header">
            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Add customers</h3>
        </div>
        <div class="card-body">
            <form:form method="post" action="/add-customer" modelAttribute="customer">

                <div class="form-group">
                    <form:label for="inputFirstName" path="firstName">First name: </form:label>
                    <form:input type="text" class="form-control" id="inputFirstName" placeholder="First name"
                                path="firstName"/>
                </div>

                <div class="form-group">
                    <form:label for="inputLastName" path="lastName">Last name: </form:label>
                    <form:input type="text" class="form-control" id="inputLastName" placeholder="Last name"
                                path="lastName"/>
                </div>

                <div class="form-group">
                    <form:label for="inputEmail" path="email">Email: </form:label>
                    <form:input type="email" class="form-control" id="inputEmail" placeholder="Email"
                                path="email"/>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>