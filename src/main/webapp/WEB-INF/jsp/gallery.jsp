<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta content="charset=utf-8">
    <title>FlexSlider 2</title>
    <meta name="viewport" content="">

    <link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script defer src="resources/js/jquery.flexslider.js"></script>

    <script type="text/javascript">
        $(function () {
            SyntaxHighlighter.all();
        });
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>


</head>
<body>
<a href="/"> BAck</a>

<div id="container" class="cf">

    <div id="main" role="main">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">

                    <c:forEach items="${images}" var="name">
                        <li>
                            <img height="90%" src="<c:url value='${name}'/> " />
                        </li>
                    </c:forEach>

                </ul>
            </div>
        </section>
    </div>

</div>
<%--<select name="image">--%>
<%--<c:forEach items="${images}" var="img">--%>


    <%--<option value="${img}"  data-img-src="resources/images/GvDyI1fh8Uw.jpg"  > 121</option>--%>

<%--</c:forEach>--%>
<%--</select>--%>
</body>
</html>