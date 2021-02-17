<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <style>
        table
        {
            height:380px;
            width:300px;
        }

        input
        {
            height:40px;
            width: 300px;
            background-color:#F2F4F4 ;
            border-color:#0000;
            align:center;
            margin-left:35px;
            margin-top: 8px;
            margin-right: 35px;

        }

        #sign
        {
            margin-top: 12px;
            margin-left: 85px;
            font-size: 30px;
            align:center;
            color:white;
        }
        #save
        {
            width:300px;
            background-color: #4CAF50;
            color: #D6DBDF;
            margin-left:35px;
            font-size: 20px;
            margin-right: 35px;
        }

        #not
        {
            margin-left: 60px;
        }

        #b
        {
            position: absolute;
            top:15px;
            left:25px;
            height:40px;
            width:110px;
            background-color: #1ABC9C;
        }
        #aa {
            text-decoration: none;
            color:black;
            font-size: 28px;
        }
        h2
        {
            color: lightblue;
            margin-left: 50px;
            font-size: 30px;
        }

    </style>

</head>
<body bgcolor="#1C2833">

<button id="b"> <a id="aa" href="${pageContext.request.contextPath}/">HOME </a></button>
<br>
<br>
<br>
<hr/>
<h2>Logout Successfully.......</h2>
<c:if test="${not empty msg}">
    <font color="red">${msg} </font></c:if>

<form name='loginForm'  action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>

<center>
   <table bgcolor="#AED6F1">
       <tr>
           <td> <b id="sign">---- Sign in ---- </b></td>
       </tr>

       <tr>

               <td>
                   <input type='text' name='userName' value='' placeholder="UserName">
               </td>
           </tr>
       <br>
       <br>

           <tr>
               <td>
                   <input type='password' name='password' placeholder="Password"/>
               </td>
           </tr>

           <tr>

               <td><input name="submit" type="submit" value="Sign In" id="save"/>


           <br>
                   <br>
             <b id="not"> Not registered?</b> &nbsp;<a href="${pageContext.request.contextPath}/signUp" id="signUp">Sign Up</a>
           </td>
       </tr>

       </table>
</center>

</form>
</body>
</html>
