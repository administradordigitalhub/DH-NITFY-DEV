async function showDetails(button, type) {
  var currentRow = button.parentNode.parentNode;
  var nextRow = currentRow.nextElementSibling;

  // Comprobar si el detalle ya está visible en la fila actual y es del mismo tipo
  if (
    nextRow &&
    nextRow.classList.contains("detail") &&
    nextRow.dataset.type === type
  ) {
    nextRow.remove(); // Oculta el detalle si se hace clic de nuevo en el mismo botón
    return;
  }

  // Solo elimina la fila de detalles de la fila actual si no coincide con el tipo esperado
  if (nextRow && nextRow.classList.contains("detail")) {
    nextRow.remove();
  }

  let containerDiv = null;

  // Procesa los diferentes tipos de datos
  if (
    type === "perfil" ||
    type === "salario" ||
    type === "contacto" ||
    type === "comentario"
  ) {
    const candidatoId = button.getAttribute("data-id");
    let endpoint = "";
    switch (type) {
      case "perfil":
        endpoint =
          "http://localhost/DH-NITFY-DEV/utils/ModuloCandidatos/profile.php";
        break;
      case "salario":
        endpoint =
          "http://localhost/DH-NITFY-DEV/utils/ModuloCandidatos/salary.php";
        break;
      case "contacto":
        endpoint =
          "http://localhost/DH-NITFY-DEV/utils/ModuloCandidatos/contact.php";
        break;
      case "comentario":
        endpoint =
          "http://localhost/DH-NITFY-DEV/utils/ModuloCandidatos/comment.php";
        break;
    }

    try {
      let customColspan = 8;
      const response = await fetch(endpoint, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ id: candidatoId }),
      });

      const data = await response.json();

      containerDiv = document.createElement("div");
      containerDiv.classList.add("containerFlex");

      if (type === "perfil") {
        let perfilBuscado = data["Perfil Buscado"]
          ? Object.values(data["Perfil Buscado"])
          : [];
        let perfilCandidato = data["Perfil Candidato"]
          ? Object.values(data["Perfil Candidato"])
          : [];
        let perfilDigitalHub = data["Perfil DIGITALHUB"]
          ? Object.values(data["Perfil DIGITALHUB"])
          : [];

        perfilBuscado.length > 0 &&
          containerDiv.appendChild(
            createProfileSection("Perfil Buscado", perfilBuscado)
          );
        perfilCandidato.length > 0 &&
          containerDiv.appendChild(
            createProfileSection("Perfil Candidato", perfilCandidato)
          );
        perfilDigitalHub.length > 0 &&
          containerDiv.appendChild(
            createProfileSection("Perfil DIGITALHUB", perfilDigitalHub)
          );
      } else {
        let detailHtml = "";
        if (type === "salario") {
          if (data && data.length > 0) {
            detailHtml = data
              .map((item) => {
                return `<div><p><strong>${item.descripcion_tipo_remuneracion}</strong></p>
                        <p>Moneda: ${item.simbolo_tipo_moneda}</p>
                        <p>Limite Inferior: ${item.limite_inferior_remuneracion_candidato}</p>
                        <p>Limite Superior: ${item.limite_superior_remuneracion_candidato}</p></div>`;
              })
              .join("");
          } else {
            detailHtml = `<p>El candidato no tiene expectativa salarial registrada</p>`;
          }
          containerDiv.classList.add("gridContainerSalario");
        }
        if (type === "contacto") {
          if (data && data.length > 0) {
            //console.log(data);
            detailHtml = data
              .map((item) => {
                return `<div><p><strong>CONTACTO</strong></p>
              ${
                item.celular_principal_candidato
                  ? `<p>Celular Principal: ${item.celular_principal_candidato}</p>`
                  : ""
              }
              ${
                item.celular_secundario_candidato
                  ? `<p>Celular Secundario: ${item.celular_secundario_candidato}</p>`
                  : ""
              }
              ${
                item.correo_principal_candidato
                  ? `<p>Correo Electrónico: ${item.correo_principal_candidato}</p>`
                  : ""
              }
              </div>`;
              })
              .join("");
          } else {
            detailHtml = `<p>El candidato no tiene contactos registrados</p>`;
          }
          containerDiv.classList.add("gridContainerContacto");
        }
        if (type === "comentario") {
          if (data && data.length > 0) {
            detailHtml = data
              .map((item) => {
                let comentario = item.comentario_reclutador_candidato || "";

                comentario = comentario.replace(/\?/g, "?<br>");
                comentario = comentario.replace(/¿/g, "<br>¿");

                return `<div><p><strong>COMENTARIO:</strong> ${comentario}</p></div>`;
              })
              .join("");
          } else {
            detailHtml = `<p>El candidato no tiene comentarios registrados</p>`;
          }
          containerDiv.classList.add("gridContainerComentario");
          customColspan = 8;
        }
        containerDiv.innerHTML = detailHtml;
      }

      createAndInsertNewRow(containerDiv, currentRow, customColspan, type);
    } catch (error) {
      console.error(`Error fetching the ${type} data:`, error);
    }
  } else {
  }
}

