<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    a:link, a:visited {
        background-color: #808B96;
        color: white;
        padding: 14px 25px;
        text-align: center;
        font-size: 20px;
        text-decoration: none;
        display: inline-block;
        border-radius: 15px;
    }

    a:hover, a:active {
        background-color: indianred;
    }

    #signUp{
        position: absolute;
        right:145px;
        border-radius: 40px;
        background-color: #1D8348;
    }

    #login
    {
        position: absolute;
        right: 30px;
        border-radius: 40px;
        background-color:#1D8348;

    }

    #home
    {
        position: absolute;
        margin-left: 685px;
        top:8px;
    }
</style>


<div style="border: 1px solid #ccc;padding:10px;margin-bottom:20px;">

    <a href="${pageContext.request.contextPath}/">Home</a>

    &nbsp;&nbsp;

    <a href="${pageContext.request.contextPath}/signUp" id="signUp">Sign Up</a>

    &nbsp;&nbsp; <h1 id="home">Login Here..</h1>

    <a href="${pageContext.request.contextPath}/gunList">Gun list</a>
    &nbsp;&nbsp;
    &nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/login" id="login">Login</a>

    <c:if test="${pageContext.request.userPrincipal.name != null}">

        | &nbsp;
        <a href="${pageContext.request.contextPath}/logout">Logout</a>

    </c:if>

</div>