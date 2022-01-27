<%-- 
    Document   : ConditionDetail
    Created on : Jan 28, 2022, 1:33:11 AM
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
        <h1 class="text-3xl mb-10 text-indigo-600 font-semibold">Condition Detail</h1>
      
    </div>

<%
    ArrayList<Appointment> appointmentList = (ArrayList<Appointment>) session.getAttribute("appointmentList");
    ArrayList<Patient> patientList = (ArrayList<Patient>) session.getAttribute("patientList");
    ArrayList<Therapist> therapistList = (ArrayList<Therapist>) session.getAttribute("therapistList");
    ArrayList<Questionaire> questionaireList = (ArrayList<Questionaire>) session.getAttribute("questionaireList");
    ArrayList<Report> reportList = (ArrayList<Report>) session.getAttribute("reportList");


    for(int i=0;i<appointmentList.size();i++){
        if(questionaireList.get(i).getQuestionaireid() == Integer.parseInt(request.getParameter("id"))) {
%>
<div class="bg-white shadow overflow-hidden sm:rounded-lg mt-8">
  <div class="px-4 py-5 sm:px-6">
    <h3 class="text-lg leading-6 font-medium text-gray-900">
      <%
        for(int n=0;n<patientList.size();n++){
        if(patientList.get(n).getPatientid() == questionaireList.get(i).getPatientid()) {
    %>

    <p><%= patientList.get(n).getName() %></p>

    <%}} %>
    </h3>
  </div>
  <div class="border-t border-gray-200">
    <dl>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Gender
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getGender() %></p>
        </dd>
      </div>
      <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Age
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getAge() %></p>
        </dd>
      </div>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Interest
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getInterest() %></p>
        </dd>
      </div>
      <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Comm Pref
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getComm_pref() %></p>
        </dd>
      </div>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Gender Preference
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getGen_pref() %></p>
        </dd>
      </div>
        <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Country
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getCountry() %></p>
        </dd>
      </div>
        <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Language Preference
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getPref_language() %></p>
        </dd>
      </div>
        <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Condition
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <p><%= questionaireList.get(i).getPatient_condition() %></p>
        </dd>
      </div>
    </dl>
  </div>
</div>
        
    <%
        int counter = 0;
        int appointment_id = 0;
        for(int n=0;n<patientList.size();n++){
        if(patientList.get(n).getPatientid() == questionaireList.get(i).getPatientid()) {
        for(int x=0;x<appointmentList.size();x++){
        if(patientList.get(n).getPatientid() == appointmentList.get(x).getPatientid()) {
        appointment_id = appointmentList.get(x).getAppointmentid();
        for(int m=0;m<reportList.size();m++){
        if(reportList.get(n).getAppointmentid() == appointmentList.get(x).getAppointmentid()) { 
            counter++;
        
        }}}}}}
        if(counter == 0) {
    %>
            <form action="MakeReport.jsp">
                <input type="hidden" name="id" value="<%= appointment_id %>">
                <div class="flex justify-end mt-8">
                    <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                     Make Report
                   </button>
                </div>
            </form>
    <%}else{ %>
    <form action="ViewReport.jsp">
                <input type="hidden" name="id" value="<%= appointment_id %>">
                <div class="flex justify-end mt-8">
                    <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                     View Report
                   </button>
                </div>
            </form>
    <%}}} %>

    </div>
</div>



  
</body>
</html>



