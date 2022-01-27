<%-- 
    Document   : Forum
    Created on : Jan 27, 2022, 8:20:32 PM
    Author     : Darlen
--%>

<%@page import="model.Forum"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html> 
    <head>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link href = "" rel = "stylesheet">
        <script src ="https://cdn.tailwindcss.com"></script>
        <script src = "https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
        <script type = "module" src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body class="bg-gray-100 text-gray-700  font-sans quicksand"> 
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
                        <li class="nav-item"><a href="LogoutController" class="nav-link">Log Out</a></li>
                    </ul>
                </header>
                
        </div>
        <!-- component -->
        <div class="py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
            <div class="flex justify-between">
                <h1 class="text-3xl mb-10 text-indigo-600 font-semibold"></h1>
                <a href="ForumQuestion.jsp" class="flex h-16  hover:bg-indigo-500 text-indigo-700 font-semibold hover:text-white py-1 px-2 border-2 border-indigo-500 hover:border-transparent rounded">

                    <ion-icon class="my-auto text-2xl mr-2" name="add-circle-outline"></ion-icon><p class="my-auto">Add A New Post</p>

                </a>
            </div>
            <%

        ArrayList<Forum> forumList = (ArrayList<Forum>) session.getAttribute("forumList");
                        for(int i=0;i<forumList.size();i++){
                           
        %>
  <div class="">
    <div class="grid md:grid-cols-2 sm:grid-cols-1 lg:grid-cols-3 m-5 mb-10">

        
            <div class="bg-white overflow-hidden hover:bg-green-100 border border-gray-200 p-3">
        <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-lg h-2 mb-8"><%= forumList.get(i).getTitle() %></h2>
            <p class="text-xs">
              <%= forumList.get(i).getForum_question() %>  
            </p>
            
            
        </div>
        <div class="w-full text-right mt-4">
          <form action="ForumDetailsController">
                                <input type="hidden" name="id" value="<%= forumList.get(i).getForumid() %>">
                                <input type="Submit" value="Read More">
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            <% }

            %>
        </div>
    


</body>
</html>
