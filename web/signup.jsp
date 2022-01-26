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
    </head>
    <body style = "position: relative; height: 896px; background: #858CE4;">
        <script>
            function validateform()
            {
                var email = document.SignUpForm.email.value;
                var password = document.SignUpForm.password.value;
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
                
                <a href = "login.html">
                    <p style = "position: absolute; width: 147px; height: 20px; left: 655px; top: 713px; 
                                font-family: Montserrat; font-style: normal; font-weight: 500; font-size: 16px; 
                                line-height: 20px;
                                color: #FFFFFF;">
                        Already have account?
                    </p>
                </a> <br/> <br/>
            </form>       
        </center>
    
        <div style = "position: absolute; width: 769.94px; height: 724px; left: -362px; top: -400px; border-radius: 50%; background: #FFFFFF;"></div>
        <div style = "position: absolute; width: 608.29px; height: 572px; left: -281.18px; top: -330px; border-radius: 50%; background: #858CE4;"></div>
        <div style = "position: absolute; width: 465.79px; height: 438px; left: -209.93px; top: -270px; border-radius: 50%; background: #FFFFFF;"></div>
    </body>
</html>
