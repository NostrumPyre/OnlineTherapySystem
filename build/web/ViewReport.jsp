<%-- 
    Document   : ViewReport
    Created on : Jan 28, 2022, 2:51:57 AM
    Author     : thoriqulhaqjibrilalqudsy
--%>

<%@page import="model.Report"%>
<%@page import="model.Questionaire"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="model.Appointment" %>
<%@page import="model.Patient" %>
<%@page import="model.Therapist" %>
<%@page import="model.DBConnection" %>
<%@page import="Controller.AppointmentDataController" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="${pageContext.request.contextPath}/resources/css/portal.css" rel="stylesheet"> 
</head>
<body>
     <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
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
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent  rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-gray-900 focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="TherapistDashboard.jsp">Dashboard</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-white bg-indigo-600 rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="appointments.jsp">Appointments</a>
    </nav>
  </div>
  <div class="py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
    <div class="flex justify-between">
        <h1 class="text-3xl mb-10 text-indigo-600 font-semibold">Report Detail</h1>
      
    </div>
      <div>
  <div class="md:grid md:grid-cols-2 md:gap-6">
    <div class="mt-5 md:mt-0 md:col-span-2">
      <form action="SubmitReportController" method="POST">
        <div class="shadow sm:rounded-md sm:overflow-hidden">
            <%
    ArrayList<Report> reportList = (ArrayList<Report>) session.getAttribute("reportList");


    for(int i=0;i<reportList.size();i++){
        if(reportList.get(i).getAppointmentid() == Integer.parseInt(request.getParameter("id"))) {
%>
          <div class="px-4 py-5 bg-white space-y-6 sm:p-6">
            <div class="col-span-6 m-0 sm:col-span-3">
                <label for="first-name" class="block text-sm font-medium text-gray-700">Date</label>
                <div class="border border-gray-200 rounded-2xl px-4 my-6 bg-gray-100">
                    <p class="py-2" ><%= reportList.get(i).getDate() %></p>
                </div>
            </div>
            <div>
              <label for="about" class="block text-sm font-medium text-gray-700">
                Report
              </label>
                <div class="border border-gray-200 rounded-2xl px-4 my-6 bg-gray-100">
                    <p class="py-2" ><%= reportList.get(i).getResult() %></p>
                </div>
            </div>

          </div>
          <%}} %>
          <div class="px-24 py-3 bg-gray-50 text-right sm:px-6">
            
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
  </div>
</div>

    </div>
</div>



  
</body>
</html>
