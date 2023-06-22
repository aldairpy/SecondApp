<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="layouts/head.jsp"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col text-center">
            <div class="card">
                <h5 class="card-header">Inicio de sesion</h5>
                <div class="card-body">
                    <img class="w-25 h-25" src="https://i.blogs.es/94685e/spider-man-across-the-spider-verse/450_1000.jpeg"
                         alt="logo login">
                    <h3>Iniciar Sesión</h3>
                    <form id="loginForm" action="/api/auth" class="needs-validation" novalidate method="post">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" required>
                            <label for="floatingInput">Correo electronico:</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
                            <label for="floatingPassword">Contraseña:</label>
                        </div>
                        <div class="form-group mb-3">
                            <button id="login" class="btn btn-primary btn-sm" type="submit">
                                <i data-feather="log-in"></i>INICIAR SESION
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="layouts/footer.jsp"/>
<script>
    window.addEventListener("DOMContentLoaded", ()=>{
        feather.replace();
        const form = document.getElementById("loginForm");
        const btn = document.getElementById("login");
        form.addEventListener('submit', event => {
            btn.innerHTML = `<div class="d-flex justify-content-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>`;
            btn.classList.add("disabled");
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
                btn.innerHTML = `<i data-feather="log-in"></i>INICIAR SESION`;
            }
            form.classList.add('was-validated')
        }, false)
    }, false)
</script>
</body>
</html>