function createProfileSection(title, items) {
  //console.log(items);
  if (items.length > 0) {
    let containerTitlePerfil = document.createElement("div");
    let titlePerfil = document.createElement("p");
    titlePerfil.classList.add("titlePerfil");
    titlePerfil.textContent = title;
    let categoryDiv = document.createElement("div");
    categoryDiv.classList.add("gridContainerPerfil");

    items.forEach((item) => {
      let itemDiv = document.createElement("div");
      itemDiv.classList.add("itemGrid");
      Object.entries(item).forEach(([key, value]) => {
        if (value) {
          let p = document.createElement("p");
          p.textContent = `${key}: ${value}`;
          itemDiv.appendChild(p);
        }
      });
      categoryDiv.appendChild(itemDiv);
    });

    containerTitlePerfil.appendChild(titlePerfil);
    containerTitlePerfil.appendChild(categoryDiv);
    return containerTitlePerfil;
  }
}

function createAndInsertNewRow(containerDiv, referenceNode, colspan, type) {
  let newRow = document.createElement("tr");
  newRow.classList.add("detail");
  newRow.dataset.type = type;

  let newTD = document.createElement("td");
  newTD.setAttribute("colspan", colspan);
  newTD.appendChild(containerDiv);

  newRow.appendChild(newTD);
  referenceNode.parentNode.insertBefore(
    newRow,
    referenceNode.nextElementSibling
  );
}
var remuneraciones = [];
var infoUser = {};
var perfilBuscado = [];
var isEditing = false;
var editingRowIndex = -1;
var isEditDB = false;
var idRemuneracionEdit = "";

// Verifica si hay filas en la tabla
var rows = document.querySelectorAll("#tablaRemuneraciones tbody tr");
if (rows.length > 0) {
  rows.forEach(function (row) {
    console.log(row.cells);
    var tipoRemuneracionValue = row.cells[0]
      ? row.cells[0].textContent.trim()
      : "";
    var tipoRemuneracionText = row.cells[1]
      ? row.cells[1].textContent.trim()
      : "";
    var tipoMonedaText = row.cells[2] ? row.cells[2].textContent.trim() : "";
    var limiteInferior = row.cells[3] ? row.cells[3].textContent.trim() : "";
    var limiteSuperior = row.cells[4] ? row.cells[4].textContent.trim() : "";
    var idRemuneracion = row.querySelector("#id_remuneracion")
      ? row.querySelector("#id_remuneracion").value.trim()
      : "";
    var idMoneda = row.querySelector("#id_moneda")
      ? row.querySelector("#id_moneda").value.trim()
      : "";

    // Solo añade a la lista si los datos son válidos o como mínimo necesarios
    if (
      tipoRemuneracionValue &&
      tipoMonedaText &&
      limiteInferior &&
      limiteSuperior &&
      idRemuneracion &&
      idMoneda
    ) {
      remuneraciones.push({
        idRemuneracion: idRemuneracion,
        tipoRemuneracionValue: tipoRemuneracionValue,
        tipoRemuneracionText: tipoRemuneracionText,
        tipoMonedaText: tipoMonedaText,
        idMoneda: idMoneda,
        limiteInferior: limiteInferior,
        limiteSuperior: limiteSuperior,
      });
    }
  });
} else {
  //console.log("No hay remuneraciones cargadas inicialmente.");
}

