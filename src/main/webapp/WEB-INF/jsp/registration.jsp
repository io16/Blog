<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>

	<link rel="stylesheet" href="resources/css/styleLogIn.css" media="screen" type="text/css" />

</head>
<body>



    <div id="login">
        <form action="/createUser" method="post">
            <fieldset class="clearfix">

                <p><span class="fontawesome-user"></span><input  name="firstName" type="text" value="First name" onBlur="if(this.value == '') this.value = 'First name'" onFocus="if(this.value == 'First name') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
                <p><span class="fontawesome-user"></span><input  name="lastName" type="text" value="Last name" onBlur="if(this.value == '') this.value = 'Логин'" onFocus="if(this.value == 'Логин') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->


                <p><span class="fontawesome-user"></span><input  name="email" type="text" value="email" onBlur="if(this.value == '') this.value = 'Логин'" onFocus="if(this.value == 'Логин') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
                <p><span class="fontawesome-lock"></span><input name="pass" type="password"  value="" onBlur="if(this.value == '') this.value = 'Пароль'" onFocus="if(this.value == 'Пароль') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Password" -->
                <p><input type="submit" value="Registration"></p>
                <p> <a href="/"> BAck</a></p>
            </fieldset>
        </form>

    </div>
</body>
</html>