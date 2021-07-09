<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guestbook</title>
    <%@ include file="../include/header.jsp" %>
    <script>
        $(function() { //onload 이벤트
            gbList();
        });
        function gbList(){
            $.ajax({
                url: "/gbList.do",
                success: function( result ){
                    $("#gbList").html( result );
                }
            });
        }
        function gbWrite(){
            location.href = "/gbWrite.do";
        }
    </script>
</head>
<body>
    <%@ include file="../include/navbar.jsp" %>

    <div class="container align-content-center">
        <h2 align="center">Guestbook</h2>
        <div class="col-12" align="right">
            <input type="button" class="btn btn-success" value="Write" onclick="gbWrite();">
        </div>
        <div id="gbList"></div>
    </div>
</body>
</html>
