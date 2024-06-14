<?php

class CandidatosModel
{

    private $db;

    public function __construct($dbConnection)
    {
        $this->db = $dbConnection;
    }

    public function list($experiencias = [])
    {
        $sql = "SELECT 
        c.id_candidato, 
        c.nombre_completo2_candidato, 
        c.nombre_archivo_candidato,
        ic.descripcion_ingles_conversacional,
        c.comentario_reclutador_candidato
        FROM tbl_candidato c 
        JOIN tbl_conf_ingles_conversacional ic ON C.nivel_ingles_conversacional_candidato = ic.id_ingles_conversacional";

        $params = [];
        $types = "";

        if (!empty($experiencias)) {
            $sql .= " WHERE ";
            $conditions = [];

            foreach ($experiencias as $experiencia) {
                // Agregar condiciones para cada columna que debe ser comparada
                $conditions[] = "DH_perfil_experiencia1_candidato = ?";
                $conditions[] = "DH_perfil_experiencia2_candidato = ?";
                $conditions[] = "DH_perfil_experiencia3_candidato = ?";
                // Agregar tres veces el mismo valor al array de parámetros, uno para cada columna
                $params[] = $experiencia;
                $params[] = $experiencia;
                $params[] = $experiencia;
                $types .= 'sss';
            }

            // Unir las condiciones con OR entre las diferentes experiencias
            // y con AND entre las mismas experiencias en diferentes campos
            $sql .= '(' . implode(' OR ', array_map(function ($exp) {
                return '(' . implode(' OR ', $exp) . ')';
            }, array_chunk($conditions, 3))) . ')';
        }

        $stmt = $this->db->prepare($sql);

        // Vincular parámetros si existen
        if (!empty($params)) {
            $stmt->bind_param($types, ...$params);
        }

        $stmt->execute();
        $result = $stmt->get_result();
        $candidatos = [];
        while ($row = $result->fetch_assoc()) {
            $candidatos[] = $row;
        }
        $stmt->close();
        return $candidatos;
    }

