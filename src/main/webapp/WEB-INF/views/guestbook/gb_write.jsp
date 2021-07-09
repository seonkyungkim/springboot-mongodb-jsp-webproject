<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guestbook</title>
    <%@ include file="../include/header.jsp"%>
    <script>
        function check() {
            document.form1.action = "/gbInsert.do";
            document.form1.submit();
        }
    </script>
</head>
<body>
<%@ include file="../include/navbar.jsp"%>


<div class="container" style="align: center">
    <h2 align="center">Write Guestbook</h2><br><br>
    <form name="form1" id="form1" method="post" class="row g-3">
        <div class="mb-1">
            <label for="name" class="form-label">Name: </label>
            <input type="text" name="name" id="name" class="form-control">
        </div>
        <div class="mb-1">
            <label for="email" class="form-label">Email: </label>
            <input type="email" name="email" id="email" class="form-control">
        </div>
        <div class="mb-3">
            <label for="textarea" class="form-label">Content:</label>
            <textarea rows=3 class="form-control" id="textarea" name="textarea"></textarea>
        </div>
        <div class="col-12">
            <input type="reset" class="btn btn-secondary" value="Cancel" >
            <input type="button" class="btn btn-success" value="Write" onclick="check()">
        </div>
    </form>
</div>
</body>
</html>
