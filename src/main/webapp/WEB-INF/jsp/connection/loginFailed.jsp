<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 05/03/2022
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>

<%@ taglib prefix="s" uri="/struts-tags" %>
Login failed...!
Hello <s:property value="email" />, Wrong
Hello <s:property value="password" />, wrong

<s:if test="hasActionErrors()">
    <div class="errors">
        <s:actionerror/>
    </div>
</s:if>
<s:if test="hasFieldErrors()">
    <div class="errors">
        <s:fielderror/>
    </div>
</s:if>

<s:property value="#application.email"/>

</body>
</html>
