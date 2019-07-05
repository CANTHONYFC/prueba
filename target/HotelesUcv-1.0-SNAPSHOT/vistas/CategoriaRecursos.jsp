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
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<%@include file="templates/header.jsp" %>
		<!--links-->
		<link rel="stylesheet" href="assets/css/app.bundle.css">
	<link rel="stylesheet" href="../plantilla/assets/css/success.css">
		
		<style type="text/css">
			.popover {
white-space: pre-line;   
  min-width: 100px;
	max-height: 100%;
	position: relative;

}
.body{
 min-width: 100px;
	max-height: 100%;

}
.iframeresponsive{
					width:100%;
					height: 755px;
}
@media (max-width: 1024px)and (orientation:  portrait) {
 .iframeresponsive{
					width:100%;
					height: 1200px;
}
}
@media (max-width: 1024px) and (orientation:  portrait) {
 .iframeresponsive{
					width:100%;
					height: 1200px;
}
}

@media (max-width: 1366px) and (orientation:  portrait) {
 .iframeresponsive{
					width:100%;
					height: 1200px;
}
}


.responsiveispring{
					width: 100%;
					height: 750px;
}


@media (max-width: 1366px) and (max-width:1366px) and (orientation: landscape) {
 .iframeresponsive{
					width:100%;
					height: 1250px;
}
}



@media (max-width: 1024px) and (max-height: 768px)
and (orientation: landscape) {
 .responsiveispring{
					
					height: 750px;
}

}

@media (max-width: 1024px) and (max-height: 1366px)
and (orientation: portrait) {
 .responsiveispring{
					
					height:800px;
}

}
@media (max-width: 703px) and (max-height: 952px)
and (orientation: portrait) {
 .responsiveispring{
					
					height: 750px;
}

}


@media (max-width: 360px) and (max-height: 640px)
and (orientation: portrait) {
 .responsiveispring{
					
					height: 500px;
}



@media (max-width: 375px) and (max-height: 667px)
and (orientation: portrait) {
 .responsiveispring{
					
					height: 400px;
}






.sk-spinner-rotating-plane.sk-spinner {
    width: 30px;
    height: 30px;
    background-color: #1ab394;
    margin: 0 auto;
    -webkit-animation: sk-rotatePlane 1.2s infinite ease-in-out;
    animation: sk-rotatePlane 1.2s infinite ease-in-out;
}
.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url('images/pageLoader.gif') 50% 50% no-repeat rgb(249,249,249);
    opacity: .8;
}

.responsiveContent {
  position: relative;
  height: 0;
  overflow: hidden;
  padding-bottom: 56.2%;
  margin-bottom: 20px;
}

/*.popover-content{

  max-width: 100% ;
	max-height: 100%;
}*/
.popover fade right in
{
	top :0px
}		</style>
	</head>
	<body>
		<%@include file="templates/header-body.jsp" %>
		<section id="content_outer_wrapper">
			<div id="content_wrapper" class="simple">
				<div id="header_wrapper" class="header-sm">
					<div class="container-fluid">
						<div class="row">

						</div>
					</div>
				</div>		
				<div id="content" class="container-fluid" style="margin-top: 2px">
					<div style="margin-left: 1%;" id="regresar"></div>
					<div class="content-body">
						<div class="row">
							<div id="ContenedorDeRecursos" style="width: 100%;height: 100%">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<%@include file="templates/footer-body.jsp" %>

		<script src="../js/ListarCategoriaRecursos.js"></script>	
		<script src="../js/CargarRegreso.js"></script>
	
	</body>	
<!--	<script>
window.onerror = function (msg, url, lineNo, columnNo, error) {
  var string = msg.toLowerCase();
  var substring = "script error";
  if (string.indexOf(substring) > -1){
    alert('Script Error: See Browser Console for Detail');
  } else {
    var message = [
      'Message: ' + msg,
      'URL: ' + url,
      'Line: ' + lineNo,
      'Column: ' + columnNo,
      'Error object: ' + JSON.stringify(error)
    ].join(' - ');
  }
  return true;
};
</script>-->
</html>

