<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<h1>Đăng nhập</h1>
<form action="<c:url value='/login' />" method="post" >
    <div>
        <label for="username">Tên đăng nhập:</label>
        <input type="text" id="username" name="username" required />
    </div>
    <div>
        <label for="password">Mật khẩu:</label>
        <input type="password" id="password" name="password" required />
    </div>
    <div>
        <button type="submit">Đăng nhập</button>
    </div>
</form>
<a href="<c:url value='/taikhoans/register' />">Chưa có tài khoản? Đăng ký</a>
</body>
</html>