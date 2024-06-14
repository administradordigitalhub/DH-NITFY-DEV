<?php
$dbConnection = new mysqli("localhost", "root", "", "digitalh_bd_principal_2");
if ($dbConnection->connect_error) {
    die("Connection failed: " . $dbConnection->connect_error);
}

include_once "./controllers/ModuloCandidatos/CandidatosController.php";
$controller = new CandidatoController($dbConnection);
$input = json_decode(file_get_contents("php://input"), true);
$filters = $input['filters'] ?? [];
$isFilter = $input['isFilter'] ?? false;

$controller->showCandidato($isFilter, $filters);
