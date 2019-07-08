
const httpRequestLista= {
 ListarReservas() {
     debugger
     let filtro=  document.getElementById("cbFiltro").value
     let estado=document.getElementById("cbEstado").value
     let json;
     
     if(filtro==0){
         json={"estado":estado,
         "filtro":filtro ,
         "fechadesde":"fechadesde",
         "txtfechahasta":"txtfechahasta"
            }
     }else{
         let fechadesde =document.getElementById("txtfechadesde").value
         let txtfechahasta =document.getElementById("txtfechahasta").value
         json={"estado":estado,
         "filtro":filtro,
         "fechadesde":fechadesde,
         "txtfechahasta":txtfechahasta
            }
     }
	$('#tbListadoReservas').DataTable().destroy();
	$("#tbListadoReservas").DataTable({
		"language": {
			"emptyTable": "No hay datos disponibles en la tabla.",
			"lengthMenu": "Mostrar: _MENU_",
			"zeroRecords": "&nbsp;&nbsp;&nbsp; No se encontraron resultados",
			"info": "&nbsp;&nbsp;&nbsp; Mostrando del _START_ al _END_ de un total de _TOTAL_ registros",
			"infoEmpty": "&nbsp;&nbsp;&nbsp; Mostrando 0 de 0 registros",
			"search": "Filtrar:",
			"processing": '<span style="width:100%;"><img src="../img/cargando.gif"  width="25%" height="25%"></span>',
			"paginate": {
				"first": "First",
				"last": "Last",
				"next": "Siguiente",
				"previous": "Anterior"
			}
		},
		dom: '<"datatable-scroll"t>r<"datatable-footers"ip>',
		"ajax": {
			type: 'POST',
			url: "../Hotel?accion=ListarReservaciones",
			data:
				{
					json: JSON.stringify(json)

				}
		},
		"order": [],
		"responsive": true,
		"serverSide": true,
		"iDisplayLength": 50,
		"bSort": false,
		"bFilter": false,
		"processing": true,
		"aaSorting": [],
		"ordering": false,
		"bLengthChange": false,
		"bInfo": true,
		"paging": true,
		"columnDefs": [
			{targets: 0, orderable: false, width: "3%", className: "text-center"},
			{targets: 1, orderable: false, width: "10%", className: "text-center"},
			{targets: 2, orderable: false, width: "8%", className: "text-center"},
			{targets: 3, orderable: false, width: "7%", className: "text-left"},
			{targets:4, orderable: false, width: "9%", className: "text-center"},
                        {targets: 5, orderable: false, width: "8%", className: "text-left"},
			{targets:6, orderable: false, width: "9%", className: "text-center"},
                        {targets: 7, orderable: false, width: "17%", className: "text-left"}
		],
		"columns": [
			{"data": "9", "render": (data, type, row) => {
					
					if (data === null) {
						return "sin fecha"
					} else {
						return data;
					}
				}
			},{"data": "2", "render": (data, type, row) => {
					
					if (data === null) {
						return "sin USUARIO"
					} else {
						return data;
					}
				}
			}
			, {"data": "3", "render": (data, type, row) => {
					if (data === null) {
						return "sin Fecha Inicio"
					} else {
						return data;
					}
				}
			},
			{"data": "4", "render": (data, type, row) => {
					if (data === null) {
						return "sin Fecha Fin"
					} else {
						return data;
					}
				}
			},
			{"data": "5", "render": (data, type, row) => {
					if (data === null) {
						return "sin Fecha Emision"
					} else {
						return data;
					}
				}
			},
			{"data": "6", "render": (data, type, row) => {
					if (data == 1) {
						return '<span class="label label-success">ACTIVO</span>'
					} else {
						return '<span class="label label-danger"> INACTIVO</span>';
					}
				}
			},{"data": "7", "render": (data, type, row) => {
					if (data === null) {
						return "sin Monto"
					} else {
						return data;
					}
				}
			},{"data": "8", "render": (data, type, row) => {
					if (data === null) {
						return "sin Descripcion"
					} else {
						return data;
					}
				}
			}
		],
		fnDrawCallback: () => {
//   loader.terminarLoader()
		}
	})
	$('#tbListadoReservas').on('draw.dt', function () {
		$('[data-toggle="tooltip"]').tooltip();
	});
},cambiadorvalidador() {
		
		$("#cbFiltro").change(() => {
			let filtro = document.getElementById("cbFiltro").value
			

			 if (filtro === "3") {
				$("#divInputFiltro").html("<label>N° Documento </label> <span class=\"text-danger\">(*)</span>\n\
                                    <div id=\"divInputFiltroTxt\">\n\
                                        <input type=\"text\" id=\"txtInputFiltro\" name=\"txtInputFiltro\" placeholder=\"\"  minlength=\"8\"  maxlength=\"8\" onkeypress=\"solonumero()\"   value=\"\" class=\"form-control\" >\n\
                                    </div>");
			} else if (filtro === "4") {
				$("#divInputFiltro").html(`<div class="col-xs-6">
<div class="form-group">
<div class="input-group">
<label>Fecha Inicio </label> <span class="text-danger">(*)</span>
<input type="text" class="form-control datepicker" id="txtfechadesde" placeholder="Fecha de inicio" aria-label="Use the arrow keys to pick a date">
</div>
</div>
</div>
                <div class="col-xs-6">
<div class="form-group">
<div class="input-group">
                
<label>Fecha Fin </label> <span class="text-danger">(*)</span>
<input type="text" class="form-control datepicker" id="txtfechahasta" placeholder="Fecha de inicio" aria-label="Use the arrow keys to pick a date">
</div>
</div>
</div>

`);
				let f = new Date();
				let fechaactual = (f.getFullYear()+ "/0" + (f.getMonth() + 1) + "/" + f.getDate())
				document.getElementById("txtfechadesde").value = fechaactual
				document.getElementById("txtfechahasta").value = fechaactual
				cargarformatofecha()
			} else {
				$("#divInputFiltro").html("<label>Todos</label> \n\
                                    <div id=\"divInputFiltroTxt\">\n\
                                        <input type=\"text\" id=\"txtInputFiltro\" name=\"txtNumDocumento\" placeholder=\"\"   value=\"\" class=\"form-control\">\n\
                                    </div>");
				document.getElementById("txtInputFiltro").disabled = true;


			}

//             let txtDni = document.getElementById("cbFiltro").value
//     }       alert(txtDni)

		})
	}
}

