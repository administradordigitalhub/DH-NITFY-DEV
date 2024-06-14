<?php
include_once '../../controllers/ModuloCandidatos/ContactController.php';
include_once '../../db/DatabaseConnection.php';

$dbInstance = DatabaseConnection::getInstance();
$dbConnection = $dbInstance->getConnection();

$contactController = new ContactController($dbConnection);

$input = json_decode(file_get_contents("php://input"), true);

if (isset($input['id'])) {
    $id_candidato_contact = $input['id'];
    $contactData = $contactController->showContact($id_candidato_contact);
    echo json_encode($contactData);
} else {
    echo json_encode(array('error' => 'No ID provided'));
}
