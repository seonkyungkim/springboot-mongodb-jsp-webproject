<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Memo View</title>
    <%@ include file="../include/header.jsp"%>
    <script>
        $(function(){
            $("#btnUpdate").click(function(){
                $("#form1").attr("action", "/memo_update.do");
                $("#form1").submit();
            });
            $("#btnDelete").click(function(){
                if(confirm("Are you sure to delete it?")) {
                    $("#form1").attr("action", "/memo_delete.do");
                    $("#form1").submit();
                }
            });
        });
    </script>
</head>

<body>
<%@ include file="../include/navbar.jsp"%>
<h2 align="center">Memopad</h2>
<div class="container row-cols-3">
    <form id="form1" name="form1" method="post">
        <input type="hidden" name="_id" value="${dto._id}">

        <div class="row m-6">
            <label for="writer" class="col-form-label">Name: </label>
            <div class="col-3">
                <input type="text" class="form-control" name="wrtier" id="writer" value="${dto.writer}">
            </div>
        </div>
        <br>
        <div class="row m-6">
            <label for="memo" class="col-form-label">Memo: </label>
            <div class="col-10">
                <input type="text" name="memo" id="memo" size="50" class="form-control">
            </div>
        </div>
        <br>
        <div class="col-12">
            <input type="button" class="btn btn-success" id="btnUpdate" value="Update"> &nbsp;
            <input type="button" class="btn btn-danger" id="btnDelet" value="Delete"> &nbsp;
            <input type="button" class="btn btn-secondary" id="btnList" value="List" onclick="location.href='/memo.do';"/>
        </div>
    </form>
</div>
</body>
</html>
