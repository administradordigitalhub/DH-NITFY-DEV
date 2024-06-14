<?php
include_once '../../controllers//ModuloCandidatos/SalaryController.php';
include_once '../../db/DatabaseConnection.php';

$dbInstance = DatabaseConnection::getInstance();
$dbConnection = $dbInstance->getConnection();

$salaryController = new SalaryController($dbConnection);

$input = json_decode(file_get_contents("php://input"), true);

if (isset($input['id'])) {
    $id_candidato_salary = $input['id'];
    $salaryData = $salaryController->showSalary($id_candidato_salary);
    echo json_encode($salaryData);
} else {
    echo json_encode(array('error' => 'No ID provided'));
}