    public function getConfPerfil()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_conf_perfil`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getConfIngles()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_conf_ingles_conversacional`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getConfPerfilBuscado()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_perfil_solicitado`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getConfPerfilCandidato()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_conf_perfil`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
    public function getTipoRemuneracion()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_tipo_remuneracion`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
    public function getTipoMoneda()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_tipo_moneda`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getReclutador()
    {
        $stmt = $this->db->prepare("SELECT id_reclutador,
        CASE
          WHEN COALESCE(TRIM(nombres), '') = '' AND COALESCE(TRIM(apellidos), '') = '' THEN
            COALESCE(nombre_plataforma_reclutador, '')
          ELSE
            CONCAT(
              COALESCE(TRIM(nombres), ''),
              CASE WHEN TRIM(nombres) <> '' AND TRIM(apellidos) <> '' THEN ' ' ELSE '' END,
              COALESCE(TRIM(apellidos), ''),
              CASE WHEN nombre_plataforma_reclutador IS NOT NULL AND TRIM(nombre_plataforma_reclutador) <> '' THEN CONCAT('/', nombre_plataforma_reclutador) ELSE '' END
            )
        END AS descripcion
      FROM 
        tbl_conf_reclutador;");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getDisponibilidad()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_conf_disponibilidad`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getAsistencia()
    {
        $stmt = $this->db->prepare("SELECT * FROM `tbl_conf_asistencia_laboral`");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getProfile($c_id_profile = null)
    {

        if (null === $c_id_profile) {
            return [];
        }

        $profiles = [
            'Perfil Buscado' => [],
            'Perfil Candidato' => [],
            'Perfil DIGITALHUB' => []
        ];

        // Primera consulta
        $stmt = $this->db->prepare("SELECT 
        dpb.descripcion_perfil_buscado as 'TITULO',
        oc.nombre_operacion_cliente as 'CLIENTE',
        cf.nombre_cliente_final as 'CLIENTE FINAL',
        ps.descripcion_perfil_solicitado as 'PERFIL'
        FROM tbl_candidato c 
        JOIN tbl_detalle_perfil_buscado_candidato dpb ON c.id_candidato = dpb.id_candidato
        JOIN tbl_perfil_solicitado ps ON dpb.id_perfil_solicitado = ps.Id_perfil_solicitado
        JOIN tbl_cliente_final cf ON ps.id_cliente_final = cf.id_cliente_final
        JOIN tbl_operacion_cliente oc ON cf.id_operacion_cliente = oc.id_operacion_cliente
        WHERE c.id_candidato = dpb.id_candidato AND c.id_candidato = ?
        ORDER BY dpb.descripcion_perfil_buscado;");
        $stmt->bind_param("i", $c_id_profile);
        $stmt->execute();
        $result = $stmt->get_result();
        while ($row = $result->fetch_assoc()) {
            $profiles['Perfil Buscado'][] = $row;
        }
        $stmt->close();

        $stmt = $this->db->prepare("SELECT 
        cp1.descripcion_perfil as 'Perfil y Experiencia 1',
        cp2.descripcion_perfil as 'Perfil y Experiencia 2',
        cp3.descripcion_perfil as 'Perfil y Experiencia 3',
        cpdh1.descripcion_perfil as 'Perfil y Experiencia DH1',
        cpdh2.descripcion_perfil as 'Perfil y Experiencia DH2',
        cpdh3.descripcion_perfil as 'Perfil y Experiencia DH3'
    FROM tbl_candidato c
    JOIN tbl_conf_perfil cp1 ON c.perfil_experiencia1_candidato = cp1.id_perfil
    JOIN tbl_conf_perfil cp2 ON c.perfil_experiencia2_candidato = cp2.id_perfil
    JOIN tbl_conf_perfil cp3 ON c.perfil_experiencia3_candidato = cp3.id_perfil
    JOIN tbl_conf_perfil cpdh1 ON c.DH_perfil_experiencia1_candidato = cpdh1.id_perfil
    JOIN tbl_conf_perfil cpdh2 ON c.DH_perfil_experiencia2_candidato = cpdh2.id_perfil
    JOIN tbl_conf_perfil cpdh3 ON c.DH_perfil_experiencia3_candidato = cpdh3.id_perfil
    WHERE c.id_candidato = ?;");
        $stmt->bind_param("i", $c_id_profile);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            // Perfil Candidato
            $perfilCandidato = [];
            if ($row['Perfil y Experiencia 1'] !== null && $row['Perfil y Experiencia 1'] !== "") {
                $perfilCandidato['Perfil y Experiencia 1'] = $row['Perfil y Experiencia 1'];
            }
            if ($row['Perfil y Experiencia 2'] !== null && $row['Perfil y Experiencia 2'] !== "") {
                $perfilCandidato['Perfil y Experiencia 2'] = $row['Perfil y Experiencia 2'];
            }
            if ($row['Perfil y Experiencia 3'] !== null && $row['Perfil y Experiencia 3'] !== "") {
                $perfilCandidato['Perfil y Experiencia 3'] = $row['Perfil y Experiencia 3'];
            }
            if (!empty($perfilCandidato)) {
                $profiles['Perfil Candidato'][] = $perfilCandidato;
            }

            // Perfil DIGITALHUB
            $perfilDigitalHub = [];
            if ($row['Perfil y Experiencia DH1'] !== null && $row['Perfil y Experiencia DH1'] !== "") {
                $perfilDigitalHub['Perfil y Experiencia DH1'] = $row['Perfil y Experiencia DH1'];
            }
            if ($row['Perfil y Experiencia DH2'] !== null && $row['Perfil y Experiencia DH2'] !== "") {
                $perfilDigitalHub['Perfil y Experiencia DH2'] = $row['Perfil y Experiencia DH2'];
            }
            if ($row['Perfil y Experiencia DH3'] !== null && $row['Perfil y Experiencia DH3'] !== "") {
                $perfilDigitalHub['Perfil y Experiencia DH3'] = $row['Perfil y Experiencia DH3'];
            }
            if (!empty($perfilDigitalHub)) {
                $profiles['Perfil DIGITALHUB'][] = $perfilDigitalHub;
            }
        }
        $stmt->close();

        return $profiles;
    }

    public function getSalary($c_id_salary = null)
    {
        $stmt = $this->db->prepare("SELECT 
        tr.descripcion_tipo_remuneracion, 
        tm.simbolo_tipo_moneda,
        rc.limite_inferior_remuneracion_candidato,
        rc.limite_superior_remuneracion_candidato
        FROM tbl_remuneracion_candidato rc 
        JOIN tbl_tipo_remuneracion tr ON rc.id_tipo_remuneracion = tr.id_tipo_remuneracion
        JOIN tbl_tipo_moneda tm ON rc.id_tipo_moneda = tm.id_tipo_moneda
        JOIN tbl_candidato c ON rc.id_candidato = c.id_candidato
        WHERE rc.id_candidato = c.id_candidato AND rc.id_candidato = ?;");
        $stmt->bind_param("i", $c_id_salary);
        $stmt->execute();
        $result = $stmt->get_result();
        $salary = [];
        while ($row = $result->fetch_assoc()) {
            $salary[] = $row;
        }
        $stmt->close();

        return $salary;
    }

    public function getcontact($c_id_contact = null)
    {
        $stmt = $this->db->prepare("SELECT 
        celular_principal_candidato,
        celular_secundario_candidato, 
        telefono_fijo_candidato,
        correo_principal_candidato,
        correo_secundario_candidato
        FROM tbl_candidato
        WHERE id_candidato = ?;");
        $stmt->bind_param("i", $c_id_contact);
        $stmt->execute();
        $result = $stmt->get_result();

        $contact = [];
        while ($row = $result->fetch_assoc()) {
            $filteredRow = array_filter($row, function ($value) {
                return ($value !== null) && ($value !== "");
            });
            if (!empty($filteredRow)) {
                $contact[] = $filteredRow;
            }
        }
        $stmt->close();

        return $contact;
    }

    public function getcomment($c_id_comment = null)
    {
        $stmt = $this->db->prepare("SELECT 
            comentario_reclutador_candidato
            FROM tbl_candidato
            WHERE id_candidato = ?;");
        $stmt->bind_param("i", $c_id_comment);
        $stmt->execute();
        $result = $stmt->get_result();

        $comment = [];
        while ($row = $result->fetch_assoc()) {
            $filteredRow = array_filter($row, function ($value) {
                return ($value !== null) && ($value !== ""); // Filtra los valores nulos
            });
            if (!empty($filteredRow)) {
                $comment[] = $filteredRow;
            }
        }
        $stmt->close();

        return $comment;
    }

    // Función para registrar un candidato y sus detalles relacionados
    public function registrarCandidato($data, $perfiles, $remuneraciones)
    {
        // Iniciar la transacción
        $this->db->begin_transaction();
        try {
            $nombreCompleto1 = $data['nombres'] . " " . $data['apellidos'];
            $nombreCompleto2 = $data['apellidos'] . " " . $data['nombres'];
            $rutaArchivo = "uploads/" . $data['curriculum'];
            $version = "1.0.";
            $estado = "1";
            $estadoPerfil = "1";
            $estadoRemuneracion = "1";
            // Insertar en tbl_candidato
            $stmt = $this->db->prepare("INSERT INTO tbl_candidato (
                    nombres_candidato, apellidos_candidato, nombre_completo1_candidato, nombre_completo2_candidato,
                    anio_inicio_actividad_laboral_candidato, anio_experiencia_total_candidato, perfil_experiencia1_candidato,
                    perfil_experiencia2_candidato, perfil_experiencia3_candidato, DH_perfil_experiencia1_candidato,
                    DH_perfil_experiencia2_candidato, DH_perfil_experiencia3_candidato, celular_principal_candidato,
                    celular_secundario_candidato, telefono_fijo_candidato, correo_principal_candidato, correo_secundario_candidato,
                    direccion_candidato, comentario_reclutador_candidato, comentario_fecha_nacimiento_candidato, 
                    usuario_creacion_candidato, fecha_hora_creacion_candidato, usuario_ultima_modificacion_candidato,
                    fecha_hora_ultima_modificacion_candidato, nombre_archivo_candidato, ruta_archivo_candidato,
                    nivel_ingles_candidato, nivel_ingles_conversacional_candidato, version_candidato, estado_candidato,
                    id_reclutador, id_disponibilidad, id_asistencia_laboral
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '7', NOW(), '4', NOW(), ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param(
                'sssssssssssssssssssssssssiiii',
                $data['nombres'],
                $data['apellidos'],
                $nombreCompleto1,
                $nombreCompleto2,
                $data['inicioActividad'],
                $data['aniosExperiencia'],
                $data['perfilCandidato1'],
                $data['perfilCandidato2'],
                $data['perfilCandidato3'],
                $data['perfilCandidatoDH1'],
                $data['perfilCandidatoDH2'],
                $data['perfilCandidatoDH3'],
                $data['celularPrincipal'],
                $data['celularSecundario'],
                $data['telefonoFijo'],
                $data['correoPrincipal'],
                $data['correoSecundario'],
                $data['direccion'],
                $data['comentarioReclutador'],
                $data['fechaNacimiento'],
                //$data['usuario_creacion_candidato'], id del usuario
                //$data['usuario_ultima_modificacion_candidato'], id del usuario
                $data['curriculum'],
                $rutaArchivo,
                $data['nivelIngles'],
                $data['nivelInglesDH'],
                $version,
                $estado,
                $data['reclutador'],
                $data['disponibilidad'],
                $data['asistencia']
            );
            $stmt->execute();
            $candidatoId = $this->db->insert_id;

            // Insertar en tbl_detalle_perfil_buscado_candidato
            $stmt = $this->db->prepare("INSERT INTO tbl_detalle_perfil_buscado_candidato (
                    descripcion_perfil_buscado, anio_experiencia_perfil_buscado, estado_perfil_buscado,
                    id_candidato, id_perfil_solicitado
                ) VALUES (?, ?, ?, ?, ?)");
            foreach ($perfiles as $perfil) {
                $stmt->bind_param(
                    'ssiii',
                    $perfil['titulo'],
                    $perfil['totalAniosExperiencia'],
                    $estadoPerfil,
                    $candidatoId,
                    $perfil['perfil']
                );
                $stmt->execute();
            }

            // Insertar en tbl_remuneracion_candidato
            $stmt = $this->db->prepare("INSERT INTO tbl_remuneracion_candidato (
                    limite_inferior_remuneracion_candidato, limite_superior_remuneracion_candidato, estado_remuneracion_candidato,
                    id_candidato, id_tipo_remuneracion, id_tipo_moneda
                ) VALUES (?, ?, ?, ?, ?, ?)");
            foreach ($remuneraciones as $remuneracion) {
                $stmt->bind_param(
                    'ddiiii',
                    $remuneracion['limiteInferior'],
                    $remuneracion['limiteSuperior'],
                    $estadoRemuneracion,
                    $candidatoId,
                    $remuneracion['tipoRemuneracionValue'],
                    $remuneracion['tipoMonedaValue']
                );
                $stmt->execute();
            }

            $this->db->commit();
            return true;
        } catch (Exception $e) {
            $this->db->rollback();
            return false;
        }
    }

    public function editarCandidato($id, $data, $perfiles, $remuneraciones)
    {
        // Iniciar la transacción
        $this->db->begin_transaction();
        try {
            $nombreCompleto1 = $data['nombres'] . " " . $data['apellidos'];
            $nombreCompleto2 = $data['apellidos'] . " " . $data['nombres'];
            $rutaArchivo = "uploads/" . $data['curriculum'];
            $version = "1.1.";  // Suponiendo que la versión cambia con cada edición
            $estado = "1";
            $estadoPerfil = "1";
            $estadoRemuneracion = "1";
            // print_r($id);
            // Actualizar tbl_candidato
            $stmt = $this->db->prepare("UPDATE tbl_candidato SET
                    nombres_candidato = ?,
                    apellidos_candidato = ?,
                    nombre_completo1_candidato = ?,
                    nombre_completo2_candidato = ?,
                    anio_inicio_actividad_laboral_candidato = ?,
                    anio_experiencia_total_candidato = ?,
                    perfil_experiencia1_candidato = ?,
                    perfil_experiencia2_candidato = ?,
                    perfil_experiencia3_candidato = ?,
                    DH_perfil_experiencia1_candidato = ?,
                    DH_perfil_experiencia2_candidato = ?,
                    DH_perfil_experiencia3_candidato = ?,
                    celular_principal_candidato = ?,
                    celular_secundario_candidato = ?,
                    telefono_fijo_candidato = ?,
                    correo_principal_candidato = ?,
                    correo_secundario_candidato = ?,
                    direccion_candidato = ?,
                    comentario_reclutador_candidato = ?,
                    comentario_fecha_nacimiento_candidato = ?,
                    usuario_ultima_modificacion_candidato = '4',
                    fecha_hora_ultima_modificacion_candidato = NOW(),
                    nombre_archivo_candidato = ?,
                    ruta_archivo_candidato = ?,
                    nivel_ingles_candidato = ?,
                    nivel_ingles_conversacional_candidato = ?,
                    version_candidato = ?,
                    estado_candidato = ?,
                    id_reclutador = ?,
                    id_disponibilidad = ?,
                    id_asistencia_laboral = ?
                WHERE id_candidato = ?");
            $stmt->bind_param(
                'sssssssssssssssssssssssssiiiis',
                $data['nombres'],
                $data['apellidos'],
                $nombreCompleto1,
                $nombreCompleto2,
                $data['inicioActividad'],
                $data['aniosExperiencia'],
                $data['perfilCandidato1'],
                $data['perfilCandidato2'],
                $data['perfilCandidato3'],
                $data['perfilCandidatoDH1'],
                $data['perfilCandidatoDH2'],
                $data['perfilCandidatoDH3'],
                $data['celularPrincipal'],
                $data['celularSecundario'],
                $data['telefonoFijo'],
                $data['correoPrincipal'],
                $data['correoSecundario'],
                $data['direccion'],
                $data['comentarioReclutador'],
                $data['fechaNacimiento'],
                $data['curriculum'],
                $rutaArchivo,
                $data['nivelIngles'],
                $data['nivelInglesDH'],
                $version,
                $estado,
                $data['reclutador'],
                $data['disponibilidad'],
                $data['asistencia'],
                $id
            );
            $stmt->execute();

            if ($stmt === false) {
                throw new Exception("MySQL prepare error: " . $this->db->error);
            }
            // Actualizar tbl_detalle_perfil_buscado_candidato
            // Puedes optar por eliminar todos los perfiles anteriores y agregar los nuevos
            // o actualizarlos uno por uno si tienes un ID de perfil en cada uno
            $this->db->query("DELETE FROM tbl_detalle_perfil_buscado_candidato WHERE id_candidato = $id");
            $stmt = $this->db->prepare("INSERT INTO tbl_detalle_perfil_buscado_candidato (
                    descripcion_perfil_buscado, anio_experiencia_perfil_buscado, estado_perfil_buscado,
                    id_candidato, id_perfil_solicitado
                ) VALUES (?, ?, ?, ?, ?)");
            foreach ($perfiles as $perfil) {
                $stmt->bind_param(
                    'ssiii',
                    $perfil['titulo'],
                    $perfil['totalAniosExperiencia'],
                    $estadoPerfil,
                    $id,
                    $perfil['perfil']
                );
                $stmt->execute();
            }

            // Actualizar tbl_remuneracion_candidato
            // Similar al perfil, puedes eliminar y reinsertar o actualizar cada uno
            $this->db->query("DELETE FROM tbl_remuneracion_candidato WHERE id_candidato = $id");
            $stmt = $this->db->prepare("INSERT INTO tbl_remuneracion_candidato (
                    limite_inferior_remuneracion_candidato, limite_superior_remuneracion_candidato, estado_remuneracion_candidato,
                    id_candidato, id_tipo_remuneracion, id_tipo_moneda
                ) VALUES (?, ?, ?, ?, ?, ?)");
            foreach ($remuneraciones as $remuneracion) {
                $stmt->bind_param(
                    'ddiiii',
                    $remuneracion['limiteInferior'],
                    $remuneracion['limiteSuperior'],
                    $estadoRemuneracion,
                    $id,
                    $remuneracion['tipoRemuneracionValue'],
                    $remuneracion['idMoneda']
                );
                $stmt->execute();
            }

            $this->db->commit();
            return true;
        } catch (Exception $e) {
            $this->db->rollback();
            return false;
        }
    }


    public function getCandidatoCompleto($id_candidato)
    {
        // Recuperar información básica del candidato
        $candidatoStmt = $this->db->prepare("
            SELECT 
                nombres_candidato,
                apellidos_candidato,
                direccion_candidato,
                comentario_fecha_nacimiento_candidato,
                nivel_ingles_candidato,
                nivel_ingles_conversacional_candidato,
                nombre_archivo_candidato,
                celular_principal_candidato,
                celular_secundario_candidato,
                telefono_fijo_candidato,
                correo_principal_candidato,
                correo_secundario_candidato,
                anio_inicio_actividad_laboral_candidato,
                anio_experiencia_total_candidato,
                perfil_experiencia1_candidato,
                perfil_experiencia2_candidato,
                perfil_experiencia3_candidato,
                DH_perfil_experiencia1_candidato,
                DH_perfil_experiencia2_candidato,
                DH_perfil_experiencia3_candidato,
                comentario_reclutador_candidato,
                id_reclutador,
                id_disponibilidad,
                id_asistencia_laboral
            FROM tbl_candidato
            WHERE id_candidato = ?
        ");
        $candidatoStmt->bind_param("i", $id_candidato);
        $candidatoStmt->execute();
        $candidato = $candidatoStmt->get_result()->fetch_assoc();

        // Recuperar detalles de perfiles buscados
        $perfilStmt = $this->db->prepare("
            SELECT 
                id_perfil_solicitado,
                anio_experiencia_perfil_buscado
            FROM tbl_detalle_perfil_buscado_candidato
            WHERE id_candidato = ?
        ");
        $perfilStmt->bind_param("i", $id_candidato);
        $perfilStmt->execute();
        $perfilesBuscados = $perfilStmt->get_result()->fetch_all(MYSQLI_ASSOC);

        // Recuperar información de remuneraciones
        $remuneracionStmt = $this->db->prepare("
        SELECT 
        rc.id_remuneracion_candidato as id,
        rc.id_tipo_remuneracion, 
        tr.descripcion_tipo_remuneracion,
        rc.id_tipo_moneda,
        tm.simbolo_tipo_moneda,
        rc.limite_inferior_remuneracion_candidato,
        rc.limite_superior_remuneracion_candidato
        FROM tbl_remuneracion_candidato rc
        JOIN tbl_tipo_remuneracion tr ON rc.id_tipo_remuneracion = tr.id_tipo_remuneracion
        JOIN tbl_tipo_moneda tm ON rc.id_tipo_moneda = tm.id_tipo_moneda
        WHERE rc.id_candidato = ?;
        ");
        $remuneracionStmt->bind_param("i", $id_candidato);
        $remuneracionStmt->execute();
        $remuneraciones = $remuneracionStmt->get_result()->fetch_all(MYSQLI_ASSOC);

        // Combinar toda la información en un solo array
        return [
            'Candidato' => $candidato,
            'PerfilesBuscados' => $perfilesBuscados,
            'Remuneraciones' => $remuneraciones
        ];
    }
    public function eliminarRemuneracion($id)
    {
        $stmt = $this->db->prepare("DELETE FROM `tbl_remuneracion_candidato` WHERE id_remuneracion_candidato = ?");

        $stmt->bind_param("i", $id);

        $stmt->execute();

        if ($stmt->affected_rows > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function actualizarRemuneracion($limiteInferior, $limiteSuperior, $tipoRemuneracion, $tipoMoneda, $id)
    {
        $stmt = $this->db->prepare("UPDATE tbl_remuneracion_candidato SET 
            limite_inferior_remuneracion_candidato = ?,
            limite_superior_remuneracion_candidato = ?,
            id_tipo_remuneracion = ?,
            id_tipo_moneda = ?
            WHERE id_remuneracion_candidato = ?");

        $stmt->bind_param("ddiii", $limiteInferior, $limiteSuperior, $tipoRemuneracion, $tipoMoneda, $id);

        $stmt->execute();

        if ($stmt->affected_rows > 0) {
            return true;
        } else {
            return false;
        }
    }
}
