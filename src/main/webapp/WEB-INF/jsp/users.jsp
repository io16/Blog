<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<table>
  <c:forEach var="u" items="${users}">
    <tr>
      <td>${u.firstName}</td>
      <td>${u.lastName}</td>
      <td>${u.email}</td>
      <td>${u.pass}</td>
    </tr>
  </c:forEach>


</table>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Untitled Document</title>
  <script language="javascript" type="text/javascript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $('#image_container img').click(function () {
        //remove border on any images that might be selected
        $('#image_container img').removeClass("img_border")
        // set the img-source as value of image_from_list
        $('#image_from_list').val($(this).attr("src"));
        $('#data_value').val($(this).attr("id"));
        // $('#data_value').val( $(this).data("options").color );

        //add border to a clicked image
        $(this).addClass("img_border")
      });

    })
  </script>
  <style>
    .img_border {
      border: 4px solid blue;
    }
  </style>
</head>
<body>
<form action="addPost" method="post">
  <input type="text" name="title" required><br/>
  <%--<input type="text" name="context" required>--%>
<textarea rows="10" cols="25" STYLE="max-height: 300px; max-width: 300px"  name="context" required>

</textarea>
  <input id="image_from_list" name="image" type="text" value=""/>
  <input type="submit" name="add" value="add" align="right">

</form>
<div id="image_container">

  <c:forEach items="${images}" var="name">

    <img  width="100px" height="100px" src="<c:url value='${name}'/> "/>

  </c:forEach>

</div>


</body>
</html>