function showDetails(button, type) {
  var currentRow = button.parentNode.parentNode;
  var detailRow = currentRow.nextElementSibling;
  let containerDiv = null;
  var newDetailsData = {
    perfil: {
      "Perfil Buscado": [
        {
          TITULO: "PERFIL BUSCADO 1",
          CLIENTE: "SOAINT",
          "CLIENTE FINAL": "WIN",
          PERFIL: "Desarrollador Full Stack PHP",
        },
        {
          TITULO: "PERFIL BUSCADO 2",
          CLIENTE: "SOAINT 2",
          "CLIENTE FINAL": "WIN 2",
          PERFIL: "Desarrollador Full Stack PHP 2",
        },
        {
          TITULO: "PERFIL BUSCADO 3",
          CLIENTE: "SOAINT 3",
          "CLIENTE FINAL": "WIN 3",
          PERFIL: "Desarrollador Full Stack PHP 3",
        },
      ],
      "Perfil Candidato": [
        {
          "Perfil y Experiencia 1": "PERFIL & EXPERIENCIA 1",
          "Perfil y Experiencia 2": "PERFIL & EXPERIENCIA 2",
          "Perfil y Experiencia 3": "PERFIL & EXPERIENCIA 3",
        },
      ],
      "Perfil DIGITALHUB": [
        {
          "Perfil y Experiencia DH1": "PERFIL & EXPERIENCIA DH 1",
          "Perfil y Experiencia DH2": "PERFIL & EXPERIENCIA DH 2",
          "Perfil y Experiencia DH3": "PERFIL & EXPERIENCIA DH 3",
        },
   
      ],
    },
    salario: [
      {
        TIT: "RECIBO POR HONORARIO",
        MONEDA: "S/.",
        "LIMITE INFERIOR": "1500",
        "LIMITE SUPERIOR": "2000",
      },
      {
        TIT: "PLANILLA COMPLETA",
        MONEDA: "S/.",
        "LIMITE INFERIOR": "2000",
        "LIMITE SUPERIOR": "2500",
      },
      {
        TIT: "PLANILLA MYPE",
        MONEDA: "S/.",
        "LIMITE INFERIOR": "1000",
        "LIMITE SUPERIOR": "1500",
      },
      {
        TIT: "COSTO POR HORA",
        MONEDA: "S/.",
        "LIMITE INFERIOR": "100",
        "LIMITE SUPERIOR": "200",
      },
    ],
    Contacto: [
        {
          "Celular 1": "999999999",
          "Celular 2": "888888888",
          "Correo Electrónico": "Correo@gmail.com",
        },
      ],
      Comentario: [
        {
          Comentario: `¿ Cuánto tiempo tienes en desarrollo y en específico con PHP?
          3 años y medios
          
          ¿Tiempo de experiencia con SQL Server ?
          2 años
          
          ¿Tienes disponibilidad para trabajar híbrido, 2 veces por semana en oficina en San Isidro?
          Me parece perfecto
          
          ¿Cuáles son tus expectativas económicas en recibos por honorarios?
          5000`,
        },
      ],
  };

  if (type === "perfil") {
    containerDiv = document.createElement("div"); // Div padre para todo el contenido
    containerDiv.classList.add("containerFlex");
    for (let category in newDetailsData[type]) {
      let containerTitlePerfil = document.createElement("div");
      let titlePerfil = document.createElement("p");
      titlePerfil.classList.add("titlePerfil");
      titlePerfil.innerHTML = category;
      let categoryDiv = document.createElement("div"); // Div para cada categoría
      categoryDiv.classList.add("gridContainerPerfil");
      newDetailsData[type][category].forEach((item) => {
        let itemDiv = document.createElement("div"); // Div para cada objeto individual dentro de la categoría
        itemDiv.classList.add("itemGrid");
        for (let itemKey in item) {
          let p = document.createElement("p");
          p.textContent = `${itemKey}: ${item[itemKey]}`;
          itemDiv.appendChild(p); // Añadir <p> al div del objeto individual
        }

        categoryDiv.appendChild(itemDiv);

        containerTitlePerfil.appendChild(titlePerfil);
        containerTitlePerfil.appendChild(categoryDiv); // Añadir el div del objeto individual al div de la categoría
      });
      containerDiv.appendChild(containerTitlePerfil); // Añadir el div de la categoría al div contenedor principal
    }
  } else if (type === "salario") {
    var detailHtml = newDetailsData[type].map(function (item) {
      return `<div><p><strong>${item.TIT}</strong></p>
                        <p>Moneda: ${item.MONEDA}</p>
                        <p>Limite Inferior: ${item["LIMITE INFERIOR"]}</p>
                        <p>Limite Superior: ${item["LIMITE SUPERIOR"]}</p></div>`;
    });
  } else if(type === "Contacto") {
    var detailHtml = newDetailsData[type].map(function (item) {
        return `<div><p><strong>Celular 1: </strong>${item["Celular 1"]}</p>
                <p><strong>Celular 2: </strong>${item["Celular 2"]}</p>
                <p><strong>Correo Electrónico: </strong>${item["Correo Electrónico"]}</p></div>`;
      });
  } else {
    var detailHtml = newDetailsData[type].map(function (item) {
        return `<div><p><strong>Comentario Reclutador</strong></p>
                <p>${item.Comentario}</p></div>`;
      });
  }

  if (
    detailRow &&
    detailRow.classList.contains("detail") &&
    detailRow.dataset.type === type
  ) {
    detailRow.remove();
    return;
  } else if (detailRow && detailRow.classList.contains("detail")) {
    detailRow.remove();
  }

  var newRow = document.createElement("tr");
  newRow.classList.add("detail");
  newRow.dataset.type = type;

  // Crea y añade cada nuevo 'div' al contenedor
  if (type === "salario") {
    var newTD = document.createElement("td");
    newTD.setAttribute("colspan", 7);
    var newContainer = document.createElement("div");
    newContainer.classList.add("gridContainerSalario");

    detailHtml.forEach(function (html) {
      var newDiv = document.createElement("div");
      newDiv.classList.add("item");
      newDiv.innerHTML = html;
      newContainer.appendChild(newDiv);
    });
  } else if(type === "perfil") {
    var newTD = document.createElement("td");
    newTD.setAttribute("colspan", 7);
    var newContainer = document.createElement("div");
    newContainer.classList.add("gridContainerPerfilBuscado");
    newContainer.appendChild(containerDiv);
  } else if(type === "Contacto") {
    var newTD = document.createElement("td");
    newTD.setAttribute("colspan", 7);
    var newContainer = document.createElement("div");
    newContainer.classList.add("gridContainerContacto");

    detailHtml.forEach(function (html) {
      var newDiv = document.createElement("div");
      newDiv.classList.add("item");
      newDiv.innerHTML = html;
      newContainer.appendChild(newDiv);
    });
  } else {
    var newTD = document.createElement("td");
    newTD.setAttribute("colspan", 5);
    var newContainer = document.createElement("div");
    newContainer.classList.add("gridContainerComentario");

    detailHtml.forEach(function (html) {
      var newDiv = document.createElement("div");
      newDiv.classList.add("item");
      newDiv.innerHTML = html;
      newContainer.appendChild(newDiv);
    });
  }
  newTD.appendChild(newContainer);
  newRow.appendChild(newTD);

  currentRow.parentNode.insertBefore(newRow, currentRow.nextElementSibling);
}
