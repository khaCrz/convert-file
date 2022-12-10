<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page language="java"  import=" Model.BEAN.user"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>PDF to WORD</title>
</head>
<body>
<%
	user a = (user)request.getSession().getAttribute("User");
	if(a!=null){
%>
    <div class="head">
        <img src="https://pdf2doc.com/images/pdf2doc/logo.svg" alt="">
        <p class="btn_Login"><%=a.getName()%></p>
        <p>Công cụ chuyển đổi từ PDF sang DOC miễn phí trực tuyến này cho phép bạn chuyển <br> đổi tệp PDF thành định dạng Microsoft Word DOC, cho bạn chất lượng tốt hơn bất kỳ <br> công cụ nào.</p>
        <ul>
            <li><p>Nhấn nút TẢI TỆP LÊN và chọn tối đa 20 tệp PDF bạn muốn chuyển đổi. Đợi<br> đến lúc quy trình chuyển đổi hoàn tất.</p></li>
            <li><p>Tải kết quả xuống hoặc từng tệp một hoặc nhấn vào nút TẢI TẤT CẢ để đặt tất<br> cả vào tệp lưu trữ ZIP.</p></li>
        </ul>
    </div>
    <div class="Page_File">
        <ul class="service">
            <li><a href="#">PDF to DOC</a></li>
            <li><a href="#">DOC to PDF</a></li>
        </ul>
        <h3>Upload your file
        </h3>
        <div class="drag-area">
            <div class="icon">
                <i class="fas fa-file-pdf"></i>
                <i class="fas fa-arrow-right"></i>
                <i class="fas fa-file-word"></i>
            </div>
            <span class="header">Drag & Drop</span>
            <span class="header">or <span class="button">Browse</span></span>
            <input type="file" hidden>
            <span class="header">Support: PDF</span>
            <div class="Wrapper">
                <section class="Progress-area"></section>
                <section class="Upload-area"></section>
            </div>
        </div>
    </div>
    <script src = "js/script.js"></script>
    <%
		}else{
			response.sendRedirect("Login.jsp");
		}
	%>
</body>
</html>