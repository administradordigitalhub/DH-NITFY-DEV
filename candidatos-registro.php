<?php
session_start(); // Iniciar manejo de sesiones

// Comprobar si existe una sesión de usuario
if (!isset($_SESSION['usuario_id'])) {
    header('Location: login.php'); 
    exit();
}


$dbConnection = new mysqli("localhost", "root", "", "digitalh_bd_principal_2");
if ($dbConnection->connect_error) {
    die("Connection failed: " . $dbConnection->connect_error);
}

include_once "./controllers/ModuloCandidatos/AddController.php";
$controller = new AddController($dbConnection);
// $input = json_decode(file_get_contents("php://input"), true);
// $filters = $input['filters'] ?? [];
// $isFilter = $input['isFilter'] ?? false;



$title = "";
if (isset($_GET['id'])) {
    // Obtiene el valor del parámetro 'id' y lo guarda en una variable
    $id = $_GET['id'];

    $title = "Editar Registro";
    // Muestra el valor del 'id'
    // echo "El ID es: " . htmlspecialchars($id);
} else {
    $title = "Agregar Registro";
    $id = "";
    // echo "No se ha proporcionado un ID.";
}

$controller->addCandidatos($title, $id);
// include "./views/moduloCandidatos/user-info.php";
