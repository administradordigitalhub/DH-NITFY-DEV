<?php
require '../connection/DatabaseConnection.php'; // Asegúrate de incluir la clase DatabaseConnection
require '../models/ReportHoursModel.php'; // Incluye también tu modelo ReportHoursModel

// Obtener la conexión a la base de datos
$dbConnection = DatabaseConnection::getInstance();
$reportHoursModel = new ReportHoursModel($dbConnection);

// Obtener los datos del cuerpo de la solicitud
$data = json_decode(file_get_contents('php://input'), true);

// Validar y limpiar los datos aquí antes de procesarlos

$usuarioId = $data['usuarioId'];
$fechaInicio = $data['fechaInicio'];
$horaInicio = $data['horaInicio'];
//$fechaFin = $data['fechaFin'];
$horaFin = $data['horaFin'];
$esfuerzo = $data['esfuerzo'];
$actividadTarea = $data['actividadTarea'];
$solicitante = $data['solicitante'];
$resultado = $data['resultado'];
$comentarios = $data['comentarios'];
$modalidad =  $data['modalidad'];
$idOperacionServicio =  $data['idOperacionServicio'];
$idDeliveryManager = $data['idDeliveryManager'];
$deliveryManagerClienteNombre = $data['deliveryManagerClienteNombre'];
// ... obtener los demás campos ...

// Suponiendo que tienes un método para crear un nuevo registro de actividad
$resultadoCreacion = $reportHoursModel->createServicioActividades(
    $usuarioId,
    $fechaInicio,
    $horaInicio,
    $horaFin,
    $esfuerzo,
    $modalidad,
    $actividadTarea,
    $solicitante,
    $resultado,
    $comentarios,
    $idOperacionServicio,
    $idDeliveryManager,
    0,
    $deliveryManagerClienteNombre
);

// Devolver una respuesta
echo json_encode(['success' => $resultadoCreacion]);
