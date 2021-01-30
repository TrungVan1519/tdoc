<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container">
	<ol class="row">
	
		<li class="col-md-12">
			<h5>Giới thiệu</h5>
			
			- @Controller là con của @Component <br>
			- Dùng để điều hướng request của User đến View tương ứng
		</li>
		
		<li class="col-md-12">
			<h5>Sử dụng Controller</h5> 
			
			<ol class="row" type="a">
			
				<li class="col-md-12">
					<h6>Giới thiệu về @RequestMapping</h6>
					
					- @RequestMapping(“value”) có tác dụng xử lý endpoint tới trang View <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_single_level.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Khởi tạo Constructor đơn cấp</h6>
					
					- Sử dụng @RequestMapping ngay trước method là xong <br>
					- @RequestMapping có thể chỉ xử lý 1 endpoint nhưng cũng có thể xử lý nhiều endpoints khác nhau 
					mà vẫn trả về cùng 1 View <br>
					- Ngoài ra @RequestMapping có thể chỉ định các HttpMethod được sử dụng đi kèm khi request tới endpoint, 
					nó tương đương với việc sử dụng @GetMapping, @PostMapping. VD như hình là chỉ khi dùng POST với endpoint 
					mới xử lý request <br>
					- Ta cũng có thể truyền dữ liệu từ Controller sang View thông qua Model, ... Sẽ nói rõ ở phần sau <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_single_level.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Khởi tạo Constructor phân cấp</h6>
					
					- Chỉ cần sử dụng @RequestMapping 1 lần nữa ngay trước class thay vì chỉ sử dụng cho mỗi method <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_hierarchy.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			</ol>
		</li>
		
		<li class="col-md-12">
			<h5>Truyền dữ liệu giữa View với Controller và ngược lại</h5> 
			
			<ol class="row" type="a">
				<li class="col-md-12">
					<h6>Truyền dữ liệu từ Controller sang View</h6>
					
					- Trong Controller sử dụng object kiểu Model để truyền dữ liệu đi <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_model_step1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
						
					- Trong View sử dụng EL Expression để lấy dữ liệu ra <br>
					<strong>- Chú ý: </strong> <br>
					+ Tên biến lấy ra ở View phải đúng tên biến truyền đi trong Controller <br>
					+ Nếu muốn lấy các thuộc tính của kiểu object ta phải gọi tên chính thuộc tính đó, 
					hoặc có thể gọi hẳn tên hàm getter cũng được (được nói kỹ trong phần JSP-Servlet) <br>
					+ Phải sử dụng isELIgnored="false" thì biến sử dụng EL Expression mới có tác dụng <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_model_step2.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
				
				<li class="col-md-12">
					<h6>Nhận dữ liệu từ View về Controller</h6>
					
					<strong>
						- Sử dụng @RequestParam <br>
						- @RequestParam có 1 số thuộc tính hay dùng: 
					</strong> <br>
					+ required: quyết định tham số đó là bắt buộc hay không bắt buộc phải truyền giá 
					trị khi truy cập endpoint <br>
					+ defaultValue: thường hay đi cùng với required=true, nó là giá trị mặc định cho biến đó. 
					Trong TH ta không truyền giá trị cho biến này thì nó sẽ dùng giá trị của defaultValue <br>
					+ name: ít dùng, có tác dụng định nghĩa tên khi truyền giá trị vào trên endpoint. 
					Nếu không sử dụng thuộc tính này thì tên biến chính là tên cần truyền trên endpoint <br> <br>
					
					<strong>- Khuyến cáo nếu sử dụng kiểu dữ liệu object như dưới hình thì nên có getter, setter</strong> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					<strong>- Chú ý:</strong> <br>
					+ Trong Form thì "action" có nhiệm vụ điều hướng tới endpoint đích, nhưng cần chú ý là ở đây ta không được sử dụng dấu "/",
					nếu sử dụng "/" thì không thể điều hướng đến endpoint được nữa (cái này cũng không hiểu tại sao, đúc rút được từ khi làm),
					đối với trường hợp Controller phân tầng cũng tương tự, bên trái nhất của endpoint không được sử dụng "/" <br>
					+ @RequestParam lấy dữ liệu trực tiếp từ giá trị thuộc tính "name" của thẻ &lt;input&gt; trong HTML <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step2.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
					
					<strong>- Chú ý:</strong> <br>
					+ Vì bên View sử dụng Form method="POST" nên khi điều hướng tới endpoint tương ứng thì method xử lý endpoint trong Controller
							cũng phải là Post, vì vậy sử dụng @PostMapping <br>
					+ @RequestParam chỉ có tác dụng là chỗ chứa giá trị truyền đi từ Controller đến View trong TH muốn truyền biến đi. 
							Và ta phải dùng Model hoặc HttpServletRequest để làm phương tiện truyền biến đi <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step3.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br>
					
					
					<strong>- Chú ý:</strong> <br>
					+ Phải sử dụng isELIgnored="false" thì biến sử dụng EL Expression mới có tác dụng <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step4.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br><br>
					
					<strong>
						- Nếu muốn truyền dữ liệu bằng tay trên URL thì khi truyền đi, trên endpoint phải ghi tên biến sử dụng @RequestParam 
						lẫn giá trị truyền vào như trên hình
					</strong> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step5.png"/>"
						class="img-fluid rounded" alt="Responsive image">
						
					<hr>
					
					<strong>
						- Sử dụng @PathVariable <br>
						- @PathVariable có 1 số thuộc tính hay dùng:
					</strong> <br>
					+ required: quyết định tham số đó là bắt buộc hay không bắt buộc phải truyền giá trị khi truy cập endpoint <br>
					+ name: ít dùng, có tác dụng định nghĩa tên khi truyền giá trị vào trên endpoint. 
					Nếu không sử dụng thuộc tính này thì tên biến chính là tên cần truyền trên endpoint <br> <br>
						
					
					<strong>- Khuyến cáo nếu sử dụng kiểu dữ liệu object như dưới hình thì nên có getter, setter</strong><br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					<strong>- Chú ý:</strong> <br>
					+ Method sử dụng @PathVariable thì dữ liệu phải được khởi tạo sẵn bới 1 method trước đó, sau đó method này truyền dữ liệu
					cho View rồi cuối cùng View truyền về cho method sử dụng @PathVariable, tất cả công việc trên từ truyền dữ liệu từ method trước
					đó cho View đến nhận dữ liệu từ View về method sử dụng @PathVariable ta đều phải sử dụng thông qua thẻ link &lt;a&gt; <br>
					+ @PathVariable chỉ có tác dụng là chỗ chứa giá trị truyền đi từ Controller đến View trong TH ta muốn truyền biến đi. 
					Và ta phải dùng Model hoặc HttpServletRequest để làm phương tiện truyền biến đi <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_path_variable_step1.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					<strong>- Chú ý:</strong> <br>
					+ @PathVariable không có tác dụng với cách truyền dữ liệu thông qua Form như @RequestParam mà
					chỉ có tác dụng đối với cách truyền dữ liệu thông qua endpoint, vì vậy mà @PathVariable chỉ có thể làm việc với
					thẻ &lt;a&gt; hoặc truyền biến bằng tay thủ công <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_path_variable_step2.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					<strong>- Chú ý:</strong> <br>
					+ Phải sử dụng isELIgnored="false" thì biến sử dụng EL Expression mới có tác dụng <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step4.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
					
					<strong>
						- Nếu muốn truyền dữ liệu bằng tay trên URL thì khi truyền đi, trên endpoint không được ghi tên biến sử dụng như @RequestParam 
						mà chỉ phải truyền giá trị truyền vào như trên hình, nó tạo được 1 endpoint đẹp hơn so với sử dụng @RequestParam
						</strong> <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_path_variable_step3.png"/>"
						class="img-fluid rounded" alt="Responsive image"> <br> <br>
						
					<strong>- Chú ý:</strong> <br>
					+ Cẩn thận với cú pháp khi sử dụng PathVariable vì trong quá trình làm đã bị lỗi cú pháp như sau: 
					Nhầm với endpoint trên Controller và endpoint trong href của &lt;a&gt; <br>
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_path_variable_warning.png"/>"
						class="img-fluid rounded" alt="Responsive image"> 
				</li>
				
				<li class="col-md-12">
					<h6>Sự khác nhau giữa @RequestParam và @PathVariable</h6>
					
					<strong>- Giống nhau:</strong> <br>
					+ Đều dùng để tự động nhận biến từ 1 View về Controller và sau đó có thể truyền biến từ Controller đó sang 1 View khác hoặc sout lên Console <br>
					
					<strong>- Khác nhau:</strong> <br>
					+ Tuy nhiên @PathVariable khác với @RequestParam ở chỗ @PathVariable khi truyền biến trên endpoint thì không cần phải ghi tên biến mà chỉ cần ghi giá trị truyền cho biến, 
					còn @RequestParam thì khi truyền biến trên endpoint ta phải ghi tên cả biến sử dụng lẫn giá trị truyền vào <br>
					+ Ngoài ra, @RequestParam có thể sử dụng dữ liệu từ Form, thẻ &lt;a&gt;, nhập thủ công bằng tay...
					và dữ liệu của @RequestParam làm việc không nhất thiết phải được hàm khác khởi tạo cho trước.
					Trong khi đó, @PathVariable chỉ có thể sử dụng dữ liệu của thẻ &lt;a&gt; hoặc nhập thủ công bằng tay
					 và dữ liệu truyền tới thẻ thẻ &lt;a&gt; này phải được 1 method trước đó khởi tạo sẵn <br> <br>
							 
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_request_param_step5.png"/>"
						class="img-fluid rounded" alt="Responsive image">
					<img src="<c:url value="/static-source/image/content/spring/spring-mvc/about-controller_passing_value_path_variable_step3.png"/>"
						class="img-fluid rounded" alt="Responsive image">
				</li>
			</ol>
		</li>
		<li class="col-md-12">
			<h5>Source Code: </h5>
			<a href="${pageContext.request.contextPath }/downloading-file/${fileNameSourceCode}">Download source code</a>
		</li>
	</ol>
</div>