document
  .getElementById("dropdownButton")
  .addEventListener("click", function (event) {
    var checkboxList = document.getElementById("checkboxList");
    checkboxList.style.display = "block"; // Mostrar la lista cuando se haga clic en el input
    event.stopPropagation(); // Detener la propagación para evitar que document lo oculte inmediatamente
  });
document
  .getElementById("dropdownButton")
  .addEventListener("keyup", function (event) {
    var input = document.getElementById("dropdownButton").value.toLowerCase();
    var checkboxList = document.getElementById("checkboxList");
    var items = checkboxList.getElementsByClassName("checkItem");
    var hasVisibleItems = false;

    // Filtrar elementos basados en la entrada
    for (var i = 0; i < items.length; i++) {
      var label = items[i].getElementsByTagName("label")[0];
      if (label.textContent.toLowerCase().indexOf(input) > -1) {
        items[i].style.display = "";
        hasVisibleItems = true;
      } else {
        items[i].style.display = "none";
      }
    }
    checkboxList.style.display = hasVisibleItems ? "block" : "none";
    event.stopPropagation(); // Detener la propagación para evitar que document lo oculte inmediatamente
  });

setupCheckboxes();

function setupCheckboxes() {
  const checkboxes = document.querySelectorAll(
    '.checklist .checkItem input[type="checkbox"]'
  );
  checkboxes.forEach(function (checkbox) {
    checkbox.addEventListener("change", function () {
      const input = document.getElementById("dropdownButton");
      input.value = ""; // Limpiar el input
      input.focus(); // Colocar el cursor en el input
    });
  });
}

// Evento para manejar clics fuera del input y la lista
document.addEventListener("click", function (event) {
  var dropdownContainer = document.getElementById("dropdownContainer");
  if (!dropdownContainer.contains(event.target)) {
    document.getElementById("checkboxList").style.display = "none";
  }
});

// Evento para manejar el clic en el botón "Buscar"
document
  .getElementById("buscarCandidato")
  .addEventListener("click", async function () {
    var checkboxes = document.querySelectorAll(
      '.checklist .checkItem input[type="checkbox"]:checked'
    );
    var selected = [];
    checkboxes.forEach(function (checkbox) {
      selected.push(checkbox.name); // Almacenamos el name del checkbox
    });

    //console.log("Selected filters:", selected); // Mostrar los filtros seleccionados

    const response = await fetch(
      "http://localhost/DH-NITFY-DEV/candidatos.php",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          filters: selected,
          isFilter: true,
        }),
      }
    );

    const data = await response.json(); // Asume que 'data' es un objeto con una propiedad 'candidatos'
    //console.log("Response data:", data); // Mostrar los datos recibidos

    // Ahora actualizamos la tabla con los nuevos datos
    const tbody = document.querySelector("#data-table tbody");
    tbody.innerHTML = ""; // Limpiar el tbody actual

    if (data.candidatos && data.candidatos.length > 0) {
      data.candidatos.forEach((candidato) => {
        const row = document.createElement("tr");
        row.className = "table-general";
        row.innerHTML = `
              <td style="width: 5%;">${htmlspecialchars(
                candidato.id_candidato
              )}</td>
              <td style="width: 20%;">${htmlspecialchars(
                candidato.nombre_completo2_candidato
              )}</td>
              <td width: 10%;><button class="button-custom" data-id="${
                candidato.id_candidato
              }" onclick="showDetails(this, 'perfil')">Ver</button></td>
              <td width: 12%;><button class="button-custom" data-id="${
                candidato.id_candidato
              }" onclick="showDetails(this, 'salario')">Ver</button></td>
              <td width: 8%;><button class="button-custom" data-id="${
                candidato.id_candidato
              }" onclick="showDetails(this, 'contacto')">Ver</button></td>
              <td width: 25%;>${htmlspecialchars(
                candidato.nombre_archivo_candidato
              )}</td>
              <td width: 10%;>${htmlspecialchars(
                candidato.descripcion_ingles_conversacional
              )}</td>
              <td width: 10%;><button class="button-custom" data-id="${
                candidato.id_candidato
              }" onclick="showDetails(this, 'comentario')">Ver</button></td>
          `;
        tbody.appendChild(row);
      });
    } else {
      const row = document.createElement("tr");
      row.innerHTML = `<td colspan="8" class="text-center">No se encontraron resultados</td>`;
      tbody.appendChild(row);
    }

    // Deseleccionar todos los checkboxes después de enviar la solicitud
    checkboxes.forEach(function (checkbox) {
      checkbox.checked = false;
    });

    // Limpiar el input de búsqueda
    document.getElementById("dropdownButton").value = "";
    resetCheckboxVisibility();
  });

