<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>PDP</title>
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
            top:36px;
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
            top:36px;
            left:1400px;
            background-color:white;
            font-size: 18px;
            color:black;
            height: 35px;
            width: 90px;
        border:none;
        }
        #b2
        {
            position: absolute;
            top:36px;
            left:135px;
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

        .header {
            padding: 5px 10px;
            background:darkseagreen;
            color: darkseagreen;
        }

    </style>

</head>
<body>
<center>
    <div class="header" id="myHeader">

     <h1>Welcome ::&nbsp;${currentUserData.firstName}&nbsp;${currentUserData.lastName}</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/gunListWithLogin">HOME </a></button>
    <button id="b1"> <a href="${pageContext.request.contextPath}/logout">Logout </a></button>
        <input action="action" type="button" onclick="history.go(-1);"  value="Back" id="b2"/> </div>
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

                <c:if test="${currentUserData.userName!=null}">

                    <c:if test="${currentUserData.country=='India'}">
                    <th>Price </th>
                        <td>
                                 ${data.inrPrice} ${currency}
                        </td>
                    </c:if>
                    <c:if test="${currentUserData.country=='USA'}">
                        <th>Price</th>
                        <td>
                                 ${data.usdPrice} ${currency}
                        </td>
                    </c:if>
               </c:if>
        </tr>

    </table>
</center>
</body>
</html>