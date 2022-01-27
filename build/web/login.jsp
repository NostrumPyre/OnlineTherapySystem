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

        <center>
            <form name = "LoginForm" method = "post" action = "#" onsubmit = "return validateform()">
                <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 297px; background: #858CE4; box-sizing: border-box;
                                border: 1px solid #FFFFFF; border-radius: 4px; 
                                font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                line-height: 20px;
                                color: #FFFFFF;"
                       type = "text" name = "email" value = "EMAIL" required/> <br/> <br/>
                <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 362px; background: #858CE4; box-sizing: border-box;
                                border: 1px solid #FFFFFF; border-radius: 4px; 
                                font-family: Montserrat; font-style: normal; font-weight: 300; font-size: 14px; 
                                line-height: 20px;
                                color: #FFFFFF;"
                       type = "text" name = "password" value = "PASSWORD" required /> <br/> <br/>
                
                <input style = "position: absolute; width: 20px; height: 20px; left: 480px; top: 448px; background-color: #FFFFFF; border: 2px solid #858CE4;" 
                       type = "radio" name = "radio" value = "Patient" /> 
            
                <p style = "position: absolute; width: 250px; height: 35px; left: 430px; top: 425px;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 20px;
                            line-height: 35px;
                            letter-spacing: 0.1px;
                            color: #FFFFFF;">
                   Patient 
                </p> <br/> <br/> 
            
                <input style = "position: absolute; width: 20px; height: 20px; left: 480px; top: 490px; background-color: #FFFFFF; border: 2px solid #858CE4;" 
                       type = "radio" name = "radio" value = "Therapist" /> 
            
                <p style = "position: absolute; width: 250px; height: 35px; left: 440px; top: 467px;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 20px; 
                            line-height: 35px; 
                            letter-spacing: 0.1px;
                            color: #FFFFFF;">
                   Therapist
                </p> <br/> <br/>
            
                <input style = "position: absolute; width: 20px; height: 20px; left: 480px; top: 530px; background-color: #FFFFFF; border: 2px solid #858CE4;" 
                       type = "radio" name = "radio" value = "Admin" /> 
            
                <p style = "position: absolute; width: 280px; height: 35px; left: 413px; top: 508px;
                            font-family: Mulish; font-style: normal; font-weight: bold; font-size: 20px;
                        line-height: 35px;
                        letter-spacing: 0.1px;
                        color: #FFFFFF">
                   Admin            
                </p> <br/> <br/>

                <input style = "position: absolute; width: 327px; height: 45px; left: 475px; top: 595px; background: #FFFFFF; 
                                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.3); border-radius: 4px;
                                font-family: Montserrat; font-style: normal; font-weight: 600; font-size: 16px; 
                                line-height: 20px;
                                color: #858CE4;" 
                       type = "submit" value = "LOGIN" /> <br/> <br/>
           
                <a href = "signup.jsp">
                    <p style = "position: absolute; width: 146px; height: 20px; left: 670px; top: 650px; 
                                font-family: Montserrat; font-style: normal; font-weight: 500; font-size: 16px; 
                                line-height: 20px;
                                color: #FFFFFF;">
                        Forget password?
                    </p>
                </a> <br/> <br/>
                <a href = "signup.jsp">
                    <p style = "position: absolute; width: 192px; height: 20px; left: 640px; top: 690px;
                                font-family: Montserrat; font-style: normal; font-weight: 500; font-size: 16px;
                                line-height: 20px;
                                color: #FFFFFF;">
                        Don't have account?
                    </p>
                </a> <br/> <br/>                
            </form>
        </center>

        <div style = "position: absolute; width: 769.94px; height: 724px; left: -362px; top: -400px; border-radius: 50%; background: #FFFFFF;"></div>
        <div style = "position: absolute; width: 608.29px; height: 572px; left: -281.18px; top: -330px; border-radius: 50%; background: #858CE4;"></div>
        <div style = "position: absolute; width: 465.79px; height: 438px; left: -209.93px; top: -270px; border-radius: 50%; background: #FFFFFF;"></div>
    </body>
</html>