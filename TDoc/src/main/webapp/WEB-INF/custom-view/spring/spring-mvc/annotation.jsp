<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<table class="table table-bordered table-hover">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Annotation</th>
      <th scope="col">Tác dụng</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>@GetMapping</td>
      <td>Xử lý endpoint Get</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>@PostMapping</td>
      <td>Xử lý endpoint Post</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>@PutMapping</td>
      <td>Xử lý endpoint Put</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>@DeleteMapping</td>
      <td>Xử lý endpoint Delete</td>
    </tr>
  </tbody>
</table>


