<%-- 
    Document   : addTherapist
    Created on : Jan 27, 2022, 2:04:00 PM
    Author     : Darlen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="adminData.jsp">Admin Data</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="patientData.jsp">Patient Data</a>
      <a class="block px-4 py-2 mt-2 text-sm font-semibold text-white bg-indigo-600 rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-gray-900 focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href="therapistData.jsp">Therapist Data</a>
    </nav>
  </div>
  <div class="py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
    <div class="flex justify-between">
        <h1 class="text-3xl mb-10 text-indigo-600 font-semibold"></h1>
      
    </div>
    <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
            <div class="max-w-xs w-full space-y-8">
                <div>
                <h2 class="mt-6 text-center text-3xl text-indigo-600 font-semibold">
                  Add Therapist Account
                </h2>
                </div>
                <form class="mt-8 space-y-6" action="addTherapistController" method="POST" onsubmit = "return validateform()">
                    <input type="hidden" name="remember" value="true">
                    <div class="rounded-md shadow-sm -space-y-px">
                        <div>
                            <p>Name</p>
                            <label for="email-address" class="sr-only">Name</label>
                            <input id="email-address" name="name" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Name">
                        </div>
                        <div>
                            <p>Email</p>
                            <label for="email-address" class="sr-only">Email address</label>
                            <input id="email-address" name="email" type="email" autocomplete="email" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email address">
                        </div>
                        <div>
                            <p>Password</p>
                            <label for="password" class="sr-only">Password</label>
                            <input id="password" name="password" type="password" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
                        </div>
                        <div>
                            <p>Phone Number</p>
                            <label for="email-address" class="sr-only">Phone Number</label>
                            <input id="email-address" name="phone" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Phone Number">
                        </div>
                        <div>
                            <p>Date Of Birth</p>
                            <label for="email-address" class="sr-only">Date Of Birth</label>
                            <input id="email-address" name="dob" type="date" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Date Of Birth">
                        </div>
                        <div>
                            <p>Gender</p>
          
                            <input type="radio" class="form-radio" name="gender" value="male"><span class="ml-2">Male</span>
                            <input type="radio" class="form-radio" name="gender" value="female"><span class="ml-2">Female</span>
                        </div>
                        <div>
                            <p>Address</p>
                            <label for="email-address" class="sr-only">Address</label>
                            <input id="email-address" name="address" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Address">
                        </div>
                        
                    </div>
                    <div class="flex justify-center">
                    </div>


                    <div>
                        <button type="submit" class="group relative w-full flex justify-center py-2 px-4 border border-indigo-400 text-sm font-medium rounded-md text-indigo-400 bg-white hover:bg-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-400">
                           Add Account
                        </button>
                    </div>
                </form>
                <div class="flex items-center justify-end">

                    
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
