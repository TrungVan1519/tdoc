<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container">
	<ol class="row">
		<li class="col-md-12">
			<h5>Giới thiệu</h5> 
			- Dùng để hiển thị ra bên ngoài	
		</li>
		<li class="col-md-12">
			<h6>Các cách xử lý endpoint trả về View</h6>
			
			<strong>- Có 3 cách hay sử dụng:</strong> <br>
			+ Trả về 1 View cụ thể <br>
			<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_single_level.png"/>"
				class="img-fluid rounded" alt="Responsive image"> <br> 
			<strong>
				Trong trường hợp ta để View trong SubFolder thì khi return View phải return rõ ràng 
				vị trí của cả SubFolder lẫn View
			</strong> <br>
			<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_return_view2.png"/>"
				class="img-fluid rounded" alt="Responsive image"> <br> <br>
			<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_return_view1.png"/>"
				class="img-fluid rounded" alt="Responsive image"> <br> <br>
				
			+ Redirect về lại 1 endpoint <br> 
			<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_redirect_endpoint.png"/>"
				class="img-fluid rounded" alt="Responsive image"> <br> <br>
			
			+ Trả về 1 tiles cụ thể (<a href="spring-tiles-3">sẽ nói rõ phần này trong Spring Titles</a>)
		</li>
		<li class="col-md-12">
			<h5>Sử dụng View</h5> 
			<ol class="row" type="a">
			
				<li class="col-md-12">
					<h6>Tự động redirect sang 1 View mới từ File View mặc định index.html hoặc index.jsp</h6>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_redirect_from_index1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_redirect_from_index2.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			
				<li class="col-md-12">
					<h6>Sử dụng Unicode trong View</h6>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_using_unicode.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Sử dụng EL Expression</h6>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-view_using_el_expression.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Sử dụng Spring Form Tag</h6>
					<strong>- Thêm thư viện</strong>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_lib.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
						
					<strong>Các thẻ Spring Tags</strong> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			</ol>
		</li>
	</ol>
</div>


