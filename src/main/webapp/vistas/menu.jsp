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
			<div id="content_wrapper" class="simple">
				<div id="header_wrapper"style="margin-top: -10px;
								 margin-right: -15px;margin-left: 1px;background: #195ea1;z-index:2;"  >
					
						<div class="row" style="margin-top: -10px;
								 margin-right: -1px;width: 100%;margin-left: 1px;background: #195ea1;position: fixed;z-index:2 ;margin-bottom: 10px;">
							<div id="contenedorDeRutas" style="width: 100%">
						</div>
				</div>		</div>
				<div id="content" class="container-fluid" style="margin-top: 2px">
					<div style="margin-left: 1%;" id="regresar"></div>
					<div class="content-body">
						<div class="row">
							<div id="ContenedorDeRecursos"class="textos" >
							</div>
						</div>
					</div>
				</div>
			
			</section>

			<%@include file="templates/footer-body.jsp" %>
	</body>
		<script src="templates/js/main.js" type="text/javascript"></script>
<!--			<script>
				$(document).ready(function() {
  // only small screens
  if($(window).width() <= 600){
 $(document).on('swiperight', function(e) {
      e.preventDefault();
      $('#contenidouri').animate({
        left: '0'
      });
    });
 $(document).on('swipeleft',function(e){
      e.preventDefault();
      $('#contenidouri').animate({
        left: '-100%'
      });
    });
  }
});
</script>-->
</html>
