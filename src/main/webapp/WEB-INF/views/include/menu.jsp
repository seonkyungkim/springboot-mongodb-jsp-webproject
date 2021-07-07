<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="${pageContext.request.contextPath}/">Home</a> |
<a href="${pageContext.request.contextPath}/memo.do">Memo</a> |
<a href="${pageContext.request.contextPath}/guestbook.do">Guestbook</a> |
<div style="text-align: right">
    <c:choose>
        <%-- If an userid from a session is NULL, redirect to the login page. --%>
        <c:when test="${sessionScope.userid == null}">
            <a href="${pageContext.request.contextPath}/member/login.do">Sign in</a>
        </c:when>
        <c:otherwise>
            <%-- If the userid is NOT NULL, print out the welcome message with an user name. --%>
            Welcome, ${sessionScope.name}!
            <a href="${pageContext.request.contextPath}/member/logout.do">Logout</a>
        </c:otherwise>
    </c:choose>
</div>
<hr>