<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<h1>Chi tiết sản phẩm</h1>
<div>
    <h2>${sanpham.ten}</h2>
    <p>${sanpham.mota}</p>
    <p>Giá: ${sanpham.gia}</p>
    <img src="${sanpham.anh}" alt="${sanpham.ten}" />
    <form action="<c:url value='/giohang/add' />" method="post">
        <input type="hidden" name="sanphamId" value="${sanpham.sanpham_id}" />
        <label for="quantity">Số lượng:</label>
        <input type="number" id="quantity" name="quantity" value="1" min="1" />
        <button type="submit">Thêm vào giỏ hàng</button>
    </form>
</div>
<a href="<c:url value='/sanphams' />">Quay lại danh sách</a>
</body>
</html>