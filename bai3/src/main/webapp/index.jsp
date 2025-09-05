<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Multi-language Demo</title>
</head>
<body>
<c:set var="languageCode" value="${param.radLanguageCode}" />
<c:if test="${not empty languageCode}">
  <fmt:setLocale value="${languageCode}" scope="session" />
</c:if>
<fmt:setBundle basename="resource" scope="session"/>
<fmt:requestEncoding value="UTF-8" />

<form action="index.jsp" method="GET">
  <fieldset>
    <legend><fmt:message key="languageMessage" /></legend>
    <input type="radio" name="radLanguageCode" value="vi" <c:if test="${languageCode == 'vi'}">checked</c:if> /> <fmt:message key="vn" />
    <input type="radio" name="radLanguageCode" value="en" <c:if test="${languageCode == 'en'}">checked</c:if> /> <fmt:message key="en" />
    <button type="submit"><fmt:message key="chooseButton" /></button>
  </fieldset>
</form>

<form>
  <fieldset>
    <legend>Login</legend>
    <label for="txtUserName"><fmt:message key="userName" /></label>
    <input type="text" id="txtUserName" name="txtUserName" />
    <br/>
    <label for="txtPassword"><fmt:message key="pass" /></label>
    <input type="password" id="txtPassword" name="txtPassword" />
    <br/>
    <button type="submit"><fmt:message key="login" /></button>
  </fieldset>
</form>
</body>
</html>