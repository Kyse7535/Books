<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../../css/stylesheet.css" />
    <title>Add a new member</title>
</head>
<body>
<%@ include file="../template/header.jsp"%>

<h2>Add a new member</h2>

    <div id="formulaire">
        <s:form action="FORM2" >


            <s:textfield name="member_lastname" id="member_lastname"
                         label="Lastname * " labelposition="left">
            </s:textfield>

            <s:textfield name="member_firstname" id="member_firstname"
                         label="Firstname * " labelposition="left">
            </s:textfield>

            <s:textfield name="address" id="address"
                         label="Address * " labelposition="left">
            </s:textfield>

            <s:textfield name="city" id="city"
                         label="City * " labelposition="left">
            </s:textfield>

            <s:textfield name="postalCode" id="postal"
                         label="Postal Code * " labelposition="left">
            </s:textfield>
            <!-- Use the html5 email type -->
            <s:textfield type="email" name="mail" id="mail"
                         label="Email * " labelposition="left">
            </s:textfield>

            <s:textfield type="tel" name="phone" id="phone"
                         label="PhoneNumber" labelposition="left">
                <br>
            </s:textfield>


            <s:submit value = "Register"></s:submit>

            <!--input type="reset" value="Annuler" /-->

        </s:form>
    </div>


<%@ include file="../template/footer.jsp"%>

</body>
</html>