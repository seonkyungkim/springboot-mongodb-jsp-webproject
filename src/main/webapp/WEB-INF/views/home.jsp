<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <%@ include file="include/header.jsp"%>
</head>
<body>
    <%@ include file="include/navbar.jsp"%>
    <h1>Welcome!</h1>
    <c:if test="${sessionScope.userid != null}">
        <h2>Welcome, ${sessionScope.name}(${sessionScope.userid})!</h2>
    </c:if>
</body>
<%@ include file="include/footer.jsp"%>
</html>
