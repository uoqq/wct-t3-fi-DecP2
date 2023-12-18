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
</head>

<body class="container mt-4">

<div class="row bg-dark text-light py-3 mb-4">
    <div class="col">
        <h2>Classic Model Offices</h2>
    </div>
</div>

<div class="row">
    <form class="input-group col-md-6 mb-4" action="office-list" method="get">
        <input type="text" class="form-control" name="cityOrCountry" placeholder="Search">
        <div class="input-group-append">
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
        <div class="input-group-append">
            <a href="office-action" class="btn btn-success">
                Add Office
            </a>
        </div>
    </form>
</div>

<div class="row">
    <c:forEach items="${offices}" var="office">
        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow">
                <div class="card-body ${office.officeCode == selectedOffice.officeCode ? 'bg-warning' : ''}">
                    <h5 class="card-title text-uppercase">${office.city}, ${office.country}</h5>
                    <p class="card-text">${office.phone}</p>

                    <div class="d-flex justify-content-between">

                        <form action="office-action" method="get">
                            <input type="hidden" name="action" value="edit" />
                            <input type="hidden" name="officeCode" value="${office.officeCode}" />
                            <button type="submit" class="btn btn-info">
                                <i class="bi bi-pencil-square"></i> Edit
                            </button>
                        </form>

                        <form action="office-action" method="post">
                            <input type="hidden" name="action" value="delete" />
                            <input type="hidden" name="officeCode" value="${office.officeCode}" />
                            <button type="submit" class="btn btn-danger">
                                <i class="bi bi-trash-fill"></i> Delete
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>

</html>
