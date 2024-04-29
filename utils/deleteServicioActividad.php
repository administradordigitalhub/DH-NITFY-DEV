<?php
require '../connection/DatabaseConnection.php'; // Asegúrate de incluir la clase DatabaseConnection
require '../models/ReportHoursModel.php'; // Incluye también tu modelo ReportHoursModel

// Obtener la conexión a la base de datos
$dbConnection = DatabaseConnection::getInstance();
$reportHoursModel = new ReportHoursModel($dbConnection);

// Obtener los datos del cuerpo de la solicitud
$data = json_decode(file_get_contents('php://input'), true);

// Validar y limpiar los datos aquí antes de procesarlos
$idCurso = $data['userId'];

// Suponiendo que tienes un método para eliminar un curso
$resultadoEliminacion = $reportHoursModel->deleteServicioActividades($idCurso);

// Devolver una respuesta
echo json_encode(['success' => $resultadoEliminacion]);
?>
