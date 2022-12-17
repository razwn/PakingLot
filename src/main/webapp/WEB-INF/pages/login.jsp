<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:pageTemplate pageTitle="Login">

  <c:if test="${message != null}">
    <div class="alert alert-danger" role="alert">
      ${message}
    </div>
  </c:if>

  <form class="form-signin" method="POST" action="j_security_check">
    <br>
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
    <br>
    <label for="username" class="sr-only">Sign In</label>
    <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus>
    <br>
    <label for="password" class="sr-only">Password</label>
    <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
  </form>

</t:pageTemplate>