function resetCheckboxVisibility() {
  var items = document.querySelectorAll(".checklist .checkItem");
  items.forEach(function (item) {
    item.style.display = ""; // Hacer todos los checkboxes visibles
  });
}

function htmlspecialchars(text) {
  if (text === null || text === undefined) return ""; // Retornar cadena vacía si el texto no está definido o es nulo
  text = text.toString(); // Convertir el texto a una cadena si no lo es

  const map = {
    "&": "&amp;",
    "<": "&lt;",
    ">": "&gt;",
    '"': "&quot;",
    "'": "&#039;",
  };
  return text.replace(/[&<>"']/g, function (m) {
    return map[m];
  });
}

function saveStepFour() {
  var table = document
    .getElementById("tablaRemuneraciones")
    .getElementsByTagName("tbody")[0];
  var selectTipoRemuneracion = document.getElementById("tipoRemuneracion");
  var selectTipoMoneda = document.getElementById("tipoMoneda");
  var limiteInferior = document.getElementById("limiteInferior").value;
  var limiteSuperior = document.getElementById("limiteSuperior").value;

  // Crear objeto de remuneración
  var remuneracion = {
    tipoRemuneracionValue: selectTipoRemuneracion.value,
    tipoRemuneracionText:
      selectTipoRemuneracion.options[selectTipoRemuneracion.selectedIndex].text,
    tipoMonedaValue: selectTipoMoneda.value,
    tipoMonedaText:
      selectTipoMoneda.options[selectTipoMoneda.selectedIndex].text,
    limiteInferior: limiteInferior,
    limiteSuperior: limiteSuperior,
  };

  // Validar que los campos no estén vacíos y que las opciones sean válidas
  if (
    remuneracion.tipoRemuneracionValue !== "none" &&
    remuneracion.tipoMonedaValue !== "none" &&
    limiteInferior &&
    limiteSuperior
  ) {
    if (isEditDB) {
      const url = "./utils/ModuloCandidatos/agregarCandidato.php";
      let datosAEnviar = {
        isEditRemuneracion: true,
        id_remuneracion: idRemuneracionEdit,
        ...remuneracion,
      };

      fetch(url, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(datosAEnviar),
      })
        .then((response) => response.json())
        .then((data) => {
          const indice = remuneraciones.findIndex(
            (item) => item.idRemuneracion == idRemuneracionEdit
          );
          console.log(indice);
          console.log(remuneracion);

          remuneraciones[indice] = {
            ...remuneraciones[indice], // Conserva los valores antiguos
            ...remuneracion,
          };
          console.log(remuneraciones);
        })
        .catch((error) => console.error("Error:", error));
    } else {
      if (isEditing) {
        // Editar fila existente
        var row = table.rows[editingRowIndex];
        row.cells[0].innerText = remuneracion.tipoRemuneracionValue;
        row.cells[1].innerText = remuneracion.tipoRemuneracionText;
        row.cells[2].innerText = remuneracion.tipoMonedaText;
        row.cells[3].innerText = limiteInferior;
        row.cells[4].innerText = limiteSuperior;

        // Actualizar el arreglo de remuneraciones
        remuneraciones[editingRowIndex] = remuneracion;

        isEditing = false; // Resetear modo de edición
        editingRowIndex = -1;
      } else {
        // Agregar nueva fila
        var newRow = table.insertRow(-1);
        newRow.innerHTML = `
                <td>${remuneracion.tipoRemuneracionValue}</td>
                <td>${remuneracion.tipoRemuneracionText}</td>
                <td>${remuneracion.tipoMonedaText}</td>
                <td>${limiteInferior}</td>
                <td>${limiteSuperior}</td>
                <td style="text-align: center;">
                    <button class="buttonUpLoad" type="button" onclick="editarFila(this);">Editar</button>
                    <button class="buttonUpLoad" type="button" onclick="eliminarFila(this);">Eliminar</button>
                </td>
            `;
        // Añadir al arreglo de remuneraciones
        remuneraciones.push(remuneracion);
      }
    }

    // Limpiar los inputs
    selectTipoRemuneracion.selectedIndex = 0;
    selectTipoMoneda.selectedIndex = 0;
    document.getElementById("limiteInferior").value = "";
    document.getElementById("limiteSuperior").value = "";
  } else {
    alert("Por favor, completa todos los campos correctamente.");
  }
}

