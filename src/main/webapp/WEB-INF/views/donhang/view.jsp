<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách đơn hàng</title>
</head>
<body>
<h1>Danh sách đơn hàng</h1>
<c:forEach var="donhang" items="${donhangs}">
    <div>
        <h2>Đơn hàng #${donhang.donhang_id}</h2>
        <p>Ngày tạo: ${donhang.ngaytao}</p>
        <p>Trạng thái: ${donhang.trangthai}</p>
        <p>Tổng giá: ${donhang.tonggia}</p>
        <a href="<c:url value='/donhangs/${donhang.donhang_id}' />">Xem chi tiết</a>
    </div>
</c:forEach>
</body>
</html>