<?php
include_once '../../controllers//ModuloCandidatos/ProfileController.php';
include_once '../../db/DatabaseConnection.php';

$dbInstance = DatabaseConnection::getInstance();
$dbConnection = $dbInstance->getConnection();

$candidatoController = new ProfileController($dbConnection);

$input = json_decode(file_get_contents("php://input"), true);

if (isset($input['id'])) {
    $id_candidato_profile = $input['id'];
    $profileData = $candidatoController->showProfile($id_candidato_profile);
    echo json_encode($profileData);
} else {
    echo json_encode(array('error' => 'No ID provided'));
}
?>
