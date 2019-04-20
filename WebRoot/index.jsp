<%@ page language="java" import="java.util.*" pageEncoding="UTF8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>生成中文验证码</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <script type="text/javascript">
        function change() {
            document.getElementById("image").src = "${pageContext.request.contextPath}/checkcode?time"
                + new Date().getTime();
        };
    </script>
</head>
<body>
<center style="padding-top: 50px;">
    <img src='${pageContext.request.contextPath}/checkcode' id="image" onclick="change();">
    <br/>
    <span id="checkcode_span">
       <a href="javascript:void(0)" onclick="change();"><font color='black'>看不清，换一张</font></a>
    </span>
</center>
</body>
</html>