function editarFila(button) {
  var row = button.parentNode.parentNode;
  var rowIndex = row.rowIndex - 1; // Índice de la fila en la tabla visual (GUI)
  editingRowIndex = rowIndex; // Guardar el índice de la fila que se está editando
  isEditing = true; // Establecer el modo de edición

  // Obtener el objeto de remuneración correspondiente del arreglo
  var remuneracion = remuneraciones[rowIndex];

  // Seleccionar los elementos del formulario
  var selectTipoRemuneracion = document.getElementById("tipoRemuneracion");
  var selectTipoMoneda = document.getElementById("tipoMoneda");

  // Establecer el valor del select de tipo de remuneración
  for (var i = 0; i < selectTipoRemuneracion.options.length; i++) {
    if (
      selectTipoRemuneracion.options[i].value ===
      remuneracion.tipoRemuneracionValue
    ) {
      selectTipoRemuneracion.selectedIndex = i;
      break;
    }
  }

  // Establecer el valor del select de tipo de moneda
  for (var i = 0; i < selectTipoMoneda.options.length; i++) {
    if (selectTipoMoneda.options[i].value === remuneracion.tipoMonedaValue) {
      selectTipoMoneda.selectedIndex = i;
      break;
    }
  }

  // Rellenar los inputs con los datos del objeto seleccionado
  document.getElementById("limiteInferior").value = remuneracion.limiteInferior;
  document.getElementById("limiteSuperior").value = remuneracion.limiteSuperior;
}

// Función para eliminar fila y actualizar el array de remuneraciones
function eliminarFila(button) {
  var row = button.parentNode.parentNode;
  var index = row.rowIndex - 1; // Obtener el índice de la fila

  // Eliminar la fila de la tabla
  row.remove();

  // Eliminar el objeto del arreglo
  remuneraciones.splice(index, 1);
}

function saveStepOne() {
  // Realizar validaciones antes de intentar guardar
  // validateNombres(); // Esta función se asegura que el campo 'nombres' sea validado

  const nombres = document.getElementById("nombres");
  const apellidos = document.getElementById("apellidos");
  const direccion = document.getElementById("direccion");
  const fechaNacimiento = document.getElementById("fechaNacimiento");
  const nivelIngles = document.getElementById("n_ingles");
  const nivelInglesDH = document.getElementById("n_inglesDH");
  const disponibilidad = document.getElementById("disponibilidad");
  const asistencia = document.getElementById("asistencia");
  const fileElement = document.getElementById("fileToUpload");

  // Si todo está correcto, procede a guardar la información
  infoUser = {
    nombres: nombres.value,
    apellidos: apellidos.value,
    direccion: direccion.value,
    fechaNacimiento: fechaNacimiento.value,
    nivelIngles: nivelIngles.value,
    nivelInglesDH: nivelInglesDH.value,
    disponibilidad: disponibilidad.value,
    asistencia: asistencia.value,
    curriculum: fileElement.files[0] ? fileElement.files[0].name : "",
    curriculumFile: fileElement.files[0] ? fileElement.files[0] : null,
  };

  //console.log(infoUser);
  // Aquí podrías enviar infoUser a un servidor o realizar otras operaciones con los datos
  // Por ejemplo, enviar los datos al servidor mediante fetch o AJAX
}

function saveStepTwo() {
  infoUser.celularPrincipal = document.getElementById("celularPrincipal").value;
  infoUser.celularSecundario =
    document.getElementById("celularSecundario").value;
  infoUser.telefonoFijo = document.getElementById("telefonoFijo").value;
  infoUser.correoPrincipal = document.getElementById("correoPrincipal").value;
  infoUser.correoSecundario = document.getElementById("correoSecundario").value;

  //console.log(infoUser);
}

