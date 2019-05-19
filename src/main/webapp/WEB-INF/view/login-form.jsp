<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Forum - Log In</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%--    <link href="/css/login.css" rel="stylesheet" type="text/css" />--%>
    <link href="resources/css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue to Forum</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                     alt="">
                <!-- Check for login error -->

                <c:if test="${param.error != null}">

                    <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                        Invalid username and password.
                    </div>

                </c:if>

                <!-- Check for logout -->

                <c:if test="${param.logout != null}">

                    <div class="alert alert-success col-xs-offset-1 col-xs-10">
                        You have been logged out.
                    </div>

                </c:if>

                <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" class="form-signin">

                    <input type="text" class="form-control" placeholder="User name" />

                    <input type="password" class="form-control" placeholder="Passsword" />
                    <input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign in" />

                    <label class="checkbox pull-left">
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>

                    <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form:form>
            </div>
            <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="btn btn-primary" role="button" aria-pressed="true">
                Create an account
            </a>
        </div>
    </div>
</div>
</body>
</html>