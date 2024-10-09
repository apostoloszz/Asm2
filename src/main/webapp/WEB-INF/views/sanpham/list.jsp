<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<c:forEach var="sanpham" items="${sanphams}">
    <div>
        <h2>${sanpham.ten}</h2>
        <p>${sanpham.mota}</p>
        <p>Giá: ${sanpham.gia}</p>
        <a href="<c:url value='/sanphams/${sanpham.sanpham_id}' />">Xem chi tiết</a>
    </div>
</c:forEach>
</body>
</html>