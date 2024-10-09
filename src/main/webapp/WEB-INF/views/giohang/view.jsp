<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Giỏ hàng của bạn</title>
</head>
<body>
<h1>Giỏ hàng của bạn</h1>
<c:forEach var="item" items="${gioHangItems}">
    <div>
        <h2>${item.sanpham.ten}</h2>
        <p>Giá: ${item.sanpham.gia}</p>
        <p>Số lượng: ${item.quantity}</p>
        <form action="<c:url value='/giohang/remove' />" method="post">
            <input type="hidden" name="sanphamId" value="${item.sanpham.sanpham_id}" />
            <button type="submit">Xóa khỏi giỏ hàng</button>
        </form>
    </div>
</c:forEach>
<a href="<c:url value='/sanphams' />">Tiếp tục mua sắm</a>
<a href="<c:url value='/donhangs' />">Đặt hàng</a>
</body>
</html>