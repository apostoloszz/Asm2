<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Đăng ký tài khoản</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Đăng ký tài khoản</h1>--%>
<%--<form action="<c:url value='/taikhoans/register' />" method="post">--%>
<%--    <div>--%>
<%--        <label for="username">Tên đăng nhập:</label>--%>
<%--        <input type="text" id="username" name="username" required />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="password">Mật khẩu:</label>--%>
<%--        <input type="password" id="password" name="password" required />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="email">Email:</label>--%>
<%--        <input type="email" id="email" name="email" required />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <button type="submit">Đăng ký</button>--%>
<%--    </div>--%>
<%--</form>--%>
<%--<a href="<c:url value='/login'/>">Đã có tài khoản? Đăng nhập</a>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<h1>Đăng ký tài khoản</h1>
<form:form modelAttribute="taikhoan" action="<c:url value='/taikhoans/register' />" method="post">
    <div>
        <label for="username">Tên đăng nhập:</label>
        <form:input path="username" />
        <form:errors path="username" cssClass="error" />
    </div>
    <div>
        <label for="password">Mật khẩu:</label>
        <form:password path="password" />
        <form:errors path="password" cssClass="error" />
    </div>
    <div>
        <button type="submit">Đăng ký</button>
    </div>
</form:form>
<a href="<c:url value='/login' />">Đã có tài khoản? Đăng nhập</a>
</body>
</html>
