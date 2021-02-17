<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Title</title>
    <style>
        tr:hover
        {
            background-color: #f5f5f5;
        }
        th {
            background-color:#1ABC9C;
            color: white;
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
            left:105px;
            background-color:white;
            font-size: 18px;
            color:black;
            height: 35px;
            width: 90px;
            border-bottom-color:greenyellow;
            border-top-color:orange;

        }
        #b2
        {
            position: absolute;
            top:20px;
            left:195px;
            background-color:green;
            font-size: 18px;
            border:none;
            height: 35px;
            width: 90px;

        }
        a{
            text-decoration: none;
            color:black;
        }
        th {
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: left;
            font-size:18px;
        }
        td{
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            font-size:18px;

        }

        table {
            border: 1px solid #566573;
            height:300px;
            width: 600px;
        }
        #g{
            background-color:#85929E;
            text-align:center;
            font-size: 22px;
        }
        h1
        {
            color:#2874A6;
        }

    </style>

</head>
<body>
<center>

     <h1>Welcome ::&nbsp;${pageContext.request.userPrincipal.name}</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
    <button id="b1"> <a href="${pageContext.request.contextPath}/logout">Logout </a></button>
     <input action="action" type="button" onclick="history.go(-1);"  value="Back" id="b2"/>


    <br>
    <br>
 <table>
    <tr>
        <tr >
            <th colspan="2" id="g"> Gun Details</th>
        </tr>
        <tr>
            <th>ID</th>
            <td>${data.id}</td>
        </tr>
        <tr>
            <th>Gun Name</th>
            <td>${data.gunName}</td>
        </tr>
        <tr>
            <th>Ammo Uses</th>
            <td>${data.ammo}</td>
        </tr>
        <tr>
            <th>Description</th>
            <td>${data.description}</td>
        </tr>
            <tr>

                <c:if test="${pageContext.request.userPrincipal.name!=null}">

                    <c:if test="${currentUserData.country=='India'}">
                    <th>Price </th>
                        <td>
                                ${INDIA} ${data.inrPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='USA'}">
                        <th>Price</th>
                        <td>
                                ${USA} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='UK'}">
                        <th>Price</th>
                        <td>
                                ${UK} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='JAPAN'}">
                        <th>Price</th>
                        <td>
                                ${JAPAN} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='ITALY'}">
                        <th>Price</th>
                        <td>
                                ${ITALY} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='GERMANY'}">
                        <th>Price</th>
                        <td>
                                ${GERMANY} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='CHINA'}">
                        <th>Price</th>
                        <td>
                                ${CHINA} ${data.foreignPrice}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='CANADA'}">
                        <th>Price</th>
                        <td>
                                ${CANADA} ${data.foreignPrice}
                        </td>
                    </c:if>
               </c:if>
        </tr>
    </table>
</center>
</body>
</html>