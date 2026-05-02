<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gamer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Gamer Roster</h2>
        <div>
            <a href="/addGamer" class="btn btn-primary">+ Add New Gamer</a>
            <a href="/gamer-library" class="btn btn-dark ms-2">View Inner Join Query</a>
        </div>
    </div>
    
    <div class="card shadow-sm">
        <div class="card-body">
            <table class="table table-hover table-bordered mb-0">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="g" items="${gamers}">
                        <tr>
                            <td>${g.id}</td>
                            <td>${g.username}</td>
                            <td>${g.email}</td>
                            <td>
                                <a href="/editGamer/${g.id}" class="btn btn-warning btn-sm">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>