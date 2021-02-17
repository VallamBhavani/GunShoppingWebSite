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
    <title>PLP</title>

    <style>
        tr:hover
        {
            background-color: lightseagreen;
        }
        th {
            background-color: #4CAF50;
            color: white;
            text-align:center;
            font-size:20px;
            border-bottom: 1px solid #ddd;
            padding: 15px
        }

        #b
        {
            position: absolute;
            top:20px;
            left:15px;
            background-color:orange;
            font-size: 18px;
            border:none;
            color:white;
            height: 30px;
            width: 90px;
        }
        #b2
        {
            position: absolute;
            top:20px;
            left:110px;
            background-color: #1ABC9C;
            font-size: 18px;
            border:none;
            color:black;
            height: 30px;
            width: 90px;
        }
        a{
            text-decoration: none;
            color:darkgrey;
        }
        td {
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: center;
        }

        table {
            border: 1px solid black;
            height: 600px;
            width: 550px;
        }

    </style>

</head>
<body>
<center>

    <h1> ALL GUNS DATA</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
    <input action="action" type="button" onclick="history.go(-1);"  value="Back" id="b2"/>
    <hr/>
    <table>
        <tr>
            <th>Id</th>
            <th>Gun Name</th>
            <th>Price</th>

        </tr>
        <for:forEach var="dt" items="${gunData}">
            <tr>
                <td>${dt.id}</td>
                <td>${dt.gunName}</td>
                <td><a style="color: darkblue" href=${pageContext.request.contextPath}/login>To view Price (Login/Register)</a></td>

            </tr>

        </for:forEach>

    </table>
</center>


</body>
</html>
