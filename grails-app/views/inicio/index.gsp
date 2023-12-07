<%@ page contentType="text/html;charset=UTF-8" %>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Sistema Tutor</title>
    <meta name="layout" content="login"/>
    <meta name="layout" content="main"/>

    <style type="text/css">
    @page {
        size: 8.5in 11in;  /* width height */
        margin: 0.25in;
    }


    .titl {
        font-family: 'open sans condensed';
        font-weight: bold;
        text-shadow: -2px 2px 1px rgba(0, 0, 0, 0.25);
        color: #0070B0;
        margin-top: 20px;
    }

    body {
        background : #e5e4e7;
    }

    section {
        padding-top: 4rem;
        padding-bottom: 5rem;
        background-color: #f1f4fa;
    }
    .wrap {
        display: flex;
        background: white;
        padding: 0.5rem 1rem 1rem 1rem;
        border-radius: 0.5rem;
        box-shadow: 7px 7px 30px -5px rgba(0,0,0,0.1);
        margin-bottom: 1rem;
        width: 430px; height: 86px;
        line-height: normal;
    }

    .wrap:hover {
        background: linear-gradient(135deg,#6394ff 0%,#0a193b 100%);
        color: white;
    }

    .mbr-section-title3 {
        text-align: left;
    }
    h2 {
        margin-top: 0.5rem;
        margin-bottom: 0.5rem;
    }
    .display-5 {
        font-family: 'Source Sans Pro',sans-serif;
        font-size: 1.4rem;
    }
    .mbr-bold {
        font-weight: 700;
    }

    p {
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
        line-height: 25px;
    }
    .display-6 {
        font-family: 'Source Sans Pro',sans-serif;
        font-size: 0.8rem;
        line-height: normal;
    }

    .bordeimagen {
        border: 0.5rem;
        border-radius: 10px;
    }

    </style>
</head>

<body>
<div class="dialog">
    <div style="text-align: center;margin-bottom: 20px"><h2 class="titl">
        <p class="text-info">Sistema de Programación Académica y Tutorías</p>
    </h2>
    </div>

    <div class="row mbr-justify-content-center" style="display: flex; justify-content: center">

    <a href= "${createLink(controller:'facultad', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-5 mbr-col-md-5">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/facultad.png" title="Facultades"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Facultades</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Facultades de la Universidad</p>
                </div>
            </div>
        </div>
    </a>

    <a href= "${createLink(controller:'asignatura', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-5 mbr-col-md-5">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/asignaturas.jpg" title="Asignaturas"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Asignaturas</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Asignaturas por carrera</p>
                </div>
            </div>
        </div>
    </a>

    <a href= "${createLink(controller:'profesor', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/profesor.jpeg" title="Profesores"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Profesores</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Profesores</p>
                </div>
            </div>
        </div>
    </a>
    <a href= "${createLink(controller:'tipoProfesor', action: 'list')}" style="text-decoration: none">
            <div class="col-lg-6 mbr-col-md-10">
                <div class="wrap">
                    <div style="width: 200px; height: 120px">
                        <asset:image src="apli/tipoprofesor.jpeg" title="Carreras"  width="60%" height="60%" class="bordeimagen"/>
                    </div>
                    <div style="width: 200px; height: 120px">
                        <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Tipo Profesor</span></h2>
                        <p class="mbr-fonts-style text1 mbr-text display-6">Caracteristicas del Profesor</p>
                    </div>
                </div>
            </div>
        </a>

    <a href= "${createLink(controller:'estudiante', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/estudiantes.jpeg" title="Estudiantes"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Estudiantes</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Estudiantes</p>
                </div>
            </div>
        </div>
    </a>
    <a href= "${createLink(controller:'nivel', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/niveles.png" title="Niveles"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Nivel</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Niveles de la carrera</p>
                </div>
            </div>
        </div>
    </a>
    <a href= "${createLink(controller:'tipoPago', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/educacion.png" title="Planificación académica"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Planificación</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Creación de cursos y paralelos</p>
                </div>
            </div>
        </div>
    </a>
     <a href= "${createLink(controller:'tipoActividad', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/tipoActividad.jpg" title="TipoActividad"  width="60%" height="60%" class="bordeimagen" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Tipo Actividad</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Tipo de actividades</p>
                </div>
            </div>
        </div>
    </a>
    <a href= "${createLink(controller:'matricula', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/educacion.png" title="Matrículas"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Matrículas</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Matrículas</p>
                </div>
            </div>
        </div>
    </a>

    <a href= "${createLink(controller:'reportes', action: 'list')}" style="text-decoration: none">
        <div class="col-lg-6 mbr-col-md-10">
            <div class="wrap">
                <div style="width: 200px; height: 120px">
                    <asset:image src="apli/educacion.png" title="Reportes"  width="60%" height="60%" class="bordeimagen"/>
                </div>
                <div style="width: 200px; height: 120px">
                    <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Reportes</span></h2>
                    <p class="mbr-fonts-style text1 mbr-text display-6">Reportes</p>
                </div>
            </div>
        </div>
    </a>

        <a href= "${createLink(controller:'carrera', action: 'list')}" style="text-decoration: none">
            <div class="col-lg-6 mbr-col-md-10">
                <div class="wrap">
                    <div style="width: 200px; height: 120px">
                        <asset:image src="apli/carrera.png" title="Carreras"  width="60%" height="60%" class="bordeimagen"/>
                    </div>
                    <div style="width: 200px; height: 120px">
                        <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Carreras</span></h2>
                        <p class="mbr-fonts-style text1 mbr-text display-6">Carreras dentro de cada facultad</p>
                    </div>
                </div>
            </div>
        </a>

        <a href= "${createLink(controller:'dias', action: 'list')}" style="text-decoration: none">
            <div class="col-lg-6 mbr-col-md-10">
                <div class="wrap">
                    <div style="width: 200px; height: 120px">
                        <asset:image src="apli/dias.jpg" title="Dias"  width="60%" height="60%" class="bordeimagen"/>
                    </div>
                    <div style="width: 200px; height: 120px">
                        <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Días</span></h2>
                        <p class="mbr-fonts-style text1 mbr-text display-6">Días de la semana</p>
                    </div>
                </div>
            </div>
        </a>

        <a href= "${createLink(controller:'login', action: 'logout')}" style="text-decoration: none">
            <div class="col-lg-6 mbr-col-md-10">
                <div class="wrap">
                    <div style="width: 200px; height: 120px">
                        <asset:image src="apli/salir.png" title="Salir del sistema"  width="60%" height="60%" class="bordeimagen"/>
                    </div>
                    <div style="width: 200px; height: 120px">
                        <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><span>Salir del sistema</span></h2>
                        <p class="mbr-fonts-style text1 mbr-text display-6">Salir del sistema</p>
                    </div>
                </div>
            </div>
        </a>


</div>
<script type="text/javascript">
    $(".fuera").hover(function () {
        var d = $(this).find(".imagen,.imagen2")
        d.width(d.width() + 10)
        d.height(d.height() + 10)

    }, function () {
        var d = $(this).find(".imagen, .imagen2")
        d.width(d.width() - 10)
        d.height(d.height() - 10)
    })


    $(function () {
        $(".openImagenDir").click(function () {
            openLoader();
        });

        $(".openImagen").click(function () {
            openLoader();
        });
    });



</script>
</body>
</html>
