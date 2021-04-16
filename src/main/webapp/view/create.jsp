<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/16/2021
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Create Employee</h1>
<form:form method="post" action="/create" modelAttribute="employee">
<table>
    <tr>
        <td>
            <form:label path="id">STT: </form:label>
        </td>
        <td>
            <form:input path="id"></form:input>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="name">Name:</form:label>
        </td>
        <td>
            <form:input path="name"></form:input>
        </td>
    </tr>
  <tr>
      <td>
          <form:label path="contactNumber">ContactNumber</form:label>
      </td>
      <td>
          <form:input path="contactNumber"></form:input>
      </td>
  </tr>
    <tr>
        <td><input type="submit" value="Submit"></td>
    </tr>
</table>
</form:form>
</body>
</html>
