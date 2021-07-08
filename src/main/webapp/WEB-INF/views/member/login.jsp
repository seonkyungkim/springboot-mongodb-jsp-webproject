<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <%@ include file="../include/header.jsp" %>

    <script>
        $(function () {
            //If a button(id=btnLogin) is clicked, the data which saved in form1 will be sent to 'login_check.do' from MemberController.
            $("#btnLogin").click(function () {
                $("#form1").attr("action", "/member/login_check.do");
                $("#form1").submit();
            });
            //Once this button is clicked, redirect to join.do from MemberController.
            $("#btnJoin").click(function () {
                $(location).attr("href", "/member/join.do");
            });
        });
    </script>
</head>
<body>
<%@ include file="../include/navbar.jsp" %>

<div class="container row-cols-3">
    <h2 align="center">Please sign in.</h2><br>
    <form name="form1" id="form1" method="post" class="row g-3">
        <div class="row mb-1">
            <label for="inputId1" class="form-label">ID: </label>
            <input type="text" class="form-control" id="inputId1" name="_id" placeholder="UserID">
        </div>
        <div class="row mb-1">
            <label for="inputPassword1" class="form-label">Password: </label>
            <input type="password" class="form-control" id="inputPassword1" name="passwd" placeholder="Password"><br>
            <span style="color:red">${map.message}</span>
        </div>
        <div class="col-12">
            <input type="button" class="btn btn-primary" id="btnLogin" value="Sign In">
            <input type="button" class="btn btn-primary" id="btnJoin" value="Sign Up">
        </div>
    </form>
</div>
</body>
<%@ include file="../include/footer.jsp"%>
</html>
