<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<meta name="author" content="Nombre Autor">
<meta name="description" content="Informacion de descripcion">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registrar producto</title>
<link rel="icon"type="image/x-icon" href="../img/images.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous">
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/styles.css">
<link rel="stylesheet" href="../css/signin.css">
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="registerUser" method="post">
        <img class="" src="../img/image%20.jpg" alt="HOT" width="200">
        <h4 class="">HOT</h4>
        <h1 class="h5 mb-3 fw-normal">Registro</h1>

        <div class="form-floating">
            <input type="text" class="form-control" name="product_name" id="floatingName"
                   placeholder="ingrese el nombre del producto " required autofocus>
            <label for="floatingName">Nombre:</label>
        </div>

        <div class="form-floating">
            <input type="text" class="form-control" name="product_value" id="floatingValue"
                   placeholder="ingrese el valor del producto" >
            <label for="floatingValue">$Valor:</label>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" name="category_id" id="floatingCategory"
                   placeholder="ingrese el id de la categoria" required>
            <label for="floatingCategory">Categoria:</label>
        </div>


        <button class="w-100 btn btn-lg btn-primary" type="submit">Registrar</button>

        <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados HOT
            © <%=displayDate()%>
        </p>

    </form>
</main>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%!
    public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>
</body>
</html>
