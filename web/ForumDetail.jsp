<%-- 
    Document   : ForumDetail
    Created on : Jan 27, 2022, 9:47:12 PM
    Author     : Darlen
--%>

<%@page import="model.Forum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src ="https://cdn.tailwindcss.com"></script>
        <script src = "https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
        <script type = "module" src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
                <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                        <span class="fs-4">Therapion</span>
                    </a>

                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="landingPage.jsp" class="nav-link ">Home</a></li>
                        <li class="nav-item"><a href="advicePage.jsp" class="nav-link">Advice</a></li>
                        <li class="nav-item"><a href="ForumController" class="nav-link active">Forum</a></li>
                        <li class="nav-item"><a href="contactUs.jsp" class="nav-link" >Contact</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                    </ul>
                </header>
            </div>
        <%
             Forum f = new Forum();
            f = (Forum) request.getAttribute("forum");
            
  
        %>
<div class="py-12">
    <h2 class="mt-6 text-center text-3xl text-indigo-600 font-semibold">
        <%=f.getTitle()%>
     </h2>
        <div  class="px-4 lg:px-0 mt-12 text-gray-700 max-w-screen-md mx-auto text-lg leading-relaxed">
        <p class="pb-6"><%=f.getForum_question()%></p>
    </div>
    </div>
    </body>
</html>
