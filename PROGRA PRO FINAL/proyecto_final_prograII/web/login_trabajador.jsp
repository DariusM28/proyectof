<%-- 
    Document   : login_trabajador
    Created on : 17/10/2023, 20:55:12
    Author     : Renato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG TRABAJADOR</title>
    </head>
    <body>
         <h1>LOGIN TRABAJADOR</h1>
        <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Usuario</label>
    <input type="email" class="form-control" id="UserCliente" aria-describedby="emailHelp" placeholder="Usuario de Plataforma">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Contraseña</label>
    <input type="password" class="form-control" id="PassCliente" placeholder="Contraseña de Usuario">
  </div>
            <label for="exampleFormControlSelect1">PUESTO</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
            <BR>
    <a href="idx_trab.jsp"><button type="button" class="btn btn-secondary">ENTRAR</button> </a> 
    <a href="idx_proveedores.jsp"><button type="button" class="btn btn-secondary">ENTRAR</button> </a> 
</form>
    </body>
</html>
