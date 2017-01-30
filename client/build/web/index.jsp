<%-- 
    Document   : index
    Created on : 29-Jan-2017, 14:16:13
    Author     : tashneem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
        
        <title>Tuf2000m</title>
    </head>
    <body>
       
<div class="main_box">
    <div class="header"><h1 align="center"><u>TUF 2000m <b>Ultrasonic Flow Meter User Manual</b></u></h1></div> 
        <div class="form_div">
            <form class="form_box" name="Test" method="post" action="Client" >
               <p class="main_text"><h3>Enter the Reading from Register of TUF-2000M</h3></p>
              <p> <h4>Register Number</h4><input class="text_box" type="text" name="register" onkeypress='return event.charCode >= 48 && event.charCode <= 57'  ></p>
              <p> <h4>Reading value</h4><input class="text_box" type="text" name="reading"  onkeypress='return event.charCode >= 48 && event.charCode <= 57'></p>
               <input type="submit" value="Submit" name="check_register">
            </form>
           <div class="text_result">
           <% String name = (String)request.getAttribute("name"); 
             if ( name == null )
             {
         %>

         <%
             }
             else
             {
         %>
             <h1>Result Reading: <%= name.toString() %>.</h1>
         <%
             }
         %>
</div>
        </div>
      
</div>
         
    </body>
</html>
   
