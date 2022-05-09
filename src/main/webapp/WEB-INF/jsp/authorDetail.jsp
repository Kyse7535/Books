<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 08/03/2022
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>

<%@include file="template/header.jsp"%>
<div class="part1-author" background="/WEB-INF/images/books.jpg">

</div>
<h1><s:property value="author.authorFirstname" /> <s:property value="author.authorLastname" /> </h1>
<%@include file="template/footer.jsp"%>
</body>
</html>
