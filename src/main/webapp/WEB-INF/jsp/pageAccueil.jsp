<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 04/03/2022
  Time: 08:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="template/header.jsp"%>
<div class="part1">

</div>
<h2 class="subTitle">List of Books</h2>
<div class="list-book">

    <s:iterator value="bookAuthors">
        <s:set var="book" value="isbn" />
        <s:set var="author" value="author" />
    <div class="bookAuthor" >
        <figure>
            <img src="<s:property value="#book.imagePath" /> ">
            <figcaption>
                <s:iterator value="#book.category" status="i">
                    <s:property value="categoryName" />
                    <s:if test="!#status.last">,</s:if>
                </s:iterator>
            </figcaption>
        </figure>
        <div>
            <h3><s:a action="livre" class="book"><s:property value="#book.bookTitle" /> </s:a> </h3>
            <span>By <s:property value="#author.authorFirstname" /> <s:property value="#author.authorLastname" /> </span>
            <p><s:property value="#book.bookPrice" /> €</p>
        </div>
    </div>
    </s:iterator>
</div>

<%@include file="template/footer.jsp"%>
</body>
</html>
