<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <%@ include file="../include/header.jsp"%>
</head>
<body>
    <%@ include file="../include/navbar.jsp" %>
    <h2 align="center">Join to our website.</h2><br>
    <div class="container">
        <form method="post" action="${pageContext.request.contextPath}/member/member_join.do" class="row g-3 needs-validation" >
            <div class="row mb-1">
                <label for="inputId2" class="form-label">ID: </label>
                <input type="text" name="_id" class="form-control" id="inputId2" placeholder="UserID" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="row mb-1">
                <label for="inputPassword2" class="form-label">Password: </label>
                <input type="password" name="passwd" class="form-control" id="inputPassword2" placeholder="Password" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="row mb-1">
                <label for="inputName1" class="form-label">Name: </label>
                <input type="text" name="name" class="form-control" id="inputName1" placeholder="Name" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="col-12">
                <input type="submit" class="btn btn-success" value="Submit">
                <input type="submit" class="btn btn-secondary" value="Cancel">
            </div>
        </form>
    </div>
</body>
</html>
