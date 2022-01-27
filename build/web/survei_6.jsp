<%-- 
    Document   : survei_6
    Created on : Jan 26, 2022, 10:56:36 PM
    Author     : syafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Therapist System</title>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    </head>
    <body style = "position: relative; height: 896px;">
        <%
            String gen_pref = (String) request.getParameter("gen_pref");
            session.setAttribute("gen_pref", gen_pref);
        %>         
        
        <div style = "position: absolute; width: 41px; height: 41px; left: 8.51%; top: 70px; border-radius: 50%; background: #858CE4;"></div>
        <p style = "position: absolute; left: 9.48%; right: 98.35%; top: 5.30%; bottom: 83.35%;                            
                    font-family: Mulish; font-style: normal; font-weight: bold; font-size: 26px;
                    line-height: 33px;
                    color: #FFFFFF;">
            T
        </p>
        <p style = "position: absolute; left: 12.50%; right: 77.57%; top: 5.80%; bottom: 89.4%;
                    font-family: Mulish; font-style: normal; font-weight: bold; font-size: 24px;
                    line-height: 30px;
                    color: #233348;">
            Therapion
        </p>
        <p style = "position: absolute; left: 53.33%; right: 43.12%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: bold; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;">
            Home
        </p>
        <p style = "position: absolute; left: 58.89%; right: 37.15%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: normal; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;
                    opacity: 0.5;">
            Advice
        </p>
        <p style = "position: absolute; left: 64.86%; right: 32.64%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: normal; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;
                    opacity: 0.5;">
            FAQ
        </p>
        <p style = "position: absolute; left: 69.38%; right: 23.4%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: normal; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;
                    opacity: 0.5;">
            Testimonials
        </p>
        <p style = "position: absolute; left: 78.61%; right: 16.81%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: normal; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;
                    opacity: 0.5;">
            Contact
        </p>
        <p style = "position: absolute; left: 85.21%; right: 8.51%; top: 7.81%; bottom: 89.62%;
                    font-family: Mulish; font-style: normal; font-weight: normal; font-size: 18px;
                    line-height: 23px;
                    color: #1F1534;
                    opacity: 0.5;">
            About us
        </p>
        <center>
            <form name = "Survei_6_Form" method = "post" action = "survei_7.jsp" onsubmit = "return validateForm()">
                <h1 style = "position: absolute; width: 1037px; height: 54px; left: 130px; top: 179px;
                             font-family: Mulish; font-style: normal; font-weight: normal; font-size: 44px;
                             line-height: 55px;
                             letter-spacing: 0.1px;
                             color: #000000;">
                    Welcome to the first step of knowing yourself more
                </h1>
        
                <p style = "position: absolute; width: 712px; height: 56px; left: 285px; top: 250px;
                            font-family: Mulish; font-style: normal; font-weight: normal; font-size: 24px;
                            line-height: 30px; 
                            letter-spacing: 0.1px; 
                            color: #837D7D;">
                    This questionnaire asks several questions to help us understand how you're feeling and match you with the right therapist.
                </p>
      
                <div style = "position: absolute; width: 522px; height: 388px; left: 380px; top: 358px; background-color: rgba(133, 140, 228, 0.5);">
                    <h1 style = "color: white;">Which country are you in?</h1>
                </div>
               
                <p style = "position: absolute; width: 200px; height: 15px; left: 504px; top: 480px;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 20px;
                            line-height: 15px;
                            letter-spacing: 0.1px;
                            color: #FFFFFF;">
                    Select your country?
                </p>
               
                <select style = "position: absolute; width: 261px; height: 54px; left: 515px; top: 525px; background-color: #858CE4; border: 2px solid #FFFFFF;
                                 font-family: Mulish; font-style: normal; font-weight: bold; font-size: 28px; 
                                 line-height: 35px; 
                                 letter-spacing: 0.1px;
                                 color: #FFFFFF;" 
                        name = "country" required> 
                    <option></option>
                    <option value = "Bangladesh">Bangladesh</option>  
                    <option value = "China">China</option>  
                    <option value = "Egypt">Egypt</option>  
                    <option value = "Indonesia">Indonesia</option>
                    <option value = "Malaysia">Malaysia</option>  
                    <option value = "Nigeria">Nigeria</option>
                    <option value = "Pakistan">Pakistan</option>
                    <option value = "Syria">Syria</option>
                    <option value = "Yemen">Yemen</option>   
                </select> <br/> <br/>
           
                <input style = "position: absolute; width: 116px; height: 54px; left: 762px; top: 668px; background: #858CE4; border: 2px solid #FFFFFF;
                                font-family: Mulish; font-style: normal; font-weight: bold; font-size: 28px;
                                line-height: 35px;
                                letter-spacing: 0.1px;
                                color: #FFFFFF;" 
                       type = "submit" value = "Next" /> <br/> <br/>
            </form>       
        </center>
    </body>
</html>
