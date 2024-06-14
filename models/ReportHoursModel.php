<?php
class ReportHoursModel
{
    private $db;

    public function __construct($dbConnection)
    {
        $this->db = $dbConnection;
    }

    // public function getUserInfo($userId)
    // {
    //     $stmt = $this->db->prepare("SELECT NOMBRE_USUARIO, CORREO_USUARIO FROM USUARIO WHERE ID_USUARIO = ?");
    //     $stmt->bind_param("i", $userId);
    //     $stmt->execute();
    //     return $stmt->get_result()->fetch_assoc();
    // }

    public function getServicioActividadesIdConsultor($userId, $fechaInicio, $fechaFin)
    {
        $stmt = $this->db->prepare("
        SELECT
        a.id_servicio_actividad, 
        a.fecha_inicio, 
        a.hora_inicio, 
        a.hora_fin, 
        a.esfuerzo_hrs, 
        m.descripcion_modalidad, 
        a.actividad_tarea, 
        a.solicitante, 
        a.resultado, 
        a.notas 
        FROM 
        tbl_operacion_servicio_actividades AS a 
        JOIN tbl_conf_modalidad AS m ON a.id_modalidad = m.id_modalidad 
        WHERE a.id_consultor = ? 
        AND a.fecha_inicio BETWEEN ? AND ?  
        ORDER BY a.fecha_inicio DESC, a.hora_inicio DESC;");
        $stmt->bind_param("iss", $userId, $fechaInicio, $fechaFin);
        // print_r($stmt);
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getExportarExcel($userId,  $fechaInicio, $fechaFin)
    {
        $stmt = $this->db->prepare("
                                    SELECT 
                                    DATE_FORMAT(a.fecha_inicio,'%d/%m/%Y') as 'FECHA INICIO',
                                    a.hora_inicio as 'HORA INICIO', 
                                    a.hora_fin as 'HORA FIN', 
                                    FORMAT(a.esfuerzo_hrs, 2, 'de_US') AS `ESFUERZO`, 
                                    a.actividad_tarea as 'ACTIVIDAD/TAREA', 
                                    a.solicitante as 'SOLICITANTE', 
                                    a.resultado as 'RESULTADO', 
                                    a.notas as 'NOTAS', 
                                    m.descripcion_modalidad as 'MODALIDAD' 
                                    FROM 
                                    tbl_operacion_servicio_actividades AS a 
                                    JOIN tbl_conf_modalidad AS m ON a.id_modalidad = m.id_modalidad 
                                    WHERE a.id_consultor = ?
                                    AND a.fecha_inicio BETWEEN ? AND ?  
                                    ORDER BY a.fecha_inicio DESC, a.hora_inicio DESC ;");
                                    $stmt->bind_param("iss", $userId, $fechaInicio, $fechaFin);
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    //obtenerDatosUsuarioPorDNI

    public function getConfModalidad()
    {
        $stmt = $this->db->prepare("SELECT * FROM tbl_conf_modalidad");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getConf()
    {
        $stmt = $this->db->prepare("SELECT * FROM tbl_configuracion");
        $stmt->execute();
        // $resultado = $stmt->get_result();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
    public function getConsultorId($userId)
    {
        $stmt = $this->db->prepare("SELECT id_consultor,nombres, apellidos FROM tbl_consultor WHERE id_consultor = ?;");
        $stmt->bind_param("i", $userId);
        $stmt->execute();
        $resultado = $stmt->get_result();
        if ($resultado->num_rows > 0) {
            return $resultado->fetch_assoc(); // Devuelve un único usuario
        } else {
            return null; // No se encontró el usuario
        }
    }

    public function getConsultor()
    {
        $stmt = $this->db->prepare("SELECT c.nombres, c.correo_personal, c.correo_dh, MAX(o.fecha_inicio) AS fecha_inicio 
            FROM tbl_consultor c 
            INNER JOIN tbl_operacion_servicio_actividades o ON c.id_consultor = o.id_consultor 
            WHERE c.estado_consultor = 'A'
            GROUP BY c.nombres, c.correo_personal, c.correo_dh; ");
        $stmt->execute();
        $result = $stmt->get_result();
        $users = $result->fetch_all(MYSQLI_ASSOC);
        return $users;
    }
    public function getAlertas($alertaId)
    {
        $stmt = $this->db->prepare("SELECT condicion_alertas , cuerpo_alertas , remite_alertas , asunto_alertas, correo_asunto_prefijo from tbl_conf_alertas where id_alertas=? and estado_alertas = 'A';
            ");
        $stmt->bind_param("i", $alertaId);
        $stmt->execute();
        $resultado = $stmt->get_result();
        if ($resultado->num_rows > 0) {
            return $resultado->fetch_assoc(); // Devuelve un único usuario
        } else {
            return null; // No se encontró el usuario
        }
    }

    public function getServicioActividadesId($userId)
    {
        $stmt = $this->db->prepare("
                            SELECT 
                            a.id_servicio_actividad,
                            a.fecha_inicio,
                            a.hora_inicio, 
                            a.hora_fin, 
                            a.esfuerzo_hrs, 
                            a.actividad_tarea, 
                            a.solicitante, 
                            a.resultado, 
                            a.notas, 
                            a.id_modalidad 
                            FROM 
                            tbl_operacion_servicio_actividades AS a 
                            JOIN tbl_consultor AS c ON c.id_consultor  = a.id_consultor 
                            WHERE a.id_servicio_actividad  = ?;");
        $stmt->bind_param("i", $userId);
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getServicioConsultor($userId)
    {
        // Preparar la sentencia SQL para seleccionar la información del equipo específico
        $stmt = $this->db->prepare("
                            SELECT 
        os.nombre_cliente_final, 
        os.nombre_cliente, 
        os.id_operacion_servicio, 
        os.id_delivery_manager, 
        os.delivery_manager_cliente_nombre, 
        oscd.area, 
        oscd.equipo_trabajo_asignado, 
        oscd.lider_equipo, 
        CONCAT(c.nombres, ' ', c.apellidos) AS nombre_del_consultor 
        FROM tbl_consultor c 
        JOIN tbl_operacion_servicio os ON c.id_operacion_servicio = os.id_operacion_servicio 
        JOIN tbl_operacion_servicio_consultor osc ON os.id_operacion_servicio = osc.id_operacion_servicio 
        JOIN tbl_operacion_servicio_consultor_detalle oscd ON osc.id_OS_consultor = oscd.id_OS_consultor 
        WHERE c.id_consultor = osc.id_consultor and c.id_consultor=?;
    ");

        // Vincular el ID del equipo como parámetro a la sentencia preparada
        $stmt->bind_param("i", $userId);

        // Ejecutar la sentencia preparada
        $stmt->execute();

        // Obtener y devolver los resultados de la consulta
        return $stmt->get_result()->fetch_assoc(); // fetch_assoc si solo esperas un resultado
    }


    public function updateRegistroActividades(
        $idCurso,
        $fechaInicio,
        $horaInicio,
        $horaFin,
        $esfuerzo,
        $modalidad,
        $actividadTarea,
        $solicitante,
        $resultado,
        $comentarios
    ) {

        // Preparar la sentencia SQL para actualizar la tabla registro_actividades
        $stmt = $this->db->prepare("UPDATE tbl_operacion_servicio_actividades 
                                    SET 
                                    fecha_inicio = ?, 
                                    hora_inicio = ?, 
                                    hora_fin = ?, 
                                    esfuerzo_hrs = ?, 
                                    id_modalidad = ?, 
                                    actividad_tarea = ?, 
                                    solicitante = ?, 
                                    resultado = ?, 
                                    notas = ?
                                    WHERE id_servicio_actividad = ?");
        // $stmt->bind_param("sssdissss", $fechaInicio, $horaInicio, $horaFin, $esfuerzo, $modalidad, $actividadTarea, $solicitante, $resultado, $comentarios, $idCurso);
        $stmt->bind_param("sssdisssss", $fechaInicio, $horaInicio, $horaFin, $esfuerzo, $modalidad, $actividadTarea, $solicitante, $resultado, $comentarios, $idCurso);

        $stmt->execute();
        return $stmt->affected_rows > 0;
    }

    public function createServicioActividades(
        $usuarioId,
        $fechaInicio,
        $horaInicio,
        //$fechaFin,
        $horaFin,
        $esfuerzo,
        $modalidad,
        $actividadTarea,
        $solicitante,
        $resultado,
        $comentarios,
        $idOperacionServicio,
        $idDeliveryManager,
        $deliveryManagerClienteNombreAprobacion,
        $deliveryManagerClienteNombre
    ) {
        // Preparar la sentencia SQL para insertar una nueva actividad
        $stmt = $this->db->prepare("INSERT INTO tbl_operacion_servicio_actividades(
                                                id_operacion_servicio, 
                                                id_consultor, 
                                                fecha_inicio, 
                                                hora_inicio, 
                                                hora_fin, 
                                                esfuerzo_hrs, 
                                                id_modalidad, 
                                                actividad_tarea, 
                                                solicitante, 
                                                resultado, 
                                                notas, 
                                                id_delivery_manager, 
                                                delivery_manager_aprobacion, 
                                                delivery_manager_cliente_nombre) 
                                                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

        // Asumiendo que $esfuerzo es un número (integer)
        // Si todos son strings, reemplaza 'i' con 's'
        $stmt->bind_param("iisssdissssiis", $idOperacionServicio,  $usuarioId, $fechaInicio, $horaInicio, $horaFin, $esfuerzo, $modalidad, $actividadTarea, $solicitante, $resultado, $comentarios,  $idDeliveryManager, $deliveryManagerClienteNombreAprobacion, $deliveryManagerClienteNombre);

        $stmt->execute();
        // print_r($stmt->affected_rows);
        return $stmt->affected_rows > 0;
    }

    public function deleteServicioActividades($idCurso)
    {
        // Preparar la consulta SQL para eliminar el curso por su ID
        $stmt = $this->db->prepare("DELETE FROM tbl_operacion_servicio_actividades WHERE id_servicio_actividad = ?");
        $stmt->bind_param("i", $idCurso);

        // Ejecutar la consulta
        if ($stmt->execute()) {
            // Si la eliminación fue exitosa, devuelve true
            return true;
        } else {
            // Si hubo un error en la eliminación, devuelve false
            return false;
        }
    }



    public function authenticateConsultor($dni, $dias_buscar)
    {
        // Preparar la consulta SQL para verificar si el usuario con el DNI proporcionado existe
        $stmt = $this->db->prepare("SELECT * FROM tbl_consultor WHERE numero_documento_identidad = ?");
        $stmt->bind_param("i", $dni);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            // El usuario con el DNI existe, autenticación exitosa
            // Puedes guardar información del usuario en la sesión si lo deseas
            $userData = $result->fetch_assoc();
            $_SESSION['userId'] = $userData['id_consultor']; // Guardar el ID del usuario en la sesión
            $fechaInicioBuscar = date('Y-m-d', strtotime('-' . $dias_buscar . 'days'));
            $fechaFinBuscar = date('Y-m-d');
            $_SESSION['fechaInicioBuscar'] = $fechaInicioBuscar;
            $_SESSION['fechaFinBuscar'] = $fechaFinBuscar;
            return true;
        } else {
            // El usuario no existe o hay más de un usuario con el mismo DNI
            return false;
        }
    }




    // Puedes agregar más métodos para recuperar información de otras tablas según sea necesario
}
