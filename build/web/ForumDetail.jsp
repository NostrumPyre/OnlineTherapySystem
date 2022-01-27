<%-- 
    Document   : ForumDetail
    Created on : Jan 27, 2022, 9:47:12 PM
    Author     : Darlen
--%>

<%@page import="java.util.ArrayList"%>
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
                        <li class="nav-item"><a href="LogoutController" class="nav-link">Log Out</a></li>
                    </ul>
                </header>
            </div>
        <%
             ArrayList<Forum> forumList = (ArrayList<Forum>) session.getAttribute("forumList");
                        for(int i=0;i<forumList.size();i++){
                             if(forumList.get(i).getForumid() == Integer.parseInt(request.getParameter("id"))) {
        %>
<div class="py-12 border border-gray-300 rounded-2xl p-4 mx-56">
    <h2 class=" text-left ml-56 mt-6 text-2xl text-indigo-600 font-semibold">
        <%=forumList.get(i).getTitle()%>
     </h2>
        <div  class="px-4 lg:px-0 mt-12 text-gray-700 max-w-screen-md mx-auto text-lg leading-relaxed">
            <p class="text-left ml-6 pb-6"><%=forumList.get(i).getForum_question()%></p>
    </div>
    </div>
    
    
    <div class="py-12 border border-gray-300 rounded-2xl p-4 mx-56 mt-6">
    <h2 class="mt-6 ml-56 text-left text-2xl text-indigo-600 font-semibold">
                  Comments
                </h2>
        <div class="py-12">
   
        <div  class="px-4 lg:px-0  text-gray-700 max-w-screen-md mx-auto text-lg leading-relaxed">
            <p class="text-left ml-6 pb-6"><%=forumList.get(i).getForum_answer()%></p>
    </div>
    </div>
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <form name="forum_answer" method="POST" action="AnswerController">
                        
                        

                        <div class="mb-8">
                            <label class="text-xl text-gray-600">Comment <span class="text-red-500">*</span></label></br>
                            <textarea name="forum_answer" class="p-2 w-100 border-2 border-gray-500">
                                
                            </textarea>
                        </div>

                        <div class="flex p-1">
                            <select class="border-2 border-gray-300 border-r p-2" name="action">
                                <option>Save and Publish</option>
                                <option>Save Draft</option>
                            </select>
                           
                            
                                    <input type="hidden" name="id" value="<%= forumList.get(i).getForumid() %>">
                                    <button class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" type="Submit">
                                        <p>Send</p>
                                    </button>
                                
                        </div>
                        <% }} %>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>

    <script>
        CKEDITOR.replace( 'content' );
    </script>
    </body>
</html>
