<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <h1> ALL GUNS DATA</h1> </center>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
    <hr/>
    <h2> Welcome User...  :${userName}</h2>
<center>
    <table>
        <tr>
            <th>Id</th>
            <th>Gun Name</th>
            <th>Scopes uses</th>
            <th>Desc</th>
            <th>View</th>

        </tr>

        <for:forEach var="dt" items="${data}">

            <tr>
                <td>${dt.id}</td>
                <td>${dt.gunName}</td>
                <td>${dt.scope}</td>
                <td>${dt.description}</td>
                <td><a href="http://localhost:8080/GunShoppingWebsite_war_exploded/getGunById/${dt.id}">View</a></td>
            </tr>
        </for:forEach>

    </table>
</center>


</body>
</html>
