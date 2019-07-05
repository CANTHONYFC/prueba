const httpRequestmenu = {
	//aqui listamos un menu lateral 
	ListarGrados() {
		GenerarDataSidebar()
	}}
init = () => {
	httpRequestmenu.ListarGrados();
}
init()

function GenerarDataSidebar(){

	$.ajax({
			type: 'POST',
			url: "../UsuarioValidacion?accion=InfoUsuario",
			dataType: 'JSON',
			success: function (data) {
				debugger
	$('.ta-avatar').attr('avatar', data.Apellidos.charAt(0));
  var td=`
	<a href="javascript:void(0)" class="info" data-profile="open-menu">
	<span>${data.Apellidos}</span></a>`
	$("#nombreUsuario").html(td)							
		generarLetraCircular()
}})}


function cargando() {
		document.getElementById("blockui").style.display="block"
}
function cerrar_cargando() {
	document.getElementById("blockui").style.display="none"
}


