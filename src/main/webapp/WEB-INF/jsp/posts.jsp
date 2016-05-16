<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<table>

  <c:forEach var="p" items="${posts}">



    <tr>
      <td>${p.id}</td>
      <td>${p.title}</td>
      <td>${p.context}</td>
      <td>${p.date}</td>
      <form action="deletePost" method="post">

       Delete Post № <input type="submit" id="delete" name="id" value="${p.id}"   align="right">

      </form>
    </tr>
  </c:forEach>
</table>
<form action="addPost" method="post">
  <input id="title" type="text" name="title" required>
  <input id="context" type="text" name="context" required>

  <input   type="submit" name="add" value="add"  align="right">

</form>
</body>
</html>
