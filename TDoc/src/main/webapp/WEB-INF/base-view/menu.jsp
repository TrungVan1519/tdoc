<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <div class="sidenav">
	<!-- <a href="#" class="active">Home</a> -->
	<ul>
		<c:forEach items="${endpointMap }" var="endpointEntry">
			<li class="itemnav">
				<a href="${endpointEntry.key }">${endpointEntry.value }</a>
			</li>
		</c:forEach>
	</ul>
</div> --%>

<!-- MENU SECTION -->
<section>
	<div class="vertical-menu">
		<ul class="list-group list-group-flush mb-5">
			<!-- <a href="#" class="active">Home</a> -->
			<c:forEach items="${linkGroupDTO.linkDTOs }" var="linkDTO">
				<li class="list-group-item d-flex justify-content-between align-items-center">
					<a href="${pageContext.request.contextPath }/${linkDTO.endpoint }">${linkDTO.content }</a>
					<span class="badge badge-primary">${linkDTO.numberOfSubtitle }</span>
				</li>
			</c:forEach>
		</ul>
	</div>
</section>


