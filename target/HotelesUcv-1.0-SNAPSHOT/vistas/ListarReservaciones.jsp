<%@page import="Hotel.utilities.GeneralMethods"%>
<!DOCTYPE html>
<%
	HttpSession session_actual = request.getSession(true);
			
if (session_actual.getAttribute("dni")!=null  ) { 

} else{
response.sendRedirect ("../vistas/Login.jsp"); 
}
	
%>
<html lang="en">

	<head>
<link href="../css/EstiloResponsive.css" rel="stylesheet">
		<%@include file="templates/header.jsp" %>
<link href="../css/EstiloMenu.css" rel="stylesheet">

<style>
	.popover.top {
    margin-top: 270px;
}
	.content-spinner {
    position: fixed;
    top: 0px;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.73);
    z-index: 99999;
}



.textos{
font-size:100%;

}

@media screen and (max-width: 700px){
.textos{
font-size:12px;
}
}
@media screen and (max-width: 400px){
.textos{
font-size:10px;
}
}
@media screen and (max-width: 361px){
.textos{
font-size:10px;
}
}


</style>
		<!--links-->
	</head>
	<body>
		<div id="blockui" class="spinner content-spinner" style="display: none;">
      <div class="sk-spinner sk-spinner-rotating-plane center-spinner"></div>
    </div>
		<%@include file="templates/header-body.jsp" %>
		<section id="content_outer_wrapper">
			
			<div class="wrapper wrapper-content animated fadeInRight">
	<form  id="formulariolistado"  class="animated" >
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-7">
                <div class="ibox float-e-margins shadow-material">
                    <div class="ibox-title" class="animated">
                        <h5>Filtro de búsqueda</h5>
                        <div class="ibox-tools">
                            <span class="text-danger">(*)</span>: <em>Campos Obligatorios</em>
                        </div>
                    </div>
                  <div class="ibox-content">
                        <form id="formulario">
                            <div class="row">                                            
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                            <label>Filtro </label> <span class="text-danger">(*)</span> 
                                            <div id="divFiltro">
                                                <select class="form-control" id="cbFiltro" name="cbFiltro" >
                                                    <option  value="4">FECHA</option>
                                                    <option  selected="selected" value="0">TODOS</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                <div  class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group" id="divInputFiltro">
                                        <label>Todos</label> 
                                        <div id="divInputFiltroTxt">
                                            <input  disabled="" type="text" id="txtInputFiltro" name="txtNombres" placeholder="" value="" onchange="" class="form-control">
                                        </div>

                                        </div>
                                    </div>
												  
															<div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group" id="divInputFiltro">
                                        <label>Estado Reservas</label> <span class="text-danger">(*)</span> 
                                        <div id="divCboEstado">
                                            <select class="form-control" id="cbEstado"  name="cbEstado" >
                                                <option  value="1">ACTIVO</option>
                                                <option  value="0">INACTIVO</option>
                                                                                                     
                                            </select>
                                        </div>

                                    </div>
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                </div>
                                



            </form>



</div>

									
								</div>

                     <div class="ibox-footer">
                            <div class="text-center">                                       
                                <button type="button" class="btn btn-success" onclick="javascript:validarcamposdefiltro();"><i class="fa fa-search"></i> Buscar</button> 
                               										
                            </div>

                        </div>
								
</div>
</div>
						
						<div class="col-lg-3"></div>
						</div>
	<div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins shadow-material">
                    <div class="ibox-title" >
                        <div><h5>Listado de Trabajadores</h5></div>  <div>boton</div>
                        
                    </div>
	<!--Ver Listado de Pendientes-->
<div class="ibox-content" style="padding: 0px 0px 0px 0px !important;">
<div class="table-responsive">
                <table id="tbListadoReservas" class="table table-striped table-bordered table-hover cell-border" >
                        <thead>
                                <tr>
                                        <th class="cabecera"  style="text-align: center" >N°</th>
                                        <th class="cabecera"  style="text-align: center" >USUARIO</th>
                                        <th class="cabecera"  style="text-align: center" >FECHA INICIO</th>
                                        <th class="cabecera" style="text-align: center">FECHA FIN </th>
                                        <th class="cabecera"  style="text-align: center" >FECHA REGISTRO</th>
                                        
                                        <th class="cabecera"  style="text-align: center" >ESTADO</th>
                                        <th class="cabecera"  style="text-align: center" >MONTO</th>
                                        <th class="cabecera"  style="text-align: center" >DESCRIPCION</th>
                                        
                                </tr>
                        </thead>
                        <tbody>
                        </tbody>
                </table>
        </div>
                    </div>
                </div>
            </div>
        </div>            
    </div>  
			</section>
			<%@include file="templates/footer-body.jsp" %>
	</body>
		<script src="templates/js/main.js" type="text/javascript"></script>
                <script src="../js/ListarReservaciones.js" type="text/javascript"></script>
</html>