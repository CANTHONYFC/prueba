var codigo;
const httpRequestGrados = {
	ListarGrados() {
		$.ajax({
			type: 'POST',
			url: "../Hotel?accion=CargarCuartos",
			dataType: 'JSON',
			beforeSend: function () {
			},
			success: function (data) {

					var td
				for(var i=0 ; i<data.data.length;i++){
                                    
                                    let etiqueta=""
                                    let estilo=""
if(data.data[i][5]==0){
    estilo=`style="background: #2c3133;"`   
} else
{etiqueta="btn-identificado"}                                   
                                    
                                    
td+=`<div class="col-md-3 col-sm-4 col-xs-12">
<div class="card type--profile m-10" ${estilo}>
<header class="card-heading card-blue">
<img src="${data.data[i][2]}" alt="" class="img-circle profile-mini">
<ul class="card-actions icons right-top">
<li class="dropdown">
<a href="javascript:void(0)" data-toggle="dropdown">
    <i class="zmdi zmdi-more-vert"></i>
</a>
<ul class="dropdown-menu dropdown-menu-right btn-info">
    <li>
            <a href="javascript:void(0)"><i class="zmdi zmdi-edit"></i> <span class="m-l-10">Edit Contact</span></a>
    </li>
    <li>
            <a href="javascript:void(0)"><i class="zmdi zmdi-block"></i> <span class="m-l-10">Mute Contact</span></a>
    </li>
    <li>
            <a href="javascript:void(0)"><i class="zmdi zmdi-delete"></i> <span class="m-l-10">Remove Contact</span></a>
            </li>
    </ul>
</li>
</ul>
</header>
<div class="card-body">
<h3 class="name">${data.data[i][5]} DISPONIBLE</h3>
<span class="title">${data.data[i][3]}</span>
<button type="button" class="btn btn-blue btn-round btn-sm ${etiqueta}" data-cant="${data.data[i][5]}" data-indice="${data.data[i][1]}">REALIZAR RESERVA</button>
</div>
<div class="card-footer border-top">
<ul class="card-actions left-bottom">

</ul>
<ul class="card-actions icons right-bottom">
<li>
    <a href="javascript:void(0)">
            <i class="zmdi zmdi-pin"></i>
    </a>
</li>
<li>
    <a href="javascript:void(0)">
            <i class="zmdi zmdi-notifications"></i>
    </a>
</li>
</ul>


</div>
</div>
</div>`
					}
				$("#cuartos").html(td);
				$('.btn-identificado').click((e) => {
					mostrarBootbox($(e.currentTarget).data('indice'),$(e.currentTarget).data('cant'))
					
				})
			}, complete() {
			}
		})
	}
}

init = () => {
	httpRequestGrados.ListarGrados();
}
init()

