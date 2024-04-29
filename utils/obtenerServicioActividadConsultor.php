<?php
require '../connection/DatabaseConnection.php'; // Aseg��rate de incluir la clase DatabaseConnection
require '../models/ReportHoursModel.php'; // Incluir la clase ReportHoursModel

// Obtener la conexi��n a la base de datos a trav��s de DatabaseConnection
$dbConnection = DatabaseConnection::getInstance();

$reportHoursModel = new ReportHoursModel($dbConnection);

// Obtener el ID del usuario desde la solicitud AJAX
$data = json_decode(file_get_contents('php://input'), true);
$userId = $data['userId'];
// Utilizar la clase ReportHoursModel para obtener los cursos del usuario
$courses = $reportHoursModel->getServicioActividadesId($userId);

// Devolver los datos en formato JSON
echo json_encode($courses);