function saveStepThree() {
  // Actualizar infoUser con los datos generales
  infoUser.inicioActividad = document.getElementById("inicioActividad").value;
  infoUser.aniosExperiencia = document.getElementById("aniosExperiencia").value;
  infoUser.perfilCandidato1 = document.getElementById("perfilCandidato1").value;
  infoUser.perfilCandidato2 = document.getElementById("perfilCandidato2").value;
  infoUser.perfilCandidato3 = document.getElementById("perfilCandidato3").value;
  infoUser.perfilCandidatoDH1 =
    document.getElementById("perfilCandidatoDH1").value;
  infoUser.perfilCandidatoDH2 =
    document.getElementById("perfilCandidatoDH2").value;
  infoUser.perfilCandidatoDH3 =
    document.getElementById("perfilCandidatoDH3").value;

  perfilBuscado = [
    {
      titulo: "PERFIL BUSCADO 1",
      perfil: document.getElementById("perfilB1").value,
      totalAniosExperiencia: document.getElementById("totalPB1").value,
    },
    {
      titulo: "PERFIL BUSCADO 2",
      perfil: document.getElementById("perfilB2").value,
      totalAniosExperiencia: document.getElementById("totalPB2").value,
    },
    {
      titulo: "PERFIL BUSCADO 3",
      perfil: document.getElementById("perfilB3").value,
      totalAniosExperiencia: document.getElementById("totalPB3").value,
    },
  ];

  //console.log(infoUser);
  //console.log(perfilBuscado);
}

function enviarFormulario() {
  let id = document.getElementById("IDcandidato").value;
  //console.log(id);

  infoUser.reclutador = document.getElementById("reclutador").value;
  infoUser.comentarioReclutador = document.getElementById("descripcion").value;

  const url = "./utils/ModuloCandidatos/agregarCandidato.php";
  let datosAEnviar = {
    infoUser: infoUser,
    perfilBuscado: perfilBuscado,
    remuneraciones: remuneraciones,
  };

  if (id !== "") {
    datosAEnviar.id = id;
  }
  fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(datosAEnviar),
  })
    .then((response) => response.json())
    .then((data) => console.log("Success:", data))
    .catch((error) => console.error("Error:", error));

  //console.log(infoUser);
  //console.log(perfilBuscado);
  //console.log(remuneraciones);
}

function onLoadFile() {
  document.getElementById("fileToUpload").click();
}

function loadFile() {
  var fileInput = document.getElementById("fileToUpload");
  var fileNameSpan = document.getElementById("fileName");
  if (fileInput.files.length > 0) {
    var fileName = fileInput.files[0].name;
    fileNameSpan.textContent = fileName;
  } else {
    fileNameSpan.textContent = "";
  }
}

function eliminarRemuneracion(id) {
  const url = "./utils/ModuloCandidatos/agregarCandidato.php";
  let datosAEnviar = {
    isDeleteRemuneracion: true,
    id_remuneracion: id,
  };

  fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(datosAEnviar),
  })
    .then((response) => response.json())
    .then((data) => console.log("Success:", data))
    .catch((error) => console.error("Error:", error));
}

function editarRemuneracion(id) {
  isEditDB = true;
  const findRemuneracion = remuneraciones.find(
    (item) => item.idRemuneracion == id
  );
  idRemuneracionEdit = findRemuneracion.idRemuneracion;
  console.log(findRemuneracion);
  // Obtener el objeto de remuneración correspondiente del arreglo
  var remuneracion = findRemuneracion;

  // Seleccionar los elementos del formulario
  var selectTipoRemuneracion = document.getElementById("tipoRemuneracion");
  var selectTipoMoneda = document.getElementById("tipoMoneda");

  // Establecer el valor del select de tipo de remuneración
  for (var i = 0; i < selectTipoRemuneracion.options.length; i++) {
    if (
      selectTipoRemuneracion.options[i].value ===
      remuneracion.tipoRemuneracionValue
    ) {
      selectTipoRemuneracion.selectedIndex = i;
      break;
    }
  }

  // Establecer el valor del select de tipo de moneda
  for (var i = 0; i < selectTipoMoneda.options.length; i++) {
    if (selectTipoMoneda.options[i].value === remuneracion.idMoneda) {
      selectTipoMoneda.selectedIndex = i;
      break;
    }
  }

  // Rellenar los inputs con los datos del objeto seleccionado
  document.getElementById("limiteInferior").value = remuneracion.limiteInferior;
  document.getElementById("limiteSuperior").value = remuneracion.limiteSuperior;
}
