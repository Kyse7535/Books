<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 05/03/2022
  Time: 09:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>Connexion</title>
    <link type="text/css" rel="stylesheet" href="form.css" />
    <link rel="stylesheet" href="../../css/stylesheet.css" />
</head>

<body>

<%@ include file="../template/header.jsp"%>


    <s:if test="hasActionErrors()">


        <div class="errors">
            <s:actionerror/>
        </div>
    </s:if>


    <div class="errors">
        <s:actionmessage/>
    </div>


    <fieldset >
        <legend>SIGN IN</legend>
        <s:form action="FORM1" id="authentification" method="post">
            <s:textfield type="email" name="email" label="Enter Your email * " placeholder="johndoe@gmail.com"/>
            <s:password  name="password" label="Enter Your Password * " /><br>
            <s:checkbox name="RememberMe" label="Remember Me" value="RemMe" />
            <s:submit value="Login" align="right" />
        </s:form>
    </fieldset>






<BR><bR><BR><bR>
<%@ include file="../template/footer.jsp"%>

</body>
</html>
