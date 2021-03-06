<%-- 
    Document   : therapistData
    Created on : Jan 5, 2022, 6:12:58 PM
    Author     : Darlen
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="model.Therapist" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    
    
</head>
<body>
      
<div class="md:flex flex-col md:flex-row md:min-h-screen w-full">
  <div @click.away="open = false" class="bg-gray-100 shadow-lg  flex flex-col w-full md:w-64 text-gray-700  dark-mode:text-gray-200 dark-mode:bg-gray-800 flex-shrink-0" x-data="{ open: false }">
    <div class="flex-shrink-0 px-8 py-4 flex flex-row items-center justify-between">
      <a href="#" class="text-lg font-semibold tracking-widest text-indigo-400 uppercase rounded-lg dark-mode:text-white focus:outline-none focus:shadow-outline">
          <p>Therapion</p>
      </a>
      <button class="rounded-lg md:hidden rounded-lg focus:outline-none focus:shadow-outline" @click="open = !open">
        <svg fill="currentColor" viewBox="0 0 20 20" class="w-6 h-6">
          <path x-show="!open" fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM9 15a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1z" clip-rule="evenodd"></path>
          <path x-show="open" fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
        </svg>
      </button>
    </div>
    <nav :class="{'block': open, 'hidden': !open}" class="flex-grow md:block px-4 pb-4 md:pb-0 md:overflow-y-auto">
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="AdminDashboard.jsp">Dashboard</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="AdminDataController">Admin Data</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="PatientDataController">Patient Data</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-white bg-indigo-600 rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-gray-900 focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="TherapistController">Therapist Data</a>
    </nav>
  </div>
  <div class="py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
    <div class="flex justify-between">
        <h1 class="text-3xl mb-10 text-indigo-600 font-semibold">Therapist Data</h1>
      <a href="addTherapist.jsp" class="flex h-16 bg-transparent hover:bg-indigo-500 text-indigo-700 font-semibold hover:text-white py-1 px-2 border border-indigo-500 hover:border-transparent rounded">
            
        <ion-icon class="my-auto text-2xl mr-2" name="add-circle-outline"></ion-icon><p class="my-auto">Add Therapist Account</p>
        
      </a>
    </div>
    <div class="flex flex-col">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
            <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                <tr>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Name
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Email
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Date of Birth
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Phone Number
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Address
                    </th>
                    <th scope="col" class="relative px-6 py-3">
                    <span class="sr-only">Edit</span>
                    </th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    
                <% 
                    ArrayList<Therapist> therapistList = (ArrayList<Therapist>) session.getAttribute("therapistList");
                    for(int i=0;i<therapistList.size();i++){
                %>
                    
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap ">
                        <div class="text-sm text-gray-500 "><%= therapistList.get(i).getName() %></div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap ">
                      <div class="text-sm text-gray-500 "><%= therapistList.get(i).getEmail() %></div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap ">
                      <div class="text-sm text-gray-500"><%= therapistList.get(i).getDob() %></div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap ">
                      <div class="text-sm text-gray-500"><%= therapistList.get(i).getPhone() %></div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500 ">
                      <div class="text-sm text-gray-500 "><%= therapistList.get(i).getAddress() %></div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium w-2">
                      <div class="flex gap-2 justify-end">
                        <form action="TherapistProfileController">
                                    <input type="hidden" name="id" value="<%= therapistList.get(i).getTherapistid() %>">
                                    <button class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" type="Submit">
                                       <ion-icon class="text-xl text-indigo-800" name="create-outline"></ion-icon>
                                    </button>
                                </form>
<!--                         <form action="DeleteTherapistController" method="get">
                              <input type="hidden" name="functionDelete" value="">
                              <input class="btn" id="viewbutton" type="submit" value="Delete">
                          </form>-->
<!--                        <a href="">
                          
                        </a>-->
                                <form action="DeleteTherapistController">
                                    <input type="hidden" name="functionDelete" value="<%= therapistList.get(i).getTherapistid() %>">
                                    <button class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" type="Submit">
                                       <ion-icon class="text-xl text-indigo-800" name="trash-outline"></ion-icon>
                                    </button>
                                </form>
                      </div>
                    </td>
                </tr>
                <%} %>

                </tbody>
            </table>
            </div>
        </div>
        </div>
    </div>
</div>
</div>
<script>
            function validateform()
            {
                var email = document.SignUpForm.email.value;
                var password = document.SignUpForm.password.value;
                email_format = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

                if (!email.match(email_format))
                {
                    alert("Not a Valid Email");
                    return false;
                } else if (password.length < 8)
                {
                    alert("Password must be at least 8 characters");
                    return false;
                }
            }
        </script>
  
</body>
</html>
