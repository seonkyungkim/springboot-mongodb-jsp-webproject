<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<br>

<c:forEach var="dto" items="${map.list}" varStatus="status">
    Guestbook #${status.count}/${map.count} <%-- # current/entire --%>
    <table class="table table-hover" border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Date</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${dto.name}</td>
                <td><fmt:formatDate value="${dto.post_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${dto.email}</td>
            </tr>
            <tr>
                <th>Content</th>
                <td colspan="2">${dto.content}</td>
            </tr>
        </tbody>
    </table>
</c:forEach>
