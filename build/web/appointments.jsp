<%-- 
    Document   : appointments
    Created on : Jan 5, 2022, 10:34:43 PM
    Author     : thoriqulhaqjibrilalqudsy
--%>

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
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-white bg-indigo-600 rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="AppointmentDataController">Appointments</a>
    </nav>
  </div>
  <div class="py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
    <div class="flex justify-between">
        <h1 class="text-3xl mb-10 text-indigo-600 font-semibold">Appointments</h1>
      
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
                    Date
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Meeting Time
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Therapist
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Condition
                    </th>
                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider ">
                    Status
                    </th>
                </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                <%
                    ArrayList<Appointment> appointmentList = (ArrayList<Appointment>) session.getAttribute("appointmentList");
                    ArrayList<Patient> patientList = (ArrayList<Patient>) session.getAttribute("patientList");
                    ArrayList<Therapist> therapistList = (ArrayList<Therapist>) session.getAttribute("therapistList");
                    ArrayList<Questionaire> questionaireList = (ArrayList<Questionaire>) session.getAttribute("questionaireList");
                    
                    
                    for(int i=0;i<appointmentList.size();i++){
                %>
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap ">
                        <div class="text-sm text-gray-500 ">
                            <%
                                for(int n=0;n<patientList.size();n++){
                                if(patientList.get(n).getPatientid() == appointmentList.get(i).getPatientid()) {
                            %>
  
                            <p><%= patientList.get(n).getName() %></p>
                            
                            <%}} %>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap ">
                        <div class="text-sm text-gray-500 ">
                            <%
                                for(int n=0;n<patientList.size();n++){
                                if(patientList.get(n).getPatientid() == appointmentList.get(i).getPatientid()) {
                            %>
  
                            <p><%= patientList.get(n).getEmail() %></p>
                            
                            <%}} %>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap ">
                        <div class="text-sm text-gray-500">
                            <p><%= appointmentList.get(i).getDate() %></p>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500 ">
                        <div class="text-sm text-gray-500 ">
                            <p><%= appointmentList.get(i).getTime_from() %> - <%= appointmentList.get(i).getTime_to() %></p>
                            <!--<p>09:00 AM - 11:00 AM</p>-->
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500 ">
                        <div class="text-sm text-gray-500 ">
                            <%
                                for(int n=0;n<therapistList.size();n++){
                                if(therapistList.get(n).getTherapistid() == appointmentList.get(i).getTherapistid()) {
                            %>
  
                            <p><%= therapistList.get(n).getName() %></p>
                            
                            <%}} %>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500 ">
                        <div class="text-sm text-gray-500 ">
                            <div class="flex justify-center">
                                <%
                                for(int n=0;n<therapistList.size();n++){
                                if(questionaireList.get(n).getPatientid() == appointmentList.get(i).getPatientid()) {
                                %>
                                <form action="ConditionDetailController">
                                    <input type="hidden" name="id" value="<%= questionaireList.get(n).getQuestionaireid() %>">
                                    <button type="Submit">
                                       <ion-icon class="my-auto text-lg" name="document-text"></ion-icon> 
                                    </button>
                                </form>
                                <%}} %>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500 ">
                        <div class="text-sm text-gray-500 ">
                            <div>
                                <div class="dropdown inline-block relative">
                                  <button class="border border-gray-300 bg-white text-gray-700 font-semibold py-2 px-3 rounded inline-flex items-center">
                                    <span class="mr-1"><p><% 
                                        String status = "";
                                        if(appointmentList.get(i).getStatus() == 0) {
                                            status = "Pending";
                                        } else if(appointmentList.get(i).getStatus() == 1) {
                                            status = "On Progress";
                                        } else if(appointmentList.get(i).getStatus() == 2) {
                                            status = "Done";
                                        }
                                 
                                    %>
                                       <%= status %> 
                                        </p></span>
                                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/> </svg>
                                  </button>
                                  <ul class="dropdown-menu fixed hidden text-gray-700 pt-1">
                                    <form action="UpdateAppointmentStatus">
                                        <input type="hidden" name="id" value="<%= appointmentList.get(i).getAppointmentid() %>">
                                        <input type="hidden" name="status" value="0">
                                        <li class=""><button type="submit" class="rounded-t bg-white hover:bg-gray-200 py-2 px-4 block whitespace-no-wrap">Pending</button></li>
                                    </form>
                                        <form action="UpdateAppointmentStatus">
                                        <input type="hidden" name="id" value="<%= appointmentList.get(i).getAppointmentid() %>">
                                        <input type="hidden" name="status" value="1">
                                        <li class=""><button type="submit" class="rounded-b bg-white hover:bg-gray-200 py-2 px-4 block whitespace-no-wrap">On Progress</button></li>
                                    </form>
                                        <form action="UpdateAppointmentStatus">
                                        <input type="hidden" name="id" value="<%= appointmentList.get(i).getAppointmentid() %>">
                                        <input type="hidden" name="status" value="2">
                                       <li class=""><button type="submit" class="rounded-b bg-white hover:bg-gray-200 py-2 px-4 block whitespace-no-wrap">Done</button></li>
                                    </form>
                                  </ul>
                                </div>
                            </div>
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



  
</body>
</html>