function cargarformatofecha() {
	 var $datepicker = $('.datepicker').pikaday({
        firstDay: 1,
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000,2020]
    });
    // chain a few methods for the first datepicker, jQuery style!
    $datepicker.pikaday('show').pikaday('Month');
}



function validarcamposdefiltro() {
debugger
	var validator = $("#formulariolistado").validate({
		rules: {
			txtInputFiltro: {
				required: true
			}
		}, messages: {
			minlength: $.validator.format("Please, at least {0} characters are necessary")
		}
	});
	var estado = validator.form();
	if (estado) {
		if ($('#txtfechadesde').length) {
			var fechaInicial = document.getElementById("txtfechadesde").value;
			var fechaFinal = document.getElementById("txtfechahasta").value;
			if (validate_fechaMayorQue(fechaInicial, fechaFinal))
			{
				httpRequestLista.ListarReservas();
			} else {
				alert("la fecha no es la indicada")
			}
		} else {
			httpRequestLista.ListarReservas();
		}}
}

function validate_fechaMayorQue(fechaInicial, fechaFinal)
{
    debugger
	valuesStart = fechaInicial.split("-");
	valuesEnd = fechaFinal.split("-");
	// Verificamos que la fecha no sea posterior a la actual
	var dateStart = new Date(valuesStart[2], (valuesStart[1] - 1), valuesStart[0]);
	var dateEnd = new Date(valuesEnd[2], (valuesEnd[1] - 1), valuesEnd[0]);
	if (dateStart > dateEnd)
	{
		return 0;
	}
	return 1;
}

init = () => {
	httpRequestLista.ListarReservas()
        httpRequestLista.cambiadorvalidador()
}
init()




