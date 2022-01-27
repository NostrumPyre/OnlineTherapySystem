<%-- 
    Document   : contactUs
    Created on : Jan 6, 2022, 3:14:08 AM
    Author     : rhyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Contact Us</title>
    </head>
    <body >

        <div>
            <div class="container">
                <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                        <span class="fs-4">Therapion</span>
                    </a>

                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Advice</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Testimonials</a></li>
                        <li class="nav-item"><a href="#" class="nav-link active" >Contact</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                    </ul>
                </header>
            </div>
            <div class="container " style="background-color: #858CE4;color: white;padding: 15px;">
                <div class="row d-flex align-items-center justify-content-center" style="margin: 50px;">
                    <h3>Contact Us</h3>
                    <p>Please provide some information to get started</p>
                    <div class="col-6" style="margin: 30px;">    
                        <form action="">
                            <div class="mb-3">
                                <input type="text" class="form-control" id="name" placeholder="First Name">
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="email" placeholder="Last Name">
                            </div>
                            <div class="mb-3">
                                <input type="email" class="form-control" id="email" placeholder="Email Address">
                            </div>
                            <div class="mb-3">
                                <textarea id="mesage" class="form-control" placeholder="Message" rows="4" cols="50"></textarea>
                                <!--<input type="text" class="form-control" id="phoneNumber" placeholder="Message">-->
                            </div>
                            <div class="d-flex justify-content-end" >
                                <input type="submit" value="Submit" style="color: #858CE4;">
                            </div>
                        </form>

                    </div>
                    <div class="col-3" style="margin: 30px;">
                        <p>Do you have a question, concern, idea, feedback, or problem? Take a look at our frequently asked questions for some quick answers. If you still need assistance, please fill out the form below and we'd be happy to help!</p>
                        <h5>Phone:</h5>
                        <p>+1(877)747-9986</p>
                        <h5>Hours:</h5>
                        <p>Monday - Sunday: 8am - 10pm MYT</p>
                    </div>
                </div>
            </div>

        </div>











        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
