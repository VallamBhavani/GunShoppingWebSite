<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bhavani
  Date: 08-07-2020
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        tr:hover
        {
            background-color: #f5f5f5;
        }
        th {
            background-color:#BB8FCE;
            color: white;
        }

        #b
        {
            position: absolute;
            top:25px;
            left:15px;
        }
        a{
            text-decoration: none;
            color: dimgrey;
        }
        th,td {
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: left;
        }

        table {
            border: 1px solid black;
        }

    </style>

</head>
<body>
<center>

    <h1> Registered With Data</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
   <h4> ${reg}</h4>
    <hr/>

<table>
    <tr>
        <th>First Name</th>
        <td>${custom.firstName}</td>
    </tr>
    <tr>
        <th>LastName</th>
        <td>${custom.lastName}</td>
    </tr>
    <tr>
        <th>Email</th>
        <td>${custom.email}</td>
    </tr>
    <tr>
        <th>userName</th>
        <td>${custom.userName}</td>
    </tr>
    <tr>
        <th>Password</th>
        <td>${custom.password}</td>
    </tr>


    <tr>
        <th>Confirm Password</th>
        <td>${custom.confirmPassword}</td>
    </tr>
    <tr>
        <th>Gender</th>
        <td>${custom.gender}</td>
    </tr>
    <tr>
        <th>Adress</th>
        <td>${custom.address}</td>
    </tr>
    <tr>
        <th>Country</th>
        <td>${custom.country}</td>
    </tr>

    <tr>
        <th>Contact</th>
        <td>${custom.contactNum}</td>
    </tr>

    <tr>
        <th>Agree</th>
        <td>${custom.agree}</td>
    </tr>

    <tr>
        <td><a href="${pageContext.request.contextPath}/signUp">Register more ????</a></td>
    </tr>
</table>
</center>
</body>
</html>