function mostrarBootbox (codigocuarto,cant){
    
    let json={
        "codigo":codigocuarto}
	codigo=codigocuarto
	var listar = bootbox.dialog({
		headerClass: "blue-bg",
		title: "Generar Reserva",
		tabindex: null,
		size: "large",
		message: `
<div id="contgenerarcodigo">
<div id="content" class="container">
<div class="row">
<div class="col-xs-12" style="width:100%") {

} ">
<div class="card" id="contact_us_wrapper">
<div class="card-body">
<div class="row">
<div class="col-sm-6">
<header>
<h2 class="card-title m-t-5"></h2>
                <p>
Contamos con una atencion de calidad
</br>
<div id="cantBaños" ></div>
        </br>
<div id="espacio"></div>        
</br>
<div id="precioDia"></div>        
        
</p>
</header>
<form>
<div class="form-group label-floating is-empty">
<label class="control-label">Selecione el tiempo de estadia</label>
<div class="col-xs-6">
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
<input type="text" class="form-control datepicker" id="Inicio" 
placeholder="Fecha de inicio" aria-label="Use the arrow keys
 to pick a date">
</div>
</div>
</div>
<div class="col-xs-6">
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
<input type="text" class="form-control datepicker" id="Fin"
 placeholder="Fecha fin" aria-label="Use the arrow keys to pick a date">
</div>
</div>
</div>
</div>
</br></br>
<div class="form-group label-floating is-empty">
    <label class="control-label">cantidad de habitaciones:</label>
    <input min="1" pattern="^[0-9]+"  max="${cant}" id="cantidad" 
type="number" class="form-control">
</div>
<div class="form-group text-right">

</div>
</form>
</div>
<div class="col-sm-6" id="info_right">
<div id="contact_info">
<header class="m-b-50">
    <h2 class="card-title">Contact Information</h2>
</header>
<ul class="contact-list">
    <li>
            <i class="zmdi zmdi-pin"></i> 1600 Amphitheatre Parkway Mountain View, CA 10486
    </li>
    <li>
            <i class="zmdi zmdi-phone"></i> Phone: +1 888-555-0000
    </li>
    <li>
            <i class="zmdi zmdi-email"></i>
            <a href="mailto:contact@materiallab.pro">contact@materiallab.pro</a>
    </li>
</ul>
<ul class="social">
    <li>
            <button class="btn btn-fab btn-fab-sm btn-twitter"><i class="zmdi zmdi-twitter"></i></button>
    </li>
    <li>
            <button class="btn btn-fab btn-fab-sm btn-facebook"><i class="zmdi zmdi-facebook"></i></button>
    </li>
    <li>
            <button class="btn btn-fab btn-fab-sm btn-dribbble"><i class="zmdi zmdi-dribbble"></i></button>
    </li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
								
`,
		buttons: {
			grabar: {
				label: "<i  class='fa fa-check-square-o'></i>&nbsp;&nbspGenerar",
				className: "btn btn-m-m btn-success",
				callback: function () {
					GenerarReserva(codigo)
                                        alert("Generado Exitosamente")
                                        httpRequestGrados.ListarGrados();
                                        
				}
			},
			cancelar: {
				label: "<i class='ace-icon fa fa-times bigger-110'></i>&nbsp; cancelar",
				className: "btn btn-m-m btn-danger",
				callback: function () {
				}
			}
		}
	});
		listar.init(function () {
		$.ajax({
			type: 'POST',
			data: {
				json: JSON.stringify(json)

			},
			url: "../Hotel?accion=listarInformacionH",
			dataType: 'JSON',
			success: function (data) {
				console.log(data)
				var td = ""
				if (data == "") {
					td = `<td>no contiene registros</td>`
				} 
				else {
$('#cantBaños').html(`Baños:<span>${data.data[0][3]} </span>`)
$('#espacio').html(`Espacio:<span>${data.data[0][1]} </span>`)
$('#precioDia').html(`Precio Dia:$/.<span>${data.data[0][2]} </span>`)
					$('#tbDetalleProg').html(td)
				}


			}});
	});
cargarformatofecha()
}





function cargarformatofecha() {
	 var $datepicker = $('.datepicker').pikaday({
        firstDay: 1,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000,2020]
    });
    // chain a few methods for the first datepicker, jQuery style!
    $datepicker.pikaday('show').pikaday('Month');
}
      
      function GenerarReserva(codigo){
          debugger
          let FechaInicio=document.getElementById("Inicio").value
          let FechaFin=document.getElementById("Fin").value
          let cantidadDias=document.getElementById("cantidad").value
          let json={
              "FechaInicio":FechaInicio,
              "FechaFin":FechaFin,
              "CantidadDias":cantidadDias,
              "codigo":codigo
          }
          $.ajax({
			type: 'POST',
			data: {
				json: JSON.stringify(json)
			},
			url: "../Hotel?accion=RegistrarReserva",
			dataType: 'JSON',
			success: function (data) {
				console.log(data)
			}});
          
          
          
      }