<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 05/03/2022
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style><%@include file="/WEB-INF/css/stylesheet.css"%></style>
    <title>Add a new book</title>
</head>
<body>
<%@ include file="../template/header.jsp"%>

<h2>Add A New Book</h2>

    <div id="formulaire">
        <s:form action="FORM3" >

            <s:textfield name="isbn" id="isbn"
                         label="ISBN" labelposition="left">
            </s:textfield>
            <s:textfield name="book_title" id="book_title"
                         label="Title" labelposition="left">
            </s:textfield>

            <s:textarea name="book_description" id="book_description"
                        label="Description" labelposition="left">
            </s:textarea>
            <!-- Use the html5 email type -->
            <s:textfield type="book_price" name="book_price" id="book_price"
                         label="Price" labelposition="left">
            </s:textfield>

            <s:select label="Select an Author" headerKey="-1"
                      headerValue="-" list="subjectList"
                      name="selectedSubject" value="defaultSubject" />

            <s:select label="Select an Editor" headerKey="-1"
                      headerValue="-" list="subjectList"
                      name="selectedSubject" value="defaultSubject" />

            <s:select label="Select a Category" headerKey="-1"
                      headerValue="-" list="subjectList"
                      name="selectedSubject" value="defaultSubject" />

            <s:label for="attachment" value="Attachment">
                <s:file name="attachment" accept="text/html,text/plain" />
            </s:label>

            <s:submit value = "Register" align="center"></s:submit>


        </s:form>
    </div>


<%@ include file="../template/footer.jsp"%>

</body>
</html>
