<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="./base.jsp" %>
<html>
<body >
<div class="container">
<div class="row">
<div class="col-md-12">
<h1 class="text-center ">Welcome to Product App</h1>
<div class="table-responsive">
<table  class="table table-hover mt-3">
  <thead class="table-dark">
      <tr>
      <th scope="col">S.No</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products}" var="p" >
     <tr>
      <th scope="row">PROD#${p.id}</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td class="fw-bold">&#x20B9; ${p.price}</td>
      <td >
      <a href="#" onclick="deleteContact(${p.id})">
      <i 
      style="font-size:30px;"
      class="fa-sharp fa-solid fa-trash text-danger">
      </i></a>
      
      <a href="updateProduct/${p.id}">
      <i 
      style="font-size:30px;"
      class=" ms-3 fa-solid fa-pen-nib text-primary">
      </i>
      </a>
      
      
         </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
<div class="container text-center">
<a href="addProduct" class="btn btn-success">Add product</a>


</div>


</div>

</div>



</div>

</body>
</html>
