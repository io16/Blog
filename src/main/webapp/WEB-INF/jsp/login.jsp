<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>

	<link rel="stylesheet" href="resources/css/styleLogIn.css" media="screen" type="text/css" />

    <style>
        .error {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }

        .msg {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        #login-box {
            width: 300px;
            padding: 20px;
            margin: 100px auto;
            background: #fff;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border: 1px solid #000;
        }
    </style>
</head>
<body>



    <div id="login">
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <c:if test="${not empty msg}">
            <div class="msg">${msg}</div>
        </c:if>
        <form 	action="<c:url value='/login' />"method="post">
            <fieldset class="clearfix">
                <c:if test="${status == false}">
                    <p>False login or pass  </p>
                    </c:if>
                <p><span class="fontawesome-user"></span><input  name="username" type="text" placeholder="Email"  required></p> <!-- JS because of IE support; better: placeholder="Username" -->
                <p><span class="fontawesome-lock"></span><input name="password" type="password"  placeholder="pass" required></p> <!-- JS because of IE support; better: placeholder="Password" -->
                <p><input type="submit" value="Log in"></p>
            </fieldset>
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>

        <a href="/"> BAck</a>

        <p> &nbsp;&nbsp;<a href="registration">Registration</a><span class="fontawesome-arrow-right"></span></p>
    </div>
</body>
</html>