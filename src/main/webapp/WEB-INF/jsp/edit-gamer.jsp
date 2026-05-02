<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Gamer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5" style="max-width: 500px;">
    <h2 class="mb-4">Update Profile</h2>
    
    <div class="card shadow-sm border-warning">
        <div class="card-body">
            <form action="/updateGamer/${gamer.id}" method="post">
                <div class="mb-3">
                    <label class="form-label fw-bold">Username</label>
                    <input type="text" name="username" value="${gamer.username}" class="form-control" required/>
                </div>
                <div class="mb-4">
                    <label class="form-label fw-bold">Email</label>
                    <input type="email" name="email" value="${gamer.email}" class="form-control" required/>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-warning">Apply Changes</button>
                    <a href="/gamers" class="btn btn-outline-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>