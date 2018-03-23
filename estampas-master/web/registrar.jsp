<%-- 
    Document   : registrar
    Created on : 22/03/2018, 08:54:24 PM
    Author     : quenan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="style\css.css" rel="stylesheet" type="text/css">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="main">
         <form action ="ServletMenus" method="post">
                <div id="header">
                    <ul class="nav" >
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="">Estampas</a>
					<ul>
						<li><a href="">Inventario</a></li>
						<li><a href="registrar.jsp">registrar</a></li>
						
						</li>
					</ul>
				</li>
                                
				
			</ul>
                    
		</div>
            </form>
        <br><br><br>
        <h1>Registro</h1>
        <form action="ServletRegistro" method="get">
            <table style="margin:auto;">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="txtNom"></td>                    
                </tr>
                 <tr>
                    <td>Precio</td>
                    <td><input type="text" name="txtPre"></td>                    
                </tr>
                 <tr>
                    <td>Imagen</td>
                    <td><input type="text" name="txtImg"></td>                    
                </tr>
                
                                
                
                
            </table>
            <input type="submit" value="Guardar">     
            <input type="hidden" name="accion" value="insertar">
        </form>
        </div>
    </body>
</html>
