<%-- 
    Document   : survei_4
    Created on : Jan 26, 2022, 10:53:32 PM
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
            String interest = (String) request.getParameter("preference");
            session.setAttribute("interest", interest);
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
        <form name = "Survei_4_Form" method = "post" action = "survei_5.jsp" onsubmit = "return validateForm()">
            <center>
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
                    <h1 style = "color: white;">How do you prefer to communicate with your therapist?</h1>
                </div>
            </center>
              
            <input style = "position: absolute; width: 419px; height: 54px; left: 432px; top: 481px; background-color: #858CE4; border: 2px solid #FFFFFF;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 28px;
                            text-align: left;
                            line-height: 35px;
                            letter-spacing: 0.1px;
                            color: #FFFFFF;" 
                   type = "submit" name = "comm_pref" value = "Mostly via messaging" /> <br/> <br/> 
            <input style = "position: absolute; width: 419px; height: 54px; left: 432px; top: 560px; background-color: #858CE4; border: 2px solid #FFFFFF;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 28px; 
                            text-align: left;
                            line-height: 35px; 
                            letter-spacing: 0.1px;
                            color: #FFFFFF;" 
                   type = "submit" name = "comm_pref" value = "Via phone or video session" /> <br/> <br/>
            <input style = "position: absolute; width: 419px; height: 54px; left: 432px; top: 640px; background-color: #858CE4; border: 2px solid #FFFFFF;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 28px;
                            text-align: left;
                            line-height: 35px;
                            letter-spacing: 0.1px;
                            color: #FFFFFF;" 
                   type = "submit" name = "comm_pref" value = "Not sure yet (decide later)" /> <br/> <br/>
        </form>       
    </body>
</html>
