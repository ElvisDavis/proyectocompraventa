var tabla;

//Función que se ejecuta al iniciio
function init(){
    mostrarform(false);
    listar();

    $("#formulario").on("submit",function(e){
        e.preventDefault();
        guardarCategoria();
    })

}

//function limpiar
function limpiar(){
    $("#nombre").val("");
    $("#descripcion").val("");
    $("#idcategoria").val("");
}

//Function mostrar formulario
function mostrarform(flag){
    if(flag)
    {
        $("#listadoregistros").hide();
        $("#formularioregistros").show();
        $("#btnGuardar").prop("disabled",false);
        $("#btnagregar").hide();
    }
    else{
        $("#listadoregistros").show();
        $("#formularioregistros").hide();
        $("#btnagregar").show();
    }
}

//Funcion cancelar form
function cancelarform(){
    limpiar();
    mostrarform(false)
}

function listar(){
    tabla = $('#tbllistado').DataTable({
        "processing": true,
        "serverSide": false,
        "ajax": {
            url: "categoria?accion=listar",
            type: "GET",
            dataType: "json"
        },
        "columns": [
            { "data": "idCategoria" },
            { "data": "nombre" },
            { "data": "descripcion" },
            { "data": "condicion" },
            {
                "data": null,
                "render": function (data, type, row) {
                    return `<button class="btn btn-warning btn-sm">Editar</button><button class="btn btn-danger btn-sm">Eliminar</button>`;
                }
            }
        ],
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json"
        },
        "destroy": true,
        "pageLength": 5,
        "order": [[0, "desc"]]
    });

}

//Función para guardar categoria
function guardarCategoria(){
    var formData= new FormData($("formulario")[0]);

    $.ajax({
        url:"categoria",
        type: "POST",
        data: formData,
        contentType:false,
        processData: false,
        success:function (response) {
            //Mensaje de exito
            Swal.fire("Categoria Registrada" , "" , "success");
            limpiar();
            mostrarform(false);
            tabla.ajax.reload();

        },
        error:function(error){
            console.error("Error al guardar: " ,error.responseText);
            Swal.fire("Error al guardar :", error.responseText, "error");
        }
    })
}

init();
