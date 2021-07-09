<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guestbook</title>
    <%@ include file="../include/header.jsp"%>
    <script>
        function gb_edit(){
            document.form1.action="/gbUpdate.do";
            document.form1.submit();
        }
        function gb_del(){
            let yn = confirm("Are you sure to delete it?");
            if(yn == true){
                document.form1.action="/gbDelete.do";
                document.form1.submit();
            }
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
                <input type="text" name="name" id="name" class="form-control" value="${map.dto.name}">
            </div>
            <div class="mb-1">
                <label for="email" class="form-label">Email: </label>
                <input type="email" name="email" id="email" class="form-control" value="${map.dto.email}">
            </div>
            <div class="mb-3">
                <label for="textarea" class="form-label">Content:</label>
                <textarea rows="5" cols="55" class="form-control" id="textarea" name="textarea">${map.dto.content}</textarea>
            </div>
            <div class="col-12">
                <input type="hidden" name="_id" id="_id" value="${map.dto._id}">
                <input type="button" class="btn btn-success" value="Edit" onclick="gb_edit()">
                <input type="button" class="btn btn-danger" value="Delete" onclick="gb_del()">
                <input type="button" class="btn btn-secondary" value="Cancel" onclick="location.href='/guestbook.do';">
            </div>
        </form>
    </div>
</body>
</html>
