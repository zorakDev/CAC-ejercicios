<!doctype html>

<%@page import="model.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="dao.PedidoDAOC"%>
<html lang="en">

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
  

  <div class="container">
    <div class="py-4 text-center">
      <img class="d-block mx-auto mb-4" src="./images/logo.jpg" alt="Logo caba" width="172" height="172">
      <p class="lead"><h1>Listado de Pedidos</h1></p>
    </div>

    <table class="table table-hover table-sm">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#ID</th>
          <th scope="col">Nombre</th>
          <th scope="col">Apellido</th>
          <th scope="col">Email</th>
          <th scope="col">Domicilio</th>
          <th scope="col">Localidad</th>
          <th scope="col">Provincia</th>
          <th scope="col">Código POstal</th>
          <th scope="col">Operaciones</th>
        </tr>
      </thead>
      <tbody>

        <%
        PedidoDAOC dao = new PedidoDAOC();
        List<Pedido> listPed = dao.listarPedidos();
        
        for(Pedido pedido: listPed) {
        	out.println("<tr>");
        	out.println("<td>");
        	out.println(pedido.getIdPedido());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getApellido());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getMail());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLugarEntrega());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLocalidad().getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLocalidad().getProvincia().getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getCodPostal());
        	out.println("</td>");
        	out.println("<td>");
        	%>
	          <a href="editarPedidoC.jsp?idPedido=<% out.println(pedido.getIdPedido()); %>">
	          edit
	          </a>
        	
        	<% 
        	out.println("</td>");
        	out.println("</tr>");
        }
      

        %>
        
      </tbody>
    </table>


  </div>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>