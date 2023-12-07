<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="login">

    <title>Login</title>

    <style type="text/css">
    .hidden {
        visibility: hidden;
    }
    </style>
</head>

<body>

<div style="text-align: center; margin-top: 22px; height: ${(flash.message) ? '640' : '570'}px;" class="well">

    <h1 class="titl" style="font-size: 24px; color: #06a">Sistema de Programación Académica y Tutorías</h1>
    %{--<h1 class="titl" style="font-size: 16px; color: #06a">Semáforos y Documentación Generada por la Emergencia del COVID-19</h1>--}%
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <div class="dialog ui-corner-all" style="height: 160px;padding: 10px;width: 910px;margin: auto;margin-top: 5px">
        <a href= "${createLink(controller:'provincia', action: 'mapa', id:-1)}" style="text-decoration: none">
            <div>
                <asset:image src="apli/portada.png" style="padding: 30px; height: 180px"/>
            </div>
        </a>
</div>
    <div id="cargando" class="text-center hidden">
        Validando...
        <img src="${resource(dir: 'images', file: 'spinner32.gif')}" width="32px" height="32px"/>
    </div>

    <div style="border-style: solid; border-width: thin; margin-top: 20px; width: 400px; margin-left: auto; margin-right: auto;">
                <g:form name="frmLogin" action="validar" style="padding: 10px">
                    <div class="row">
                        <div class="col-md-5" style="text-align: right">
                            <label for="login">Usuario</label>
                        </div>

                        <div class="col-md-5 controls">
                            <input name="login" id="login" type="text" class="form-control required"
                                   placeholder="Usuario" required autofocus >
                        </div>
                    </div>

                    <div class="row" style="margin-top: 20px">
                        <div class="col-md-5" style="text-align: right">
                        <label for="pass">Contraseña</label>
                        </div>

                        <div class="controls col-md-5">
                            <input name="pass" id="pass" type="password" class="form-control required"
                                   placeholder="Contraseña" required style="width: 160px;">
                        </div>
                    </div>

                    <div class="divBtn" style="width: 100%; margin-top: 20px">
                        <a href="#" class="btn btn-primary btn-lg btn-block" id="btn-login"
                           style="width: 140px; margin: auto">
                            <i class="fa fa-lock"></i> Validar
                        </a>
                    </div>

                </g:form>
    </div>


    <div style="width: 100%;height: 60px;float: left; margin-bottom:5px; margin-top: 30px; text-align: center">
        <div>
            Para mayor información puede consultar el
            <a href="${createLink(controller: 'descargas', action: 'manual')}">
                <asset:image src="apli/pdf_pq.png" style="padding: 10px;"/> manual del usuario</a>
        </div>


        <p class="text-info" style="font-size: 10px; margin-top: -80px; float: right">
            Desarrollado por: <strong>Guido Ochoa</strong>
        </p>
        <p class="text-info pull-left" style="font-size: 10px; margin-top: -80px; float: left">
            Versión ${message(code: 'version', default: '1.1.0x')}
        </p>
    </div>



<script type="text/javascript">
    var $frm = $("#frmLogin");
    var recargar = true

    function doLogin() {
        var usuario = $("#login").val()
        console.log('usuario', usuario)
        if (usuario) {
            $("#cargando").removeClass('hidden');
            $(".btn-login").replaceWith($("#cargando"));
            $("#frmLogin").submit();
        }
    }


    $(function () {


        $("#btnOlvidoPass").click(function () {
            $("#recuperarPass-dialog").modal("show");
            $("#modal-ingreso").modal("hide");
        });

        // $frm.validate();
        $("#btn-login").click(function () {
            doLogin();
        });

        $("#btn-pass").click(function () {
            doPass();
        });

        $("input").keyup(function (ev) {
            if (ev.keyCode == 13) {
                doLogin();
            }
        })

    });

</script>

</body>
</html>