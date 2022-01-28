<%-- 
    Document   : DetailTherapist
    Created on : Jan 27, 2022, 12:18:46 AM
    Author     : thoriqulhaqjibrilalqudsy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Therapist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
    <body>
        
    <nav class="m-4 bg-white border-gray-200 px-2 sm:px-4 py-2.5">
        <div class="container flex flex-wrap justify-between items-center mx-auto">
            <a href="#" class="flex">
                <svg class="mr-3 h-10" viewBox="0 0 52 72" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1.87695 53H28.7791C41.5357 53 51.877 42.7025 51.877 30H24.9748C12.2182 30 1.87695 40.2975 1.87695 53Z" fill="#76A9FA"></path><path d="M0.000409561 32.1646L0.000409561 66.4111C12.8618 66.4111 23.2881 55.9849 23.2881 43.1235L23.2881 8.87689C10.9966 8.98066 1.39567 19.5573 0.000409561 32.1646Z" fill="#A4CAFE"></path><path d="M50.877 5H23.9748C11.2182 5 0.876953 15.2975 0.876953 28H27.7791C40.5357 28 50.877 17.7025 50.877 5Z" fill="#1C64F2"></path></svg>
                <span class="self-center text-lg font-semibold whitespace-nowrap dark:text-white">FlowBite</span>
            </a>
            <button data-collapse-toggle="mobile-menu" type="button" class="inline-flex items-center p-2 ml-3 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </button>
            <div class="hidden w-full md:block md:w-auto" id="mobile-menu">
                <ul class="flex flex-col mt-4 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:font-medium">
                    <li>
                        <a href="#" class="block py-2 pr-4 pl-3 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 dark:text-white" aria-current="page">Home</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-gray-400 md:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">About</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-gray-400 md:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Services</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-gray-400 md:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Pricing</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 pr-4 pl-3 text-gray-700 hover:bg-gray-50 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-gray-400 md:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
        <% /*
             ArrayList<Therapist> therapistList = (ArrayList<Therapist>) session.getAttribute("therapistList");
                        for(int i=0;i<therapistList.size();i++){
                             if(therapistList.get(i).getTherapistid() == Integer.parseInt(request.getParameter("id"))) { */
        %>
        
        <%
            Therapist therapist = (Therapist) session.getAttribute("therapist");
        %>
<div class="bg-white">
  <div class="pt-16">
    <!-- Product info -->
    <div class="max-w-2xl mx-auto pt-10 pb-16 px-4 sm:px-6 lg:max-w-7xl lg:pt-16 lg:pb-24 lg:px-8 lg:grid lg:grid-cols-3 lg:grid-rows-[auto,auto,1fr] lg:gap-x-8">
      <div class="lg:col-span-2 lg:border-r lg:border-gray-200 lg:pr-8">
        <h1 class="text-2xl font-extrabold tracking-tight text-gray-900 sm:text-3xl">
          <%= therapist.getName() %>
        </h1>
      </div>

      <!-- Options -->
      <div class="mt-4 lg:mt-0 lg:row-span-3">
        
          <form action="MakeAppointmentController" class="mt-0">

          <!-- Sizes -->
          <div class="mt-10">

                <label for="date" class="block text-sm font-medium text-gray-700">Date</label>
                <input type="date" name="date-appointment" id="date-appointment" class="mt-1 p-3 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
          </div>
          <div class="mt-10">

                <label for="time-from" class="block text-sm font-medium text-gray-700">Time From</label>
                <input type="time" name="time-from-appointment" min="09:00" max="17:00" step="900" id="time-from-appointment" class="mt-1 p-3 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
          </div>
          <div class="mt-10">
                <label for="time-to" class="block text-sm font-medium text-gray-700">Time To</label>
                <input type="time" name="time-to-appointment" min="10:00" max="18:00" step="900" id="time-to-appointment" class="mt-1 p-3 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
          </div>

          <button type="submit" class="mt-20 w-full bg-indigo-600 border border-transparent rounded-md py-3 px-8 flex items-center justify-center text-base font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Make Appointment</button>
        </form>
      </div>

      <div class="py-10 lg:pt-6 lg:pb-16 lg:col-start-1 lg:col-span-2 lg:border-r lg:border-gray-200 lg:pr-8">
        <!-- Description and details -->
        <div>
          <h3 class="sr-only">Description</h3>

          <div class="space-y-6">
            <p class="text-base text-gray-900">The Basic Tee 6-Pack allows you to fully express your vibrant personality with three grayscale options. Feeling adventurous? Put on a heather gray tee. Want to be a trendsetter? Try our exclusive colorway: &quot;Black&quot;. Need to add an extra pop of color to your outfit? Our white tee has you covered.</p>
          </div>
        </div>

        <div class="mt-10">
            <!-- This example requires Tailwind CSS v2.0+ -->
<div class="bg-white shadow overflow-hidden sm:rounded-lg">
  <div class="px-4 py-5 sm:px-6">
    <h3 class="text-lg leading-6 font-medium text-gray-900">
      Detail Information
    </h3>
  </div>
  <div class="border-t border-gray-200">
    <dl>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Full name
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
            <%= therapist.getName() %>
        </dd>
      </div>
      <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Gender
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          <%= therapist.getGender() %>
        </dd>
      </div>
      <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
        <dt class="text-sm font-medium text-gray-500">
          Age
        </dt>
        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
          35
        </dd>
      </div>
      
    </dl>
  </div>
</div>

        </div>
      </div>
    </div>
  </div>
</div>
<% /* }} */%>

    </body>
</html>
