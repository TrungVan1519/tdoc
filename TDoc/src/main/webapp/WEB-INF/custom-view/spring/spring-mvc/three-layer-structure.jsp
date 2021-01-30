<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container">
	<ol class="row">
	
		<li class="col-md-12">
			<h5>Khái niệm cấu trúc 3 layer</h5> 
			<ol type="a" class="row">
				<li class="col-md-12">
					<h6>Lý thuyết</h6>
					- Tầng Spring Controller chứa các Controller có nhiệm vụ điều hướng request đến các
							View tương ứng <br>
					- Tầng Service chứa các hàm có nhiệm vụ xử lý Business Logic trong Web. VD như
							cập nhật thông tin Item, trừ tiền thanh toán cho User, ... <br>
							Tầng Servive làm việc với Object DTO <br>
					- Tầng Data Access chứa các hàm có nhiệm tương tác trực tiếp với Database và truyên lên
							cho tầng Service sử dụng <br>
							Tầng Data Access làm việc với Object Entity 
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_review.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Thực tế</h6> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_project_review.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			</ol>
		</li>
		<li class="col-md-12">
			<h5>Annotation tương ứng với các tầng trong cấu trúc 3 layer</h5>
			
		 	- 3 Annotation @Controller, @Service, @Repository trên dùng để tạo các Bean tương ứng với từng tầng của cấu trúc 3 layer.
				Sau đó khi muốn sử dụng thì chỉ cần sử dụng @Autowired là xong <br>
			- Ngoài 3 Annotation Controller, Service, Repository dùng cho 3 tầng tương ứng của cấu trúc 3 layer như trên
			ta còn có @Component. Annotation này dùng để khởi tạo các Object khác trong Spring MVC <br>
			- Còn trong phần Config có 1 số thứ ta không tạo được mà dùng sẵn của Spring nên mới phải tạo 1 @Bean bằng tay <br>
				
			<div class="text-center">
				<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_annotation.png"/>"
					class="img-fluid rounded" alt="Responsive image">
			</div>
			
			<div class="row">
				<div class="col-md-4">
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_controller.png"/>"
						class="img-thumbnail" alt="Responsive image">
				</div>
				
				<div class="col-md-4">
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_service.png"/>"
						class="img-thumbnail" alt="Responsive image">
				</div>
				
				<div class="col-md-4">
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/three-layer-structure_repository.png"/>"
						class="img-thumbnail" alt="Responsive image">
				</div>
			</div>
		</li>
	</ol>
</div>


