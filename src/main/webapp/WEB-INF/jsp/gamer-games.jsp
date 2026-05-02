<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Global Game Library</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Global Game Library (Inner Join Result)</h2>
        <a href="/gamers" class="btn btn-outline-primary">Back to Gamers</a>
    </div>
    
    <div class="card shadow-sm">
        <div class="card-body">
            <table class="table table-hover table-striped mb-0">
                <thead class="table-dark">
                    <tr>
                        <th>Gamer Username</th>
                        <th>Owned Game Title</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="row" items="${joinData}">
                        <tr>
                            <td class="fw-bold text-primary">${row[0]}</td>
                            <td>${row[1]}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>