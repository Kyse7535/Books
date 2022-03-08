<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 05/03/2022
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en_us">

<head>
    <meta charset="utf-8" />
    <title>Connexion</title>
    <link type="text/css" rel="stylesheet" href="form.css" />
    <link rel="stylesheet" href="../../css/stylesheet.css" />
</head>

<body>

<%@ include file="../template/header.jsp"%>


<h2>Upload a File</h2>

    <s:form action="resultAction" namespace="/" method="POST" enctype="multipart/form-data">
        <s:file name="fileUpload" label="Select a File to upload" size="40"  />

        <s:submit value="submit" name="submit" align="center"/></file>
    </s:form>

<%@ include file="../template/footer.jsp"%>

</body>
</html>
