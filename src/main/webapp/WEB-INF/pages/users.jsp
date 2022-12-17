<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:pageTemplate pageTitle="Users">

  <h1>Users</h1>
  <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
    <a href="${pageContext.request.contextPath}/AddUser" class="btn btn-primary btn-lg">Add User</a>
  </c:if>
  <div class="container text-center">
    <div class="container text-center">
      <c:forEach var="user" items="${users}">
      <div class="row">
        <div class="col">
            ${user.id}
        </div>
        <div class="col">
            ${user.username}
        </div>
        <div class="col">
            ${user.email}
        </div>
      </div>
      </c:forEach>
      </div>
  </div>
</t:pageTemplate>