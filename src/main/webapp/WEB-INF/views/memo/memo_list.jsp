<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th scope="col">No.</th>
            <th scope="col">Name</th>
            <th scope="col">Memo</th>
            <th scope="col">Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="row" items="${map.items}" varStatus="status">
            <tr>
                <th scope="row">${status.count}</th>
                <td>${row.writer}</td>
                <td><a href="#" onclick="memo_view('${row._id}')">${row.memo}</a></td>
                <td><fmt:formatDate value="${row.post_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
