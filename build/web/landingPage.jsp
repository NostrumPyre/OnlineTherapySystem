<%-- 
    Document   : landingPage
    Created on : Jan 6, 2022, 4:04:24 AM
    Author     : rhyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Landing Page</title>
    </head>
    <body >

        <div>
            <div class="container">
                <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                        <span class="fs-4">Therapion</span>
                    </a>

                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="landingPage.jsp" class="nav-link active">Home</a></li>
                        <li class="nav-item"><a href="advicePage.jsp" class="nav-link">Advice</a></li>
                        <li class="nav-item"><a href="Forum.jsp" class="nav-link">Forum</a></li>
                        <li class="nav-item"><a href="contactUs.jsp" class="nav-link" >Contact</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                    </ul>
                </header>
            </div>
            <div class="container ">
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="col-4" style="margin: 40px;">
                        <h1>Professional therapy anytime, anywhere.</h1><br>
                        <p>Therapion provides access to a qualified therapist that is accessible, discrete, and affordable online for everyone</p><br>
                        <div class="">
                            <button type="button" class="btn" style="background-color: #858CE4;color: white;border-radius: 30px;">Consult Today</button>
                        </div>
                    </div>
                    <div class="col-6">
                        <img src="image/landingPageImage.png" width="666" height="622">
                        
                    </div>
                </div>
                
            </div>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

