<%-- 
    Document   : signup
    Created on : Jan 26, 2022, 10:46:15 PM
    Author     : syafa
--%>

<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
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

        <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
            <div class="max-w-xs w-full space-y-8">
                <div>
                    <h2 class="mt-6 text-center text-3xl font-extrabold text-white">
                        THERAPION
                    </h2>
                </div>
                <form class="mt-8 space-y-6" action="SignUpController" method="POST" onsubmit = "return validateform()">
                    <input type="hidden" name="remember" value="true">
                    <div class="rounded-md shadow-sm -space-y-px">
                        <div>
                            <label for="email-address" class="sr-only">Name</label>
                            <input id="email-address" name="name" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Name">
                        </div>
                        <div>
                            <label for="email-address" class="sr-only">Email address</label>
                            <input id="email-address" name="email" type="email" autocomplete="email" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email address">
                        </div>
                        <div>
                            <label for="password" class="sr-only">Password</label>
                            <input id="password" name="password" type="password" autocomplete="current-password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
                        </div>
                        <div>
                            <label for="email-address" class="sr-only">Phone Number</label>
                            <input id="email-address" name="phone" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Phone Number">
                        </div>
                        <div>
                            <label for="email-address" class="sr-only">Date Of Birth</label>
                            <input id="email-address" name="dob" type="date" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Date Of Birth">
                        </div>
                        <div>
                            <label for="email-address" class="sr-only">Address</label>
                            <input id="email-address" name="address" type="text" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Address">
                        </div>
                    </div>
                    <div class="flex justify-center">
                    </div>


                    <div>
                        <button type="submit" class="group relative w-full flex justify-center py-2 px-4 border border-indigo-400 text-sm font-medium rounded-md text-indigo-400 bg-white hover:bg-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-400">
                            Sign Up
                        </button>
                    </div>
                </form>
                <div class="flex items-center justify-end">

                    <div class="text-sm">
                        <a href = "login.jsp" class="font-medium text-white hover:text-indigo-500">
                            Already have account?
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!--        <center>        
                    <form name = "SignUpForm" method = "post" action = "login.jsp" onsubmit = "return validateform()">
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 223.64px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "name" value = "NAME" required/> <br/> <br/>
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 288.64px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "email" value = "EMAIL" required/> <br/> <br/>
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 354px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "password" value = "PASSWORD" required /> <br/> <br/>
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 419px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "phone" value = "PHONE NUMBER" required /> <br/> <br/>
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 484px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "dob" value = "DATE OF BIRTH" required /> <br/> <br/>
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 549px; background: #858CE4; box-sizing: border-box;
                                        border: 1px solid #FFFFFF; border-radius: 4px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                        line-height: 20px;
                                        color: #FFFFFF"
                               type = "text" name = "address" value = "ADDRESS" required /> <br/> <br/>
                    
                        <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 631px; background: #FFFFFF; 
                                        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.3); border-radius: 4px;
                                        font-family: Montserrat; font-style: normal; font-weight: 600; font-size: 16px; 
                                        line-height: 20px;
                                        color: #858CE4;" 
                               type = "submit" value = "SIGN UP" />
                        
                        <a href = "login.jsp">
                            <p style = "position: absolute; width: 147px; height: 20px; left: 655px; top: 713px; 
                                        font-family: Montserrat; font-style: normal; font-weight: 500; font-size: 16px; 
                                        line-height: 20px;
                                        color: #FFFFFF;">
                                Already have account?
                            </p>
                        </a> <br/> <br/>
                    </form>       
                </center>-->

        <div style = "position: absolute; width: 769.94px; height: 724px; left: -362px; top: -400px; border-radius: 50%; background: #FFFFFF;"></div>
        <div style = "position: absolute; width: 608.29px; height: 572px; left: -281.18px; top: -330px; border-radius: 50%; background: #858CE4;"></div>
        <div style = "position: absolute; width: 465.79px; height: 438px; left: -209.93px; top: -270px; border-radius: 50%; background: #FFFFFF;"></div>
    </body>
</html>
