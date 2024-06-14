function mostrar_datos(idCurso) {
  fetch("utils/obtenerServicioActividadConsultor.php", {
    method: "POST",
    body: JSON.stringify({ userId: idCurso }),
    headers: {
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .then((courses) => {
      if (courses.length > 0) {
        console.log(courses);
        document.getElementById("tituloActividad").style.fontSize = "20px";
        document.getElementById("tituloActividad").textContent =
          "Editar Actividad";
        // Por ejemplo, actualiza el modal con los datos del primer curso
        document.getElementById("cursoId").value = courses[0].id;
        document.getElementById("fechaInicio").value = courses[0].fecha_inicio;
        document.getElementById("horaInicio").value = courses[0].hora_inicio;
        // document.getElementById('fechaFin').value = courses[0].fecha_fin;
        document.getElementById("horaFin").value = courses[0].hora_fin;
        document.getElementById("esfuerzo").value = courses[0].esfuerzo_hrs;
        document.getElementById("modalidad").value = courses[0].id_modalidad;
        document.getElementById("actividadTarea").value =
          courses[0].actividad_tarea;
        document.getElementById("solicitante").value = courses[0].solicitante;
        document.getElementById("resultado").value = courses[0].resultado;
        document.getElementById("comentarios").value = courses[0].notas;
        document.getElementById("idServicioActividad").value = idCurso;
      }

      // Muestra el modal
      var modal = document.getElementById("editModal");
      modal.style.display = "block";
    })
    .catch((error) => console.error("Error:", error));
}

function eliminar_dato(idCurso) {
  // Mostrar cuadro de diálogo de confirmación con SweetAlert2
  Swal.fire({
    title: "¿Estás seguro?",
    text: "¿Realmente deseas eliminar esta actividad?",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonColor: "#d33",
    confirmButtonText: "Sí, eliminar",
    cancelButtonText: "Cancelar",
  }).then((result) => {
    if (result.isConfirmed) {
      fetch("utils/deleteServicioActividad.php", {
        method: "POST",
        body: JSON.stringify({ userId: idCurso }),
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            // Cerrar el modal y mostrar mensaje de éxito
            Swal.fire(
              "Eliminado!",
              "La actividad ha sido eliminada.",
              "success"
            );
            // Esperar 5 segundos antes de recargar la página
            setTimeout(function () {
              window.location.reload();
            }, 2000);
          } else {
            // Manejar el caso de fallo
            Swal.fire("Error!", "Error al eliminar la actividad.", "error");
          }
        })
        .catch((error) => {
          console.error("Error:", error);
          Swal.fire("Error!", "Error al procesar los datos.", "error");
        });
    }
  });
}

function actualizarDatos() {
  var idCurso = document.getElementById("idServicioActividad").value;
  var fechaInicio = document.getElementById("fechaInicio").value;
  var horaInicio = document.getElementById("horaInicio").value;
  // var fechaFin = document.getElementById('fechaFin').value;
  var horaFin = document.getElementById("horaFin").value;
  var esfuerzo = document.getElementById("esfuerzo").value;
  var modalidad = document.getElementById("modalidad").value;
  var actividadTarea = document.getElementById("actividadTarea").value;
  var solicitante = document.getElementById("solicitante").value;
  var resultado = document.getElementById("resultado").value;
  var comentarios = document.getElementById("comentarios").value;

  var cursoData = {
    idCurso: idCurso,
    fechaInicio: fechaInicio,
    horaInicio: horaInicio,
    //  fechaFin: fechaFin,
    horaFin: horaFin,
    esfuerzo: esfuerzo,
    modalidad: modalidad,
    actividadTarea: actividadTarea,
    solicitante: solicitante,
    resultado: resultado,
    comentarios: comentarios,
    // ...otros campos...
  };

  fetch("utils/updateActivity.php", {
    method: "POST",
    body: JSON.stringify(cursoData),
    headers: {
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .then((data) => {
      // Manejar la respuesta del servidor aqu赤
      // Por ejemplo, podr赤as cerrar el modal y mostrar un mensaje de 谷xito
      document.getElementById("editModal").style.display = "none";
      mostrarMensaje("success", "¡Éxito!", "Actividad actualizada con éxito.");
      setTimeout(function () {
        window.location.reload();
      }, 2000);
    })
    .catch((error) => {
      console.error("Error:", error);
      alert("Error al actualizar los datos");
    });
}

document.getElementById("editForm").addEventListener("submit", function (e) {
  e.preventDefault();
  var idCurso = document.getElementById("cursoId").value;
  // Verificar si el botón clickeado es "Cancelar" o "Salir"
  e.preventDefault(); // Evitar el envío por defecto del formulario
  console.log(validacionCampos());
  if (validacionCampos()) {
    if (idCurso) {
      // console.log("entre oco");
      actualizarDatos();
    } else {
      // console.log("entre aqui");
      crearDatos();
    }
  }
});

// C車digo para cerrar el modal
var modal = document.getElementById("editModal");
var span = document.getElementsByClassName("close")[0];

document
  .getElementById("botonRegistrar")
  .addEventListener("click", function () {
    document.getElementById("tituloActividad").style.fontSize = "20px";
    document.getElementById("tituloActividad").textContent =
      "Registrar Nueva Actividad";
    limpiarModal();
    document.getElementById("editModal").style.display = "block";
  });

function limpiarModal() {
  document.getElementById("cursoId").value = ""; // Limpiar el ID del curso si existe
  document.getElementById("fechaInicio").value = "";
  document.getElementById("horaInicio").value = "";
  // document.getElementById('fechaFin').value  = '';
  document.getElementById("horaFin").value = "";
  document.getElementById("esfuerzo").value = "";
  document.getElementById("modalidad").value = "";
  document.getElementById("actividadTarea").value = "";
  document.getElementById("solicitante").value = "";
  document.getElementById("resultado").value = "";
  document.getElementById("comentarios").value = "";

  // Limpia los dem芍s campos
}

function crearDatos() {
  // Recoger valores de los campos
  var usuarioId = document.getElementById("usuarioId").value;
  var fechaInicio = document.getElementById("fechaInicio").value;
  var horaInicio = document.getElementById("horaInicio").value;
  // var fechaFin = document.getElementById('fechaFin').value;
  var horaFin = document.getElementById("horaFin").value;
  var esfuerzo = document.getElementById("esfuerzo").value;
  var modalidad = document.getElementById("modalidad").value;
  var actividadTarea = document.getElementById("actividadTarea").value;
  var solicitante = document.getElementById("solicitante").value;
  var resultado = document.getElementById("resultado").value;
  var comentarios = document.getElementById("comentarios").value;
  var idOperacionServicio = document.getElementById("idOperacionServicio").value;
  var idDeliveryManager = document.getElementById("idDeliveryManager").value;
  var deliveryManagerClienteNombre = document.getElementById("deliveryManagerClienteNombre").value;

  // Validación de campos (ejemplo básico)
  if (
    !fechaInicio ||
    !horaInicio ||
    !horaFin ||
    !actividadTarea ||
    !solicitante ||
    !resultado
  ) {
    Swal.fire(
      "Error",
      "Por favor, completa todos los campos requeridos.",
      "error"
    );
    return;
  }

  var nuevaActividad = {
    usuarioId: usuarioId,
    fechaInicio: fechaInicio,
    horaInicio: horaInicio,
    // fechaFin: fechaFin,
    horaFin: horaFin,
    actividadTarea: actividadTarea,
    esfuerzo: esfuerzo,
    modalidad: modalidad,
    solicitante: solicitante,
    resultado: resultado,
    comentarios: comentarios,
    idOperacionServicio: idOperacionServicio,
    idDeliveryManager: idDeliveryManager,
    deliveryManagerClienteNombre: deliveryManagerClienteNombre,
  };

  fetch("utils/createRegistroActividad.php", {
    method: "POST",
    body: JSON.stringify(nuevaActividad),
    headers: {
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.success) {
        // Cerrar el modal y actualizar la tabla o mostrar mensaje de éxito
        Swal.fire("¡Éxito!", "Actividad creada con éxito.", "success").then(
          () => {
            document.getElementById("editModal").style.display = "none";
            //actualizarTabla(); // Si tienes una función para actualizar la tabla
            window.location.reload();
          }
        );
      } else {
        // Manejar el caso de fallo
        Swal.fire("Error", "Error al crear la actividad", "error");
      }
    })
    .catch((error) => {
      console.error("Error:", error);
      Swal.fire("Error", "Error al procesar los datos", "error");
    });
}

span.onclick = function () {
  modal.style.display = "none";
};

function validacionCampos() {
  var fechaInicio = document.getElementById("fechaInicio").value;
  var horaInicio = document.getElementById("horaInicio").value;
  // var fechaFin = document.getElementById('fechaFin').value;
  var horaFin = document.getElementById("horaFin").value;
  var actividadTarea = document.getElementById("actividadTarea").value;
  var solicitante = document.getElementById("solicitante").value;
  var resultado = document.getElementById("resultado").value;
  var modalidad = document.getElementById("modalidad").value;

  // Verificar que todos los campos estén llenos
  if (
    fechaInicio === "" ||
    horaInicio === "" ||
    horaFin === "" ||
    actividadTarea === "" ||
    solicitante === "" ||
    resultado === "" ||
    modalidad === ""
  ) {
    mostrarCamposObligatorios();
    return false;
  }

  // Combinar las fechas y horas en objetos Date
  // var inicio = new Date(fechaInicio + ' ' + horaInicio);
  // var fin = new Date(fechaFin + ' ' + horaFin);

  // Verificar que la fecha y hora de inicio no sean superiores a la fecha y hora de fin
  //  if (inicio >= fin) {
  //  mostrarMensaje('error', 'Error', 'La fecha de inicio no puede ser posterior a la fecha de fin. Por favor, revisa las fechas e intenta de nuevo. .');

  //   return false;
  //}

  return true;
}

function mostrarMensaje(tipo, titulo, mensaje) {
  var icono;
  switch (tipo) {
    case "success":
      icono = "success";
      break;
    case "error":
      icono = "error";
      break;
    case "warning":
      icono = "warning";
      break;
    default:
      icono = "info";
      break;
  }

  Swal.fire(titulo, mensaje, icono);
}

// Para mostrar un mensaje de campos obligatorios no completados
function mostrarCamposObligatorios() {
  mostrarMensaje(
    "error",
    "Error",
    "Por favor, complete todos los campos para continuar."
  );
}

function limitarInputNumerico(inputElement, maxLength) {
  let valor = inputElement.value;

  // Remover caracteres no numéricos
  valor = valor.replace(/\D/g, "");

  // Limitar la longitud
  if (valor.length > maxLength) {
    valor = valor.slice(0, maxLength);
  }

  inputElement.value = valor;
}

function buscarActividad() {
  var fechaInicioBuscar = document.getElementById("buscarActividad").value;
  console.log(fechaInicioBuscar);
}

// Obtener el modal por su ID
var modal = document.getElementById("editModal");

// Obtener el botón "Cancelar" y el botón "Salir"
var botonCancelar = document.getElementById("botonCancelar");

// Agregar un controlador de eventos click al botón "Cancelar"
botonCancelar.addEventListener("click", function () {
  modal.style.display = "none"; // Cerrar el modal al hacer clic en "Cancelar"
});

// También puedes agregar un controlador de eventos para cerrar el modal si se hace clic fuera del modal

document.getElementById("botonExportar").addEventListener("click", function () {
  var usuarioId = document.getElementById("usuarioId").value; // Obtener el ID del usuario
  var fechaInicioBuscar = document.getElementById("fechaInicioBuscarExport").value; // Obtener el ID del usuario
  var fechaFinBuscar = document.getElementById("fechaFinBuscarExport").value; // Obtener el ID del usuario
  var fechaActualReporte = new Date();
  var año = fechaActualReporte.getFullYear();
  var mes = ("0" + (fechaActualReporte.getMonth() + 1)).slice(-2);
  var día = ("0" + fechaActualReporte.getDate()).slice(-2);
  var hora = ("0" + fechaActualReporte.getHours()).slice(-2);
  var minuto = ("0" + fechaActualReporte.getMinutes()).slice(-2);
  var segundo = ("0" + fechaActualReporte.getSeconds()).slice(-2);

  var fechaHoraFormateada = año + mes + día + "_" + hora + minuto + segundo;

  // Primero obtenemos la información del equipo
  fetch("utils/obtenerServicioConsultor.php", {
    method: "POST",
    body: JSON.stringify({
      userId: usuarioId,
      fechaInicioBuscar: fechaInicioBuscar,
      fechaFinBuscar: fechaFinBuscar,
    }),
    headers: {
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .then((infoEquipo) => {
      var fechaInicioBuscar = document.getElementById("fechaInicioBuscarExport").value; // Obtener el ID del usuario
      var fechaFinBuscar = document.getElementById("fechaFinBuscarExport").value; // Obtener el ID del usuario
      if (!Array.isArray(infoEquipo)) {
        infoEquipo = [infoEquipo];
      }

      if (!infoEquipo || infoEquipo.length === 0) {
        throw new Error("No se recibió la información del equipo");
      }
      console.log(infoEquipo);

      // Definir las claves que queremos mantener
      const clavesDeseadas = [
        "nombre_cliente_final",
        "nombre_cliente",
        "area",
        "equipo_trabajo_asignado",
        "lider_equipo",
        "nombre_del_consultor",
      ];

      // Filtrar la información del equipo para mantener solo las claves deseadas
      let equipoData = Object.keys(infoEquipo[0])
        .filter((key) => clavesDeseadas.includes(key)) // Filtrar las claves
        .map((key) => ({
          // Convertir a formato adecuado para XLSX
          A: key.replace(/_/g, " ").toUpperCase(), // Reemplazar _ por espacio y convertir a mayúsculas
          B: infoEquipo[0][key],
        }));

      // Luego obtenemos los cursos
      return fetch("utils/exportExcel.php", {
        method: "POST",
        body: JSON.stringify({
          userId: usuarioId,
          fechaInicioBuscar: fechaInicioBuscar,
          fechaFinBuscar: fechaFinBuscar,
        }),
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((response) => response.json())

        .then((cursos) => {
          // Convertir los nombres de propiedades y agregar estilos como antes
          // ...

          // Ajustar el inicio de la tabla de cursos
          let cursosData = XLSX.utils.json_to_sheet(cursos, { origin: "B9" });

          // Combinar los datos del equipo con los cursos
          let combinedData = XLSX.utils.sheet_add_json(cursosData, equipoData, {
            origin: "A1",
          });

          // Eliminar la primera fila del rango
          let range = XLSX.utils.decode_range(combinedData["!ref"]);
          range.s.r++; // Incrementamos el inicio del rango para saltar la primera fila
          combinedData["!ref"] = XLSX.utils.encode_range(range);

          // Aplicar estilos necesarios aquí...

          // Crear el libro y añadir la hoja de trabajo
          var workbook = XLSX.utils.book_new();
          XLSX.utils.book_append_sheet(workbook, combinedData, "Reporte");

          XLSX.writeFile(
            workbook,
            "DIGITALHUB_" +
              nombreUsuario +
              "_" +
              "ReporteHorasSimple" +
              "_" +
              fechaHoraFormateada +
              ".xlsx"
          );
        });
    })
    .catch((error) => console.error("Error:", error));
});

document.addEventListener("DOMContentLoaded", function () {
  var horaInicioEl = document.getElementById("horaInicio");
  var horaFinEl = document.getElementById("horaFin");
  var mensajeValidacion = document.getElementById("mensajeValidacion");

  function mostrarMensaje(mensaje) {
    mensajeValidacion.textContent = mensaje; // Establece el texto del mensaje
    mensajeValidacion.style.display = "block"; // Hace visible el mensaje
    setTimeout(function () {
      mensajeValidacion.style.display = "none"; // Oculta el mensaje después de unos segundos
    }, 4000); // Espera 4000 milisegundos (4 segundos) antes de ocultar el mensaje
  }

  horaInicioEl.addEventListener("change", function () {
    if (
      horaFinEl.value &&
      (horaFinEl.value < horaInicioEl.value ||
        horaFinEl.value === horaInicioEl.value)
    ) {
      horaFinEl.value = ""; // Limpiar la hora de fin si es menor o igual a la hora de inicio
      mostrarMensaje("La hora de fin debe ser mayor que la hora de inicio.");
    }
  });

  horaFinEl.addEventListener("change", function () {
    if (
      horaInicioEl.value &&
      (horaFinEl.value < horaInicioEl.value ||
        horaFinEl.value === horaInicioEl.value)
    ) {
      horaFinEl.value = ""; // Limpiar la hora de fin si es menor o igual a la hora de inicio
      mostrarMensaje("La hora de fin debe ser mayor que la hora de inicio.");
    }
  });
});
