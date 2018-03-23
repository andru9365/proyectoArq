<%-- 
    Document   : artista
    Created on : 21/03/2018, 12:33:45 PM
    Author     : andru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="style/css.css" rel="stylesheet" type="text/css">
     
		<title>Administrador</title>
		
	</head>
	<body>
             <div class="main">
                 <h3><strong>Bienvenido Artista</strong></h3>
		<div id="header">
			<ul class="nav">
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="">Estampas</a>
					<ul>
						<li><a href="">Catalogo personal</a></li>
						<li><a href="">Administrar estampas</a></li>
						<li><a href="">Consultar Rating</a>
                                                <li><a href="">Reporte</a>
						</li>
					</ul>
				</li>
                                
				<li><a href="">Perfil</a>
					<ul>
						<li><a href="">Datos personales</a></li>
					</ul>
				</li>
				
			</ul>
                     <h1 style="margin-bottom: 20px;">Estampados</h1>
        
        
        <table style="margin:auto;" border="0" width="90%" align="center"  background-color: rgba(255,255,255,.4); >
            <%
            ArrayList<Productos> lista=ProductoDB.obtenerproductos();
                int salto=0;
                for(int i=0;i<lista.size();i++){
                    Productos p=lista.get(i);
                   salto++;
                   %>
                    
                        <td><img style="margin:auto;" src="imagenes/<%=p.getImagen()%>" width="100" height="100"><br>
                            <%=p.getNombre()%><br>
                        <%=p.getPrecio()%>        <br>                                      
                        Modificar \\ Añadir
                        </td>
                   <%
                       if(salto==3){
                           %>
                            </tr>
                           <%
                            salto=0;
                       }
                       
                    }
            %>           
        </table>
                    
		</div>
             </div>
	</body>
</html>