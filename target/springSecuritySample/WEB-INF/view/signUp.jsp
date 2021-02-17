<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>

    <style>

        .error {
            color: red;
        }
table{
    height:480px;
    width:450px;
    border-collapse: collapse;
}
        input
        {
            height:40px;
            width: 380px;
            background-color:#F2F4F4 ;
          border-color:#0000;
            align:center;
            margin-left:35px;
            margin-top: 8px;

        }
 #rd
{
    height:15px;
    width:15px;
}
        #f
        {
            height:40px;
            width: 170px;
            background-color:#F2F4F4 ;
            border-color:#0000;
        }
        #l
        {
            height:40px;
            width: 170px;
            background-color:#F2F4F4 ;
            border-color:#0000;
            margin-left:1px;
        }
        th{
            margin-left:1px;
            font-size:20px;
        }

        #rd1
        {
            margin-left:35px;
        }
        #rd2
        {
            margin-left:35px;
        }
        #rd3
        {
            margin-left:35px;
        }
        #p
        {
            color: darkred;
        }

        #s{
            padding-left:30px;
            font-size:30px;
            padding-top:10px;
        }
        #s1
        {
            padding-left:30px;
            color: #808B96;
        }
        #login
        {
            color:white;
            font-size: 20px;
            margin-left: 600px;
        }
        a{
            text-decoration: none;
            color: #D6DBDF;
            font-size: 20px;
        }

.button2
{background-color: #008CBA;
border-radius: 30px;
    margin-left: 140px;
    border-color:#0000;
    color:white;
    height:30px;
    width:80px;
}
        .button1
        {
            background-color: darkcyan;
            border-radius: 30px;
            margin-left: 20px;
            border-color:#0000;
            color:white;
            height:30px;
            width:80px;
        }
        #select
        {
            width:150px;
            height:30px;
        }


    </style>
</head>
<body bgcolor="#3498DB">
<center>
    <br>
    <c:url var="loginUrl" value="/saveCustomer"/>
    <form:form modelAttribute="custom" action="${loginUrl}" method="post">
    <table bgcolor="#FDFEFE">

        <tr>
            <td id="s">
                <b>
                Sign UP </b>
            </td>

        </tr>
            <tr colspan="2">
              <td style="border-bottom: 2px solid #808B96; width:500px;" colspan="2" id="s1">Please Fill in this form to create an account!</td>
            </tr><br>


        <tr>
            <td>
                <form:input path="firstName" placeholder="First Name" id="f"/>
                <form:errors path="firstName" cssClass="error" />
            </td>
            <td>
                <form:input path="lastName" placeholder="Last Name" id="l"/>
                <form:errors path="lastName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:input path="email" placeholder="Email"/>
                <form:errors path="email" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:input path="userName" placeholder="UserName" />
                <form:errors path="userName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:input path="password" type="password" placeholder="Password"/>
                <form:errors path="password" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:input path="confirmPassword"  type="password" placeholder="Confirm Password"/>
                <form:errors path="confirmPassword" cssClass="error" />
            </td>
        </tr>
        <tr>

        </tr>
        <tr>
            <td colspan="2">
                <form:input path="contactNum" placeholder="Contact Number"/>
                <form:errors path="contactNum" cssClass="error"/>

            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:input path="address" placeholder="Address" />
                <form:errors path="address" cssClass="error" />
            </td>
        </tr>
        <tr>    <td colspan="2" > <b id="rd1">Country :</b> &nbsp;&nbsp;
            <form:select path="country" id="select">
                <form:option value="" label="---- select ----"/>
                <form:option value="India" label="India"/>
                <form:option value="USA" label="USA"/>
                <form:option value="CANADA" label="CANADA"/>
                <form:option value="UK" label="UK"/>
                <form:option value="GERMANY" label="GERMANY"/>
                <form:option value="JAPAN" label="JAPAN"/>
                <form:option value="ITALY" label="ITALY"/>
                <form:option value="CHINA" label="CHINA"/>
            </form:select>
                <form:errors path="country" cssClass="error" />
            </td>

    <tr>   <td colspan="2" > <b id="rd2">Gender :</b>  &nbsp; &nbsp;
                <form:radiobutton path="gender" value="Male" label="Male"  id="rd"/>
                <form:radiobutton path="gender" value="Female" label="Female" id="rd"/>
                <form:errors path="gender" cssClass="error" />
            </td>
        </tr>
        <tr>
        <tr>
            <td style="border-bottom: 2px solid #808B96; width:500px;" colspan="2">

            </td>
        </tr>

        <tr>
            <td colspan="2">
                <form:checkbox path="agree" value="yes" id="rd"/> I Accept the <span id="p">Terms</span>  of Use & <span id="p">Privacy Policy</span>.
               <form:errors path="agree" cssClass="error"/>
            </td>
        </tr>
      <tr></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td colspan="2"><button type="submit" class="button2">Submit</button> &nbsp;&nbsp;
                <button type="reset"  class="button1">Reset</button></td> </tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
    </table>
</form:form>
</center>

<span id="login">Already Have an account ?&nbsp;<a href="${pageContext.request.contextPath}/login">Login Here..</a> </span>

</body>
</html>
