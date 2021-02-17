<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            background-color:#E74C3C;
            font-size: 18px;
            border:none;
            color:#17202A;
            height: 30px;
            width: 90px;
        }
        a{
            text-decoration: none;
            color: #D6DBDF;
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

    <%-- <h1>Welcome ::&nbsp;${pageContext.request.userPrincipal.name}</h1>--%>
  <%--  <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>--%>

    <hr/>
    <br>
    <br>

    <table>
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
            <th>Scope Uses</th>
            <td>${data.scope}</td>
        </tr>
        <tr>
            <th>Description</th>
            <td>${data.description}</td>
        </tr>

        <%--<tr>
            <c:choose>
                <c:if test="${pageContext.request.userPrincipal.name!=null}">

                    <c:when test="${currentUserData.country=='India'}">
                    <th>Price</th>
                        <td>
                                ${data.priceInr}
                        </td>
                    </c:when>
                    <c:otherwise>
                        <th>Price</th>
                        <td>
                                ${data.priceUsd}
                        </td>
                    </c:otherwise>
               </c:if>
            </c:choose>
        </tr>--%>

  <%--      <tr>

                <c:when test="${pageContext.request.userPrincipal.name!=null}">
                    <c:when test="${currentUserData.country=='India'}">  </c:when>
                        <th>Price</th>
                        <td>
                                ${data.priceInr}
                        </td>

                    <c:otherwise>
                        <th>Price</th>
                        <td>
                                ${data.priceUsd}
                        </td>
                    </c:otherwise>
                </c:when>--%>


        </tr>
    </table>
</center>
</body>
</html>