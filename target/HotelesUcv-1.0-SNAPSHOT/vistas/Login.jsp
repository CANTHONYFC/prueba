<%-- 
    Document   : Login2
    Created on : 22/04/2019, 07:47:10 PM
    Author     : sistem16user
--%>

<%@page import="Hotel.utilities.GeneralMethods"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession session_actual = request.getSession(true);
			
if (session_actual.getAttribute("dni")!=null  ) { 
response.sendRedirect ("../vistas/menu.jsp");
} else{
 
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <link href="../plantilla/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../plantilla/assets/css/animate.css" rel="stylesheet">
    <link href="../plantilla/assets/css/style.css" rel="stylesheet">
		<link href="../plantilla/assets/css/plugins/chosen/chosen.css" rel="stylesheet">
		<link href="../css/general.css" rel="stylesheet" type="text/css"/>
	<link rel="icon" type="image/png" href="./../drawable/icono_saco.png" />
		<title>Hotel Libertador</title>
	</head>
	
	 <style>
      /*@import url('https://fonts.googleapis.com/css?family=Dosis:300,400,700,800');*/

      /** Styles for the 403 Page **/

	

.sk-spinner-rotating-plane.sk-spinner {
    width: 30px;
    height: 30px;
    background-color: #1ab394;
    margin: 0 auto;
    -webkit-animation: sk-rotatePlane 1.2s infinite ease-in-out;
    animation: sk-rotatePlane 1.2s infinite ease-in-out;
}
.center-spinner {
    position: relative;
    top: 50%;
    transform: translateY(-50%);
}

      body {
        background: #24344C !important;
      }

      .particle-error,
      .permission_denied,
      #particles-js {
        width: 100%;
        height: 100%;
        margin: 0px !important;
      }
      #particles-js {
        position: fixed !important;
        /* opacity: 0.23; */
      }

      .permission_denied {
        background: #24344C !important;
      }

      .permission_denied a {
        text-decoration: none;
      }

      .denied__wrapper {
        max-width: 390px;
        width: 100%;
        height: 390px;
        display: block;
        margin: 0 auto;
        position: relative;
        margin-top: 8vh;
      }

      .permission_denied h1 {
        text-align:center;
        color: #fff;
        font-family: 'Dosis', sans-serif;
        font-size: 100px;
        margin-bottom: 0px;
        font-weight: 800;
      }

      .permission_denied h3 {
        text-align: center;
        color: #fff;
        font-size:19px;
        line-height: 23px;
        max-width: 330px;
        margin: 0px auto 30px auto;
        font-family: 'Dosis', sans-serif;
        font-weight: 400;
      }

      .permission_denied h3 span {
        position: relative;
        width: 65px;
        display:inline-block;
      }

      .permission_denied h3 span:after {
        content: '';
        border-bottom: 3px solid #FFBB39;
        position: absolute;
        left: 0;
        top: 43%;
        width: 100%;
      }

      .denied__link {
        background: none;
        color: #fff;
        padding: 12px 0px 10px 0px;
        border: 1px solid #fff;;
        outline: none;
        border-radius: 7px;
        width: 150px;
        font-size: 15px;
        text-align: center;
        margin: 0 auto;
        vertical-align: middle;
        display: block;
        margin-bottom: 40px;
        margin-top: 25px;
        font-family: 'Dosis', sans-serif;
        font-weight: 400;
      }

      .denied__link:hover {
        color: #FFBB39;
        border-color: #FFBB39;
        cursor: pointer;
        opacity: 1.0;
      }

      .permission_denied .stars {
        animation: sparkle 1.6s infinite ease-in-out alternate;
      }

      @keyframes sparkle {
        0% {
          opacity: 1.0;
        }
        100% {
          opacity: 0.3;
        }
      }

      #astronaut {
        width: 43px;
        position: absolute;
        right: 20px;
        top: 210px;
        animation: spin 4.5s infinite linear;
      }

      @keyframes spin {
        0% {
          transform: rotateZ(0deg);
        }
        100% {
          transform: rotateZ(360deg);
        }
      }

      @media (max-width: 600px) {
        .permission_denied h1 {
          font-size: 75px;
        }
        .permission_denied h3 {
          font-size:16px;
          width: 200px;
          margin: 0 auto;
          line-height: 23px;
        }
        .permission_denied h3 span {
          width: 60px;
        }
        #astronaut {
          width: 35px;
          right: 40px;
          top: 170px;
        }
      }

      .saturn,
      .saturn-2,
      .hover {
        animation: hover 2s infinite ease-in-out alternate;
      }
			#ventana-flotante #contenedor {
