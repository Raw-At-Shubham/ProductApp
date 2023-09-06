<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<div class="container mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">
Fill up Product Details
</h1>
<form action="handleProduct" method="post">
  <div class="form-group">
    <label for="name">Product Name</label>
    <input type="text" 
    class="form-control" 
    id="name"  
    name="name"
    placeholder="Enter product name here..">
  </div>
  
  <div class="form-group">
    <label for="description">Product Description</label>
    <textarea rows="5" 
    class="form-control" 
    id="description"  
    name="description"
    placeholder="Enter product description here.."></textarea>
  </div>
  
  <div class="form-group">
    <label for="price">Product Price</label>
    <input type="text" 
    class="form-control" 
    id="price"  
    name="price"
    placeholder="Enter product price here.."/>
  </div>
  <div class=" mt-3 text-center">
  
  <a class="btn btn-outline-danger" 
  href="${pageContext.request.contextPath}/">Back</a>
    <button type="submit" class="btn btn-outline-primary">Add</button>
  
  
  </div>	
 
</form>


</div>


</div>

</div>	
</body>
</html>