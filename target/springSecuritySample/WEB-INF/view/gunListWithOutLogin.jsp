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
            background-color: #4CAF50;
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

    <h1> ALL GUNS DATA</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
    <hr/>
    <table>
        <tr>
            <th>Id</th>
            <th>Gun Name</th>
            <th>Ammo uses</th>
            <th>Desc</th>
            <th>View</th>

        </tr>
        <for:forEach var="dt" items="${data}">
            <tr>
                <td>${dt.id}</td>
                <td>${dt.gunName}</td>
                <td>${dt.ammo}</td>
                <td>${dt.description}</td>
                <td><a href=${pageContext.request.contextPath}/getGunDataById1/${dt.id}>View</a></td>

            </tr>

        </for:forEach>

    </table>
</center>


</body>
</html>
