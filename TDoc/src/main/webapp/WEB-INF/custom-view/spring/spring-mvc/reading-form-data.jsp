<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container">
	<ol class="row">
		<li class="col-md-12">
			<h5>Spring Form Tags</h5>
			<ol class="row" type="a">
				<li class="col-md-12">
					<h6>Giới thiệu</h6> 
					
					<strong>- Nên sử dụng cách này</strong> <br>
					- Là các thẻ có sẵn do Spring hỗ trợ <br>
					- Dùng để tạo nhanh các Form và 1 số thẻ hay dùng trong Form <br>
					- Danh sách 1 số Spring Form Tags và import thư viện để sử dụng <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_lib.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Cơ chế hoạt động</h6> 
					- Các Form Tags này ngoài việc giúp ta tạo các thẻ HTML nhanh, 
					nó còn hỗ trợ 1 điều đó là tự động binding dữ liệu vào dữ liệu object thông qua các hàm getter, setter
					nên khi truyền đối tượng vào thì đối tượng này phải có hàm getter, setter <br>
				
					- Khi Form được load lên thì Spring Form Tags sẽ gọi đến các hàm getter của đối tượng để hiển thị dữ liệu 
					có sẵn của thuộc tính trong đối tượng lên,
					khi ta nhập xong dữ liệu mà Submit thì Spring Form Tags sẽ gọi đến các hàm setter để truyền dữ liệu vào các
					thuộc tính của đối tượng 
				</li>
				
				<li class="col-md-12">
					<h6>Sử dụng</h6> 
					
					<strong>- Kiểu dữ liệu bắt buộc phải có getter, setter (Ở đây ta sử dụng @Getter, @Setter của Lombok trong viêc tự động tạo getter, setter)</strong> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_model.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
					
					<strong>- Adding</strong> <br>
					<- Ở đây chỉ là VD về Spring Form Tags nên ta tập trung vào nó, vì vậy sử dụng List&lt;Student&gt; cũng như không kết nối tới DB
					nên phải làm như này <br>
					- Khởi tạo 1 object Student trống để truyền đi (nếu bạn không nhớ thì trong @PathVariable ta có nói khi 1 method ngay trước đo khởi tạo sẵn
					và truyền đi dữ liệu khởi tạo sẵn này thì method kế tiếp dễ sử dụng @PathVariable thay vì @RequestParam nhưng trong trường hợp này thì lại
					không sử dụng cái nào cả :))) <br>
					- Khi sử dụng Spring Form Tags thì ta không truyền đi các thuộc tính riêng lẻ của object nữa mà thay vào đó ta sẽ truyền đi nguyên 1 object,
					khi này Spring Form Tags sẽ tự động gọi các hàm getter, setter của thuộc tính ra để làm việc (vì vậy mà ở trên mới nói model object phải có đầy đủ getter, setter),
					- Để truyền nguyên object này ta sử dụng @ModelAttribute <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_adding1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> 
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_adding2.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					+ Bên View khi sử dụng thì ta cũng sử dụng 1 thuộc tính "modelAttribute" trong &lt;form:form&gt; và tất nhiên là giá trị truyền vào thuộc tính
					này sẽ cùng tên với biến truyền ở bên Controller <br>
					+ Để nhập dữ liệu cho các thuộc tính của object, ta sử dụng các thẻ Spring Form Tags, các thẻ này có 1 thuộc tính rất quan trong là "path", nó
					có tác dụng là map dữ liệu từ các thẻ vào các thuộc tính của object truyền vào "modelAttribute", cơ chế hoạt động của "path" như sau: Khi ta load
					Form thì "path" sẽ gọi các hàm getter của thuộc tính để show dữ liệu sẵn có bên trong thuộc tính lên Form, khi ta nhấn nút Submit thì "path" sẽ
					gọi các hàm setter của thuộc tính để truyền dữ liệu mới do ta nhập từ Form vào các thuộc tính này
					+ 1 điểm cần chú ý nữa là khi ta truyền nguyên đối tượng này đi thì đối với việc nhập Form ta sẽ sử dụng các thẻ Spring Form Tags có sẵn, nếu
					sử dụng các thẻ HTML bình thường thì sẽ không có tác dụng <br> 
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_adding3.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_adding4.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
						
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/reading-form-data_spring_form_tag_step4.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			</ol>
		</li>
	</ol>
</div>


