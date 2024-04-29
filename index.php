<?php
session_start();
date_default_timezone_set('America/Lima');
require 'db/DatabaseConnection.php';
require 'models/ReportHoursModel.php';
require 'controllers/ReportHoursController.php';
$fecha_actual = date('Y-m-d H:i:s');
$dbConnection = DatabaseConnection::getInstance(); // Obtener la conexi��n a la base de datos
$model = new ReportHoursModel($dbConnection);
$controller = new ReportHoursController($model);

// Comprobar si el usuario est�� autenticado

if (isset($_POST['fechaInicioBuscar']) && !empty($_POST['fechaInicioBuscar']) && isset($_POST['fechaFinBuscar']) && !empty($_POST['fechaFinBuscar'])) {
    $fechaInicioBuscar = $_POST['fechaInicioBuscar'];
    $fechaFinBuscar = $_POST['fechaFinBuscar'];
} else {
    $fechaInicioBuscar = date('Y-m-d', strtotime('-7 days'));
    $fechaFinBuscar = date('Y-m-d');
}

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'login') {
        $controller->login();
    } elseif ($_GET['action'] == 'listConsultor'){
        $controller->listConsultor($fechaInicioBuscar, $fechaFinBuscar);
    }
} else {
    // Redirecciona a la p�gina de inicio de sesi�n por defecto
    header('Location: index.php?action=login');
    exit;
}
