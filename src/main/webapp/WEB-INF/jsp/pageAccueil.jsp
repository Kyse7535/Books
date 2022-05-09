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
<div class="part1" background="../css/books.jpg">

</div>
<h2 class="subTitle">List of Books</h2>
<div class="list-book">

    <s:iterator value="bookAuthors">
        <s:set var="book" value="isbn" />
        <s:set var="author" value="author" />
        <s:url action="authorDetail" var="urlAuthorDetail">
            <s:param name="author_id"><s:property value="#author.id" /> </s:param>
        </s:url>

        <s:url action="addToBasket" var="addToBasketUrl">
            <s:param name="isbn"><s:property value="#book.id" /> </s:param>
        </s:url>

        <s:url action="bookDetail" var="bookDetailUrl">
            <s:param name="isbn"><s:property value="#book.id" /> </s:param>
        </s:url>
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
            <h3><a href="<s:property value="#bookDetailUrl" /> " class="book"><s:property value="#book.bookTitle" /> </a> </h3>
            <span>By <a href="<s:property value="#urlAuthorDetail" /> "><s:property value="#author.authorFirstname" />
                <s:property value="#author.authorLastname" /></a> </span>
            <p><s:property value="#book.bookPrice" /> €</p>
            <a href="<s:property value="#addToBasketUrl" /> " class="btn-basket"><i class="bi bi-basket2"></i> Add to Basket</a>
        </div>
    </div>
    </s:iterator>
</div>

<%@include file="template/footer.jsp"%>
</body>
</html>
