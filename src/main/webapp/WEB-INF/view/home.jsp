<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>
<head>

<title>spring security</title>
</head>
<body>
<h2>Home page - Google !!!</h2>
<hr>
<p>
Welcome to spring home page
</p>

<hr>
<!-- display username and role  -->
<p>
User: <security:authentication property="principal.username"/>
<br><br>
Role(s): <security:authentication property="principal.authorities"/>
</p>


<security:authorize access="hasRole('MANAGER')">
<!--  add link to point /leaders  this is the manager -->
<p>
<a href="${pageContext.request.contextPath}/leaders">Leadership meeting </a>
(Only for manager )
</p>
</security:authorize>
<hr>

<security:authorize  access="hasRole('ADMIN')">
<!--  add link to point /systems  this is the system -->
<p>
<a href="${pageContext.request.contextPath}/systems">IT system meeting </a>
(Only for Admin )
</p>
</security:authorize>


<!-- logout -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">

<input type="submit" value="Logout"/>
</form:form>

</body>
</html>