padding: 25px 10px 10px 10px;
}

      @keyframes hover {
        0% {
          transform: translateY(3px);
        }
        100% {
          transform: translateY(-3px);
        }
      }
			
@media (max-width: 1000px)
#ventana-flotante {
    width: 350px;
    height: 320px;
    background: #f1f1f1;
    position: fixed;
    top: 200px;
    left: 60%;
    margin-left: -240px;
    border: 0px solid #eee;
    box-shadow: 0 5px 25px rgba(0,0,0,.1);
    z-index: 1;
}
.oculto {
    -webkit-transition: 1s;
    -moz-transition: 1s;
    -o-transition: 1s;
    -ms-transition: 1s;
    opacity: 0;
    -ms-opacity: 0;
    -moz-opacity: 0;
    visibility: hidden;
}
			#ventana-flotante .cerrar {
    float: right;
    border-bottom: 0px solid #bbb;
		border-top: 0px;
    border-left: 1px solid #bbb;
    color: #999;
    background: #EFF7F4;
    line-height: 14px;
    text-decoration: none;
    padding: 0px 14px;
    font-family: Arial;
    border-radius: 0 0 0 5px;
    box-shadow: -1px 1px white;
    font-size: 18px;
    -webkit-transition: .3s;
    -moz-transition: .3s;
    -o-transition: .3s;
    -ms-transition: .3s;
}
.content-spinner {
    position: fixed;
    top: 0px;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.73);
    z-index: 99999;
}
			
			#ventana-flotante #contenedor .contenido {
padding: 0px;
box-shadow: inset 1px 1px white;
background: #f8f8f8;  /* Fondo del mensaje */
border: 1px solid #ccc;  /* Borde del mensaje */
font-size: 20px;  /* Tama�o del texto del mensaje */
color: #555;  /* Color del texto del mensaje */
text-shadow: 1px 1px white;
margin: 0 auto;
border-radius: 4px;

border-right: 0px;

}
			
    </style>
	<body>
<div id="blockui" class="spinner content-spinner" style="display: none;">
      <div class="sk-spinner sk-spinner-rotating-plane center-spinner"></div>
    </div>
    <div id="particles-js"></div>

    <div class="middle-box text-center loginscreen animated fadeInDown" style="width:100%" >      
      <div>  
				 
        <h1 class="white" style="font-family: 'Dosis', sans-serif; font-size: 40px; font-weight: 400;">Hotel Libertador</h1>
         <div>
					 <image Style="align:center;width: 100%;height: 100%" src="../IMG/Login.png"></image>
				 
				 </div>   
				<div class="form-group">
						<input    autofocus="true" minlength="8" maxlength="8"
											style="background-color:white ; border: white 7px solid; padding: 13px 12px;" class="form-control input-login user-name usuario-nombre" placeholder=" USUARIO " value="" required="true"
														type="text" id="txt_usuario" onkeypress="solonumero()" >
           
                       </div>
                     <div class="form-group">
                    <input  type="password" class="form-control input-login user-password usuario-password" placeholder=" CONTRASEÑA" value="" required="true"
														 id="txt_contrasena" style="background-color:white; border: white 7px solid;  padding: 13px 12px;"  onkeypress="solonumero()" >
                        </div>
								<div class="wrap-btn-login-enter">
											
										<button id="ingresar" class="btn btn btn-block red-so-bg " style="color:white;background: #3CB370;border:#3CB370" data-toggle="modal" data-target="#basic_modal">Ingresar</button>
                    </div>
