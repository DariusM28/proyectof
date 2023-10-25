<%-- 
    Document   : index_trab
    Created on : 17/10/2023, 21:16:24
    Author     : Renato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODELO.clsproductos" %>
<%@page import="java.util.HashMap" %>
 
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">LOGO</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">PRODUCTOS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
     
    </ul>
  </div>
</nav>
        
        
        <div class ="container">
            <form action="srv_producto" method="get" class="form-group">
                <label for ="lbl_codigo">PRODUCTO:</label>
                <input type="text" name="txt_producto" id="txt_producto" placeholder="PRODUCTO">
                
                <label for ="lbl_marca">MARCA:</label>
               <select name="drop_sangre"  id="drop_sangre" class="from-control">
                   <%
                   clsproductos producto = new clsproductos();
                   HashMap<String,String> drop = producto.tipomarca();
                   for(String i:drop.keySet()){
                       out.println("<option value='"+i+"'>"+drop.get(i)+"</option>");
                       }
                   %>
                </select>
                
                <label for ="lbl_descrip">DESCRIPCION:</label>
                <input type ="text" name="txt_desc" id="txt_desc" name ="txt_desc"placeholder="PARA QUE SIRVE O QUE HACE">
                
                
                <label for ="lbl_codigo">INGRESE UNA IMAGEN:</label>
                <input type="text" name="txt_imagen" id="txt_imagen">
                <BR>
                <label for ="lbl_codigo">PRECIO COSTO:</label>
               <input  type="number" name="txt_preci_costo" id="txt_preci_costo"placeholder="00.00">
                
                <label for ="lbl_codigo">PRECIO VENTA:</label>
                <input type="number" name="txt_preci_venta" id="txt_preci_venta"placeholder="00.00">
                
                <label for ="lbl_codigo">EXISTENCIA:</label>
                <input type="number" name="txt_cantidad" id="txt_cantidad" placeholder="SOLO NUMEROS ENTEROS">
                <br>
                <button  class="btn btn-primary"  name="btn_agregar" value ="agregar" id="btn_agregar">AGREGAR</button>
                
            </form>
            
            
        </div>
        
    </body>
</html>
