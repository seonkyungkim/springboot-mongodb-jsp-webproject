<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <%@ include file="../include/header.jsp"%>
</head>
<body>
    <%@ include file="../include/navbar.jsp" %>
    <h2 align="center">Please sign in.</h2><br>
    <div class="container">
        <form method="post" action="${pageContext.request.contextPath}/member/member_join.do" class="was-validated" >
            <div class="row mb-3">
                <label for="inputId2" class="form-label">ID: </label>
                <input type="text" name="_id" class="form-control" id="inputId2" placeholder="UserID" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword2" class="form-label">Password: </label>
                <input type="password" name="passwd" class="form-control" id="inputPassword2" placeholder="Password" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="row mb-3">
                <label for="inputName1" class="form-label">Name: </label>
                <input type="text" name="name" class="form-control" id="inputName1" placeholder="Password" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="col-12">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>
