<?php
session_start();
require '../connection/DatabaseConnection.php'; // Incluye la clase DatabaseConnection
require '../models/ReportHoursModel.php'; // Incluye la clase ReportHoursModel

// Obtiene la conexi贸n a la base de datos
$dbConnection = DatabaseConnection::getInstance();
$reportHoursModel = new ReportHoursModel($dbConnection);

// Leer los datos JSON de la solicitud POST
$data = json_decode(file_get_contents('php://input'), true);
$userId = $data['userId'] ?? null; // Usa el userId enviado desde el cliente
$fechaInicioBuscar = $data['fechaInicioBuscar'] ?? null; // Usa el userId enviado desde el cliente
$fechaFinBuscar = $data['fechaFinBuscar'] ?? null; // Usa el userId enviado desde el cliente

// print_r('fecha fiin ' . $fechaFinBuscar);
// Utiliza la clase ReportHoursModel para obtener los cursos del usuario
$courses = $reportHoursModel->getServicioConsultor($userId);

// Devuelve los datos en formato JSON
header('Content-Type: application/json');
echo json_encode($courses);