<!--                </form>-->
            </fieldset>
        <p class="m-t white" style="font-family: 'Dosis', sans-serif; font-size: 15px;"> 
          <small style="font-size: 15px;">UCV - TIC © 2019</small>
        </p>
      </div>
			
			<div  id="ventana-flotante">
  </div>
			
			
    </div>
			
		
		
		
		
		
		
		
		
		
	<div class="modal fade" id="basic_modal" tabindex="-1" role="dialog" aria-labelledby="basic_modal" style="display: none;">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							
							<h4 class="modal-title" id="myModalLabel-2">Cambiar Contraseña</h4>
							<ul class="card-actions icons right-top">
								
								<a href="javascript:void(0)" data-dismiss="modal" class="text-white" aria-label="Close">
									<i class="zmdi zmdi-close"></i>
								</a>
							
						</ul>
					</div>
					<div class="modal-body">
						
						
						<p>Contraseña</p>
						<input type="text" class="form-control" id="password" placeholder="Contraseña" required="true">
						<div id="validacion"></div>
						<p>Confirmar Contraseña</p>
						<input type="text" class="form-control" id="confirmpassword" placeholder="Canbiar Contraseña" required="true">
					
						</div>
						<div class="modal-footer">
							<button type="button" id="cerrarmodal" class="btn btn-default btn-flat" data-dismiss="modal">Cancel<div class="ripple-container">
									<div class="ripple ripple-on ripple-out"
									style="left: 59.2969px; top: 18.6563px; background-color: rgb(104, 134, 150);
									transform: scale(14);"></div></div></button>
							<button type="button" id="confirmarCambio" class="btn btn-primary">Ok</button>
						</div>
					</div>
					<!-- modal-content -->
				</div>
				<!-- modal-dialog -->
			</div>
		
		
		
		
		
	</body>
	
	 <script src="../plantilla/assets/js/jquery-2.1.1.js"></script>
     <!--Select2--> 
    <script src="../plantilla/assets/js/plugins/select2/select2.full.min.js"></script>
     <!--Date picker--> 
    <script src="../plantilla/assets/js/plugins/datapicker/bootstrap-datepicker.js"></script>
     <!--Datatable--> 
    <script src="../plantilla/assets/js/plugins/dataTables/datatables.min.js"></script>
    
    <script src="../js/general.js" type="text/javascript"></script>
    <script src="../js/pages/index.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src='https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js'></script>
 <script>
      var particles = {
        "particles": {
          "number": {
            "value": 160,
            "density": {
              "enable": true,
              "value_area": 800
            }
          },
          "color": {
            "value": "#ffffff"
          },
          "shape": {
            "type": "circle",
            "stroke": {
              "width": 0,
              "color": "#000000"
            },
            "polygon": {
              "nb_sides": 5
            },
            "image": {
              "src": "img/github.svg",
              "width": 100,
              "height": 100
            }
          },
          "opacity": {
            "value": 1,
            "random": true,
            "anim": {
              "enable": true,
              "speed": 1,
              "opacity_min": 0,
              "sync": false
            }
          },
          "size": {
            "value": 3,
            "random": true,
            "anim": {
              "enable": false,
              "speed": 4,
              "size_min": 0.3,
              "sync": false
            }
          },
          "line_linked": {
            "enable": false,
            "distance": 150,
            "color": "#ffffff",
            "opacity": 0.4,
            "width": 1
          },
          "move": {
            "enable": true,
            "speed": 0.17,
            "direction": "none",
            "random": true,
            "straight": false,
            "out_mode": "out",
            "bounce": false,
            "attract": {
              "enable": false,
              "rotateX": 600,
              "rotateY": 600
            }
          }
        },
        "interactivity": {
          "detect_on": "canvas",
          "events": {
            "onhover": {
              "enable": false,
              "mode": "bubble"
            },
            "onclick": {
              "enable": false,
              "mode": "repulse"
            },
            "resize": false
          },
          "modes": {
            "grab": {
              "distance": 400,
              "line_linked": {
                "opacity": 1
              }
            },
            "bubble": {
              "distance": 250,
              "size": 0,
              "duration": 2,
              "opacity": 0,
              "speed": 3
            },
            "repulse": {
              "distance": 400,
              "duration": 0.4
            },
            "push": {
              "particles_nb": 4
            },
            "remove": {
              "particles_nb": 2
            }
          }
        },
        "retina_detect": true
      };
      particlesJS('particles-js', particles, function () {
        console.log('callback - particles.js config loaded');
      });
    </script>
		<script type="text/javascript">if(history.forward(1)){
history.replace(history.forward(1));
}
			</script>
<script   src="templates/js/jquery.js"></script>
<script src="../js/validar.js?<%=GeneralMethods.getDateInUnix()%>"></script>
</html>
