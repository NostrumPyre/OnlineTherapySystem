<%-- 
    Document   : TherapistProfile
    Created on : Jan 28, 2022, 6:09:56 AM
    Author     : Darlen
--%>

<%@page import="model.Therapist"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <title>Therapist Profile</title>
    </head>
    <body style="background-color: #F3F4FF">

        <div class="container">
            <header class="p-3 mb-3 border-bottom">
                <div class="container">
                    <div class="d-flex flex-wrap align-items-center justify-content-end justify-content-lg-start">

                        

                        <div style="">
                            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                        <span class="fs-4">Therapion</span>
                    </a>
                        </div>
                    </div>
                </div>
            </header>
            <div>
                <%
                   // ArrayList<Therapist> therapistList = (ArrayList<Therapist>) session.getAttribute("therapistList");
                    //for (int i = 0; i < therapistList.size(); i++) {
                        //if (therapistList.get(i).getTherapistid() == Integer.parseInt(request.getParameter("id"))) { 
                %>
                
                <%
                    Therapist therapist = (Therapist) session.getAttribute("therapist");
                %>
                <h2>Profile</h2>
                <div class="container" style="width: 800px; margin-top: 30px;">
                    <form action="UpdateProfileController">
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" id="name" value="<%= therapist.getName() %>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" id="email" value="<%= therapist.getEmail() %>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Phone</label>
                            <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" value="<%= therapist.getPhone() %>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" id="address" value="<%= therapist.getAddress() %>">
                        </div>
                        <p>Availability</p>
                        <div class="flex justify-left">
                            
                            <div class="mt-2">
                            <label class="inline-flex items-center text-gray-600">
                              <input type="radio" class="form-radio" name="availability" value="true">
                              <span class="ml-2 ">Available</span>
                            </label>
                            <label class="inline-flex items-center ml-6 text-gray-600">
                              <input type="radio" class="form-radio" name="availability" value="false">
                              <span class="ml-2">Not Available</span>
                            </label>
                                
                          </div>
                          </div>

                        <input type="hidden" name="id" value="<%= therapist.getTherapistid() %>">
                        <button class="mt-4 inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" type="Submit">
                            <p>Update</p>
                        </button>
                    </form>
                    <%  
                            
                        

                    %>
                </div>
            </div>
        </div>







        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
