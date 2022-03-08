<%--
  Created by IntelliJ IDEA.
  User: ktevot
  Date: 05/03/2022
  Time: 08:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style><%@include file="/WEB-INF/css/stylesheet.css"%></style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/redmond/jquery-ui-1.10.1.custom.min.css">
    <script type="text/javascript" src="js/jquery/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery/jquery-ui-1.10.1.custom.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/hamburger.js"></script>
    <script>
        <%@include file="/WEB-INF/js/index.js"%>
    </script>
    <title>BOOKS CATALOG</title>

   <!-- <script>

        $( document ).ready(function() {
            //   $('#tt').addClass("active");


            if(typeof sessionStorage!='undefined') {
                if('tab' in sessionStorage) {

                    $('ul li').removeClass('active');

                    var id = "#"+sessionStorage['tab'];


                    if (sessionStorage['tab']==""){

                    } else{
                        $("#"+sessionStorage['tab']).addClass("active");
                    }
                }
            } else {
                alert("sessionStorage n'est pas support�");
            }

        });

    </script>

    -->
</head>
<body>

<div id="bloc_page">
    <header>
        <div id="banniere_image" class="d-flex py-3 justify-content-around align-items-center">
            <H2 class="mx-0 my-0">BOOKS CATALOG</H2>
            <form action="FORM5" class="my-0 d-flex justify-content-center align-items-center" id="form5">
                <input type="search" placeholder="Fill in keyword" name="the_search" class="input-search" />
                <input type="submit" value="Search"  />
            </form>
        </div>
        <nav>
            <ul class=" d-flex justify-content-around mx-auto" >

                <li  id="1" class="active" onclick="sessionStorage.tab='1'">
                    <s:a action="accueil" id="displayAllAdvisedBooks"><i class="fa fa-home"></i> Home</s:a>
                </li>
                <li id="2" onclick="sessionStorage.tab='2'">
                    <s:a action="authors">Author</s:a>
                </li>
                <li id="3" onclick="sessionStorage.tab='3'"><a href="#theme">Theme</a></li>

                <li id="4" onclick="sessionStorage.tab='4'"><a href="#youth">Youth</a></li>
                <li id="5" onclick="sessionStorage.tab='5'"><a href="#periodic">Periodic</a></li>

                <li id="6" onclick="sessionStorage.tab=this.id"><a href="/catalog/jsp/connection/Login.jsp#connection">
                    <i class="fa fa-male"></i> Sign in</a>
                </li>
            </ul>
        </nav>
    </header>
</div>
<div id="header_mobile">
    <div id="banniere" >
        <h2 class="mx-0 my-0">BOOKS CATALOG</h2>
        <form action="FORM5" class="my-0 d-flex justify-content-center align-items-center form5" >
            <input type="search" placeholder="Fill in keyword" name="the_search" class="input-search"  />
            <input type="submit" value="Search"  />
        </form>
    </div>
    <nav>
        <ul>
            <li><i class="bi bi-list fa-2x icon-menu" ></i></li>
        </ul>
        <ul class="header-mobile-menu" id="myTopnav">

            <li  id="1" class="active" onclick="sessionStorage.tab='1'"><a href="displayAllAdvisedBooks" id="displayAllAdvisedBooks"> Home</a></li>
            <li id="2" onclick="sessionStorage.tab='2'"><a href="DisplayAllBookByAuthor">Author</a></li>
            <li id="3" onclick="sessionStorage.tab='3'"><a href="#theme">Theme</a></li>

            <li id="4" onclick="sessionStorage.tab='4'"><a href="#youth">Youth</a></li>
            <li id="5" onclick="sessionStorage.tab='5'"><a href="#periodic">Periodic</a></li>

            <li id="6" onclick="sessionStorage.tab=this.id"><a href="/catalog/jsp/connection/Login.jsp#connection">
                 Sign in</a>
            </li>
        </ul>
    </nav>
</div>

