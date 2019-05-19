<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

    <title>Register New User Form</title>

    <meta charset="utf-8">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="/css/login.css" rel="stylesheet" type="text/css" />

    <style>
        .error {color:red}
    </style>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Register new user</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                     alt="">
                <form:form action="${pageContext.request.contextPath}/register/processRegistrationForm"
                           modelAttribute="crmUser"
                           class="form-signin">

                    <!-- Place for messages: error, alert etc ... -->
                    <div class="form-group">
                        <div class="col-xs-15">
                            <div>

                                <!-- Check for registration error -->
                                <c:if test="${registrationError != null}">

                                    <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                            ${registrationError}
                                    </div>

                                </c:if>

                            </div>
                        </div>
                    </div>

                    <!-- User name -->
                    <form:input path="userName" placeholder="username (*)" class="form-control" />
                    <form:errors path="userName" cssClass="error" />

                    <!-- Password -->
                    <form:password path="password" placeholder="password (*)" class="form-control" />
                    <form:errors path="password" cssClass="error" />

                    <!-- Confirm Password -->
                    <form:password path="matchingPassword" placeholder="confirm password (*)" class="form-control" />
                    <form:errors path="matchingPassword" cssClass="error" />


                    <!-- First name -->
                    <form:input path="firstName" placeholder="first name (*)" class="form-control" />
                    <form:errors path="firstName" cssClass="error" />

                    <!-- Last name -->
                    <form:input path="lastName" placeholder="last name (*)" class="form-control" />
                    <form:errors path="lastName" cssClass="error" />

                    <!-- Email -->
                    <form:input path="email" placeholder="email (*)" class="form-control" />
                    <form:errors path="email" cssClass="error" />



                    <!-- Register Button -->
                    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Register" />

                    <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>