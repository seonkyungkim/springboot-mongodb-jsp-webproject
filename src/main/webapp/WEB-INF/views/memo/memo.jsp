<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Memo</title>
    <%@ include file="../include/header.jsp" %>
    <script>
        $(function () {
            memo_list();
            $("#btnWrite").click(function () {
                memo_insert();
            });
        });

        function memo_insert() {
            let writer = $("#writer").val();
            let memo = $("#memo").val();
            let param = "writer=" + writer + "&memo=" + memo;
            $.ajax({
                type: "post",
                data: param,
                url: "/memo_insert.do",
                success: function () {
                    //show updated memo list
                    memo_list();
                    //reset form values
                    $("#writer").val("");
                    $("#memo").val("");
                }
            });
        }

        function memo_list() {
            $.ajax({
                type: "post",
                url: "/memo_list.do",
                success: function (data) {
                    $("#memoList").html(data);
                }
            });
        }

        function memo_view(num) {
            $(location).attr("href", "/memo_view.do?_id=" + num);
        }
    </script>
</head>
<body>
<%@ include file="../include/navbar.jsp" %>
<h2 align="center">Simple line Memo</h2><br>

<div class="container row-cols-1">
    <div class="row m-6">
        <label for="writer" class="col-form-label">Name: </label>
        <div class="col-3">
            <input type="text" class="form-control" id="writer" name="writer">
        </div>
    </div>
    <div class="row m-6">
        <label for="memo" class="col-form-label">Memo: </label>
        <div class="col-10">
            <input type="text" name="memo" id="memo" size="50" class="form-control">
        </div>
    </div>
    <br>
    <div class="col-12">
        <input type="button" class="btn btn-success" id="btnWrite" value="Write">
    </div>
    <br><br>
    <div id="memoList">

    </div>
</div>
</body>
</html>
