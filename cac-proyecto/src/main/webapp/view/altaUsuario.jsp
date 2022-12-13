<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link rel="stylesheet" href="css/estilos.css">
    
    <link href="./css/signin.css" rel="stylesheet">

  </head>
  
  <body>
  <header>
    <a href="#" class="logo">
      <span>CAC </span>Audio</a>

      <input type="checkbox" id="menu-bar">
      <label for="menu-bar" class="fa fa-bars"></label>

      <nav class="navbar">
        <a href="inicio.html">inicio</a>
        <a href="inicio.html#detalles">detalles</a>
        <a href="inicio.html#acerca_de">acerca de</a>
        <a href="inicio.html#opiniones">opiniones</a>
        <a href="inicio.html#precios">precios</a>
        <a href="inicio.html#contactos">contacto</a>
        <p>Usuario >
        <a href="login.html">Login</a>
        <a href="altaUsuario.jsp">Nuevo Usuario</a>
        <a href="listarUsuarios.jsp">Listado Usuarios</a>
        </p>
        <p>Pedidos >
        <a href="listarPedidosC.jsp">Pedidos</a>
        <a href="pedidoC.jsp">Nuevo Pedido</a>
        </p>
     

      </nav>

  </header>
  <section class="inicio">  </section>
  
  


	<div class="py-4 text-center">
		<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba" width="172" height="172">
		<h1>Crear Usuario</h1>
		<p class="lead">Página para crear un usuario que nos permitirá
			acceder al sistema.</p>

	<div class="col-md-12 text-center">
		<form action="../controller/guardarUsuarioC.jsp" method="POST">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="user">Usuario</label> 
					<input type="email" class="form-control" id="user" name="user" placeholder="Tu usuario" value="" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
				</div>
				<div class="col-md-6 mb-3">
					<label for="pass">Contraseña</label> 
					<input type="password" class="form-control" id="pass" name="pass" placeholder="Tu contraseña" value="" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
				</div>
			</div>

			<hr class="mb-4">

			<div class="row">
				<div class="d-flex justify-content-around">
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						Ingresar la Solicitud
					</button>
				</div>
			</div>
		</form>
	</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>