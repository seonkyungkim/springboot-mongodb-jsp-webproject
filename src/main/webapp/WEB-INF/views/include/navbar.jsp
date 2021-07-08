<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Spring05 Project</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/memo.do">Memo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/guestbook.do">GuestBook</a>
                </li>
                <li class="d-flex" style="padding-left: 20px">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-light" type="submit">Search</button>
                </li>
            </ul>
        </div>
    </div>

</nav>
<div style="text-align: right; padding-right: 30px; ">
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


