<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PLP with Login</title>

    <style>
        tr:hover
        {
            background-color: lightseagreen;
        }
        th {
            background-color: #4CAF50;
            color: white;
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            font-size:20px;

        }


        a{
            text-decoration: none;
            color: dimgrey;
        }
        td {
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: center;
        }

        table {
            border: 1px solid black;
            height: 600px;
            width:550px;
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
            height: 35px;
            width: 90px;
        }
        #b1
        {
            position: absolute;
            top:20px;
            left:1400px;
            background-color:white;
            font-size: 18px;
            color:black;
            height: 35px;
            width: 90px;

        }
        #id
        {
            background-color: black;
            color: white;
        }

    </style>

</head>
<body>
<center>
    <h1> ALL GUNS DATA</h1> </center>
<button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
<button id="b1"> <a href="${pageContext.request.contextPath}/logout">Logout </a></button>
    <hr/>
    <h2> Welcome User ::${currentUserData.userName}</h2>
<center>
    <table>
        <tr>
            <th>Id</th>
            <th>Gun Name</th>
            <th>Price</th>
        </tr>

        <for:forEach var="dt" items="${gunData}">
            <tr>
                <td><a id="id" href="${pageContext.request.contextPath}/getGunDataById/${dt.id}">${dt.id}</a></td>
                <td>${dt.gunName}</td>
                <td>
            <c:choose>
                <c:when test="${currentUserData.country=='India'}">
                   ${dt.inrPrice} ${currency}
                </c:when>
                <c:otherwise>
                    ${dt.usdPrice} ${currency}
                </c:otherwise>
            </c:choose>
                </td>

            </tr>
        </for:forEach>
    </table>
</center>
</body>
</html>
