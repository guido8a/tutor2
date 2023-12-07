
<div class="modal-contenido">
    <g:form class="form-horizontal" name="frmtipoprofesor" role="form" action="savetipoProfesor_ajax" method="POST">
        <g:hiddenField name="id" value="${tipoProfesor?.id}"/>

        <div class="form-group keeptogether ${hasErrors(bean: tipoProfesor, field: 'descripcion', 'error')}">
        <div class="row">
                <label for="descripcion" class="col-md-2 control-label">
                    Descripcion
                </label>

                <div class="col-md-8">
                    <g:textField name="descripcion" maxlength="200" class="form-control input-sm required"
                                 value="${tipoProfesor?.descripcion}"/>
                </div>
        </div>
        <br>
        </div>
    </g:form>
    <div class="col-md-12" style="text-align: end">
        <button id="cerrar" class="btn btn-primary"> Cancelar</button>
        <button id="grabar" class="btn btn-info"> Grabar</button>
    </div>
</div>

<script type="text/javascript">


    $(".form-control").keydown(function (ev) {
        if (ev.keyCode == 13) {
            console.log("Llama a validar")
            $("#grabar").click()
            return false;
        }
        return true;
    });


    $("#grabar").click(function () {
        var descripcion = $("#descripcion").val();
        var url = "${createLink(controller: 'tipoProfesor', action:'list')}"
        console.log("validando...")

        if(descripcion == ''){
            bootbox.alert("<i class='fa fa-exclamation-triangle fa-3x pull-left text-warning text-shadow'></i>" +
                " Ingrese la descripción del Tipo de Profesor")
        }else{
            submitForm();
            //$(".modal-dialog").hide()
            setTimeout(function () {

                location.reload(true)
            }, 300);
            //location.reload(true)
        }

    });

    $("#cerrar").click(function () {
        location.reload(true)
    });
</script>
