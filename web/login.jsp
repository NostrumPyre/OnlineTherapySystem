<%-- 
    Document   : login
    Created on : Jan 26, 2022, 10:48:21 PM
    Author     : syafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Therapist System</title>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
            <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </head>
    <body style = "position: relative; height: 896px; background: #858CE4;">
        <script>
            function validateform()
            {
                var email = document.LoginForm.email.value;
                var password = document.LoginForm.password.value;
                email_format = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

                if(!email.match(email_format))
                {
                    alert("Not a Valid Email");
                    return false;
                }
                else if(password.length < 8)
                {
                    alert("Password must be at least 8 characters");
                    return false;
                }
            }
        </script>
        

<div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-xs w-full space-y-8">
    <div>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-white">
        THERAPION
      </h2>
    </div>
    <form class="mt-8 space-y-6" action="LoginController" method="POST" onsubmit = "return validateform()">
      <input type="hidden" name="remember" value="true">
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="email-address" class="sr-only">Email address</label>
          <input id="email-address" name="email" type="email" autocomplete="email" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email address">
        </div>
        <div>
          <label for="password" class="sr-only">Password</label>
          <input id="password" name="password" type="password" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
        </div>
      </div>
      <div class="flex justify-center">
    <div class="mt-2">
    <label class="inline-flex items-center text-white">
      <input type="radio" class="form-radio" name="accountType" value="admin">
      <span class="ml-2">Admin</span>
    </label>
    <label class="inline-flex items-center ml-6 text-white">
      <input type="radio" class="form-radio" name="accountType" value="therapist">
      <span class="ml-2">Therapist</span>
    </label>
        <label class="inline-flex items-center ml-6 text-white">
      <input type="radio" class="form-radio" name="accountType" value="patient">
      <span class="ml-2">Patient</span>
    </label>
  </div>
  </div>


      <div>
        <button type="submit" class="group relative w-full flex justify-center py-2 px-4 border border-indigo-400 text-sm font-medium rounded-md text-indigo-400 bg-white hover:bg-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-400">
          Login
        </button>
      </div>
    </form>
      <div><span>Don't have an account?   </span><a href="signup.jsp"><b style="color: white;">SignUp</b></a></div>
  </div>
</div>

       <div style = "position: absolute; width: 769.94px; height: 724px; left: -362px; top: -400px; border-radius: 50%; background: #FFFFFF;"></div>
        <div style = "position: absolute; width: 608.29px; height: 572px; left: -281.18px; top: -330px; border-radius: 50%; background: #858CE4;"></div>
        <div style = "position: absolute; width: 465.79px; height: 438px; left: -209.93px; top: -270px; border-radius: 50%; background: #FFFFFF;"></div>
    </body>
</html>