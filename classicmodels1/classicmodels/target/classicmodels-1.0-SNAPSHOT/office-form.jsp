<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Classic Model Online</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <style>
    body {
      background-color: #f8f9fa;
    }
    .container {
      margin-top: 50px;
    }
    .bg-primary {
      background-color: #007bff !important;
    }
    h2 {
      color: #ffffff;
    }
    form {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
      font-weight: bold;
    }
    button {
      margin-top: 20px;
    }
  </style>
</head>
<body class="container mt-5">
<div class="row bg-dark text-light py-3 mb-4">
  <h2>Classic Model Online</h2>
</div>
<div class="row mt-3">
  <form action="office-action" method="post" class="col-md-6">
    <input type="hidden" name="action" value="${requestScope.action == 'add' ? 'add' : 'edit'}" />

    <div class="form-group">
      <label>Office Code</label>
      <input type="text" class="form-control" ${requestScope.action == 'add' ? '' : 'readonly'} name="officeCode" value="${requestScope.office.officeCode}">
    </div>

    <div class="form-group">
      <label>City</label>
      <input type="text" class="form-control" name="city" value="${requestScope.office.city}">
    </div>

    <div class="form-group">
      <label>Phone</label>
      <input type="text" class="form-control" name="phone" value="${requestScope.office.phone}">
    </div>

    <div class="form-group">
      <label>Address Line 1</label>
      <input type="text" class="form-control" name="addressLine1" value="${requestScope.office.addressLine1}">
    </div>

    <div class="form-group">
      <label>Address Line 2</label>
      <input type="text" class="form-control" name="addressLine2" value="${requestScope.office.addressLine2}">
    </div>

    <div class="form-group">
      <label>State</label>
      <input type="text" class="form-control" name="state" value="${requestScope.office.state}">
    </div>

    <div class="form-group">
      <label>Country</label>
      <input type="text" class="form-control" name="country" value="${requestScope.office.country}">
    </div>

    <div class="form-group">
      <label>Postal Code</label>
      <input type="text" class="form-control" name="postalCode" value="${requestScope.office.postalCode}">
    </div>

    <div class="form-group">
      <label>Territory</label>
      <input type="text" class="form-control" name="territory" value="${requestScope.office.territory}">
    </div>

    <button type="submit" class="btn btn-primary">
      ${requestScope.action == 'add' ? 'Insert' : 'Update'}
    </button>
  </form>
</div>
</body>
